/// @description Insert description here
// You can write your code in this editor
if(instance_exists(owner)){
if(owner != noone){

tempHits = owner.object_index.hitsMade;
tempBailSaves = owner.object_index.bailSavesMade;
tempKicks = owner.object_index.kicksMade;
tempPlayerNum = owner.object_index.playerNum;

if(tempHits > global.hits){
global.hits = tempHits;
global.playerNumber[1] = tempPlayerNum;
}


if(tempBailSaves > global.bailSaves){
global.bailSaves = tempBailSaves;
global.playerNumber[2] = tempPlayerNum;
}

if(tempKicks > global.kicks){
global.kicks = tempKicks;
global.playerNumber[3] = tempPlayerNum;
}
show_debug_message("the following are the top values for hits, bailSaves, and Kicks: {0}, {1}, {2}", global.hits, global.bailSaves, global.kicks);
owner = noone;
}
}


