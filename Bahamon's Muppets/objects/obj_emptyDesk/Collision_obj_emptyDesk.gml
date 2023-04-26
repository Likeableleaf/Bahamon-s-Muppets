/// @description Insert description here
// You can write your code in this editor

//instance_nearest(x,y,obj_emptyDesk).direction = point_direction(x, y, instance_nearest(x,y,obj_emptyDesk).x, instance_nearest(x,y,obj_emptyDesk).y)
//instance_nearest(x,y,obj_emptyDesk).speed = 2;
//var calcOther = instance_nearest(x,y,obj_emptyDesk);


//an attempt to make the collision cause a calculation of the speed and make both empty desks move in opposite directions

//var calcId =instance_nearest(x,y,obj_emptyDesk).id
/*
var calcOther = instance_nearest(x,y,obj_emptyDesk);
if(calcOther.id != id)
{
	
	 speed = sqrt(calcOther.hspeed^2 + calcOther.vspeed^2); // calculate the speed of the other desk
    var dir = point_direction(calcOther.x, calcOther.y, x, y); // calculate the direction from the other desk to this desk

    // calculate the knockback force
    var knockback = speed * 0.5; // adjust this value to control the strength of the knockback

	var distance = point_distance(calcOther.x, calcOther.y, x, y);
    
    // Calculate the amount of overlap between the two desks
    var overlap = (sprite_width + calcOther.sprite_width) / 2 - distance;
    

		if(overlap>0){
		    
			// Apply the knockback force in the opposite direction of the collision
			calcOther.x += lengthdir_x(knockback, dir + 180);
		 calcOther.y += lengthdir_y(knockback, dir + 180);
        
        // Move the other desk away in the direction of the collision
		x += lengthdir_x(overlap, dir);
        y += lengthdir_y(overlap, dir);
	
		}
}*/
audio_play_sound(Desk_crashing2, 10, false)
