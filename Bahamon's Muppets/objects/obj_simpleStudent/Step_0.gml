/// @description Insert description here
for (var i = 0; i < instance_number(obj_simpleStudent); ++i;)
	{
    ais[i] = instance_find(obj_simpleStudent,i);
	}
maxVal = array_length(ais)
//randomai = random_range(0, maxVal)
//chosenaiID = ais[randomai]
if(global.menuOpen == false) {
// Check if 'A' button pressed

if (inDesk) {
	if ((instance_exists(obj_studentInDesk) || instance_exists(obj_Player) || instance_exists(obj_simpleStudent))) {
		
		//check if safe
		if(obj_teacher.greenlight == true) {
			
			//init variables
			var closest  = 100000000000;
			var target = noone;
			var closer = 100000000;
			var closePlayer = noone;
			var closeAI = noone;
			
			//check if mouse player exists and compare closest
			if (instance_exists(obj_studentInDesk)) {
				
				//check if instance is inDesk
				if (instance_nearest(x,y,obj_studentInDesk).inDesk) {
					//compare closest with object's distance and set to the closer of the 2
					closest = min(closest, distance_to_object(instance_nearest(x,y,obj_studentInDesk)));
				}
			}
			
			
		//targeting decision
			//check if controller player exists and compare closest
			if (instance_exists(obj_Player)) {
				
				//reset closer
				closer  = 100000000;
				
				//ensure will find other player inDesk;				
				plyrs[instance_number(obj_Player)] = noone;
				for (i = 0; i < instance_number(obj_Player)-1; i++) {
					
					//store player
					plyrs[i] = instance_find(obj_Player, i);
					
					//check if inDesk
					if (plyrs[i].inDesk) {
						if (distance_to_object(plyrs[i]) != 0 && closer > distance_to_object(plyrs[i])) {
							closer = min(closer, distance_to_object(plyrs[i]));
							closePlayer = plyrs[i];
						}					
					}
				}
				
				//check if value was calculated
				if (closer != 100000000) {
					//compare closest with object's distance and set to the closer of the 2
					closest = min(closest, closer*2);
				}
			}
			
			//check if ai exists and compare closest
			if (instance_exists(obj_simpleStudent)) {
				
				//reset closer
				closer  = 100000000;
				
				//ensure will find other ai inDesk;				
				ai[instance_number(obj_simpleStudent)] = noone;
				for (i = 0; i < instance_number(obj_simpleStudent)-1; i++) {
					
					//store ai
					ai[i] = instance_find(obj_simpleStudent, i);
					
					//check if inDesk
					if (ai[i].inDesk) {
						if (distance_to_object(ai[i]) != 0 && closer > distance_to_object(ai[i])) {
							closer = min(closer, distance_to_object(ai[i]));
							closeAI = ai[i];
						}					
					}
				}
				
				//check if value was calculated
				if (closer != 100000000) {
					//compare closest with object's distance and set to the closer of the 2
					closest = min(closest, closer*2);
				}
			}
			
			/*//find closest entity
			closest = min(distance_to_object(instance_nearest(x,y,obj_studentInDesk)), 
						  distance_to_object(instance_nearest(x,y,obj_Player)), 
						  distance_to_object(instance_nearest(x,y,obj_simpleStudent))*2)//*/
			
			//set target to closest entity
			if (distance_to_object(closeAI)*2 == closest){
				target = closeAI;
			} else if (distance_to_object(instance_nearest(x,y,obj_studentInDesk)) == closest) {
				target = instance_nearest(x,y,obj_studentInDesk);
			} else if (distance_to_object(closePlayer) == closest) {
				target = closePlayer;
			} else if (closest == 100000000000) {
				target = noone;
			}
			
		//actions
			//if there is a closest entity
			if (target != noone) {
				// Generate direction towards other students
				var px, py
				px = target.x;
				py = target.y;
		
				// checks if player is in range
				//distanceToObject = distance_to_object(instance_nearest(x,y,target))
				distanceToObject = point_distance(x,y,px,py)
				//if (distanceToObject <= 999999.999989999986) {
				if (distanceToObject <= 120) {
					//points to kick player
					dire = point_direction(x, y, px, py) + 180;	
					phy_rotation = point_direction(x, y, px, py) + -90;
		
					//generate kick
					if (canKick) {
						instance_create_layer(x-lengthdir_x(32,dire),y-lengthdir_y(32,dire),"Instances",obj_kick);
						obj_kick.owner = id
						obj_kick.phy_rotation = phy_rotation
						
						// Set speed
						//speed = 4
						physics_apply_impulse(x, y, lengthdir_x(500, dire), lengthdir_y(500, dire));
										
						// Set canKick to false
						canKick = false
		
						// Reset canKick timer
						alarm[1] = 60
					}
				
				} else {
			
					//point to move
					phy_rotation = -(point_direction(x, y, px, py) + -270);
					dire = point_direction(x, y, px, py) //+ irandom_range(-20,20)
			
					if (canKick) {
						// Set direction to the generated direction
						instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
						instance_nearest(x, y, obj_kick).owner = id
						instance_nearest(x, y, obj_kick).image_angle = phy_rotation //*/
						// Set speed
						//speed = 4
						physics_apply_impulse(x, y, lengthdir_x(500, dire), lengthdir_y(500, dire));
						
						// Set canKick to false
						canKick = false
		
						// Reset canKick timer
						alarm[1] = 60
					}
				}
			}
		} 
	}
} else if(inDesk == false && !freeze) {
		
	//instance_nearest(x,y,obj_simpleStudent).imageColor = imageColor    what is this line doing?
		
	//kill the ai simple student if teacher is in redlight and ai is out of desk
	if(obj_teacher.greenlight == false){
		instance_destroy(instance_nearest(x,y,obj_simpleStudent));
	}
	
	//find closest emptyDesk
	var dx, dy
	dx = instance_nearest(x,y,obj_emptyDesk).x;
	dy = instance_nearest(x,y,obj_emptyDesk).y;
	
	//point to emptyDesk
	dire = point_direction(x, y, dx, dy)
		
	// Set the rotation of ai match direction
	phy_rotation = -(point_direction(x, y, dx, dy) + -90)
	
	// Set speed
	//speed = 1
	physics_apply_impulse(x, y, lengthdir_x(500, dire), lengthdir_y(500, dire));
	//instance_create_layer(x+lengthdir_x(32,direction),y+lengthdir_y(32,direction),"Instances",obj_kick);
	//obj_kick.owner = id
	//obj_kick.image_angle = image_angle
}

/* else if (canKick == true && (instance_exists(obj_studentInDesk)) and instance_exists(obj_Player) and (point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y) > point_direction(x, y, obj_Player.x, obj_Player.y))) {
	// Set sprite to kick
	//image_index = 1
	if(obj_teacher.greenlight == true) {
		// Generate direction towards other students
		var px, py
		px = instance_nearest(x,y,obj_Player).x;
		py = instance_nearest(x,y,obj_Player).y;
		// checks if player is in range
		if (distance_to_object(instance_nearest(x,y,obj_Player)) <= 5) {
			//points to kick player
			direction = point_direction(x, y, px, py) + 180	
			image_angle = point_direction(x, y, px, py) + -90;
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			obj_kick.owner = id
			obj_kick.image_angle = image_angle
		} else {
			image_angle = point_direction(x, y, px, py) + -270;
			direction = point_direction(x, y, px, py) //+ irandom_range(-20,20)
			// Set direction to the generated direction
			instance_create_layer(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),"Instances",obj_kick);
			instance_nearest(x, y, obj_kick).owner = id
			instance_nearest(x, y, obj_kick).image_angle = image_angle //*/
//*/		}
//*/		// Set speed
//*/		speed = 4
		// Set canKick to false
//*/		canKick = false
		// Reset alarm
//*/		alarm[1] = 60
//*/	}
//*/} //*/ 	
}
/*if(speed != 0) {
	// Slow down student
	speed -= 0.2
}
1*/
//swap between in desk and crawling
if inDesk {
	sprite_index = spr_studentInDeskV1;
} else if (!inDesk && buffer_time == 0)  {
	buffer_time = 1;
	sprite_index = spr_studentCrawl;
} else {
	sprite_index = spr_studentCrawl;
}

//decrement the buffer over time
if (buffer_time > 0) then buffer_time -= 1/room_speed;

//\/\/\/\/\/\/\/ Was causing the directional error \/\/\/\/\/\/\/\/\/\/

// Check if in range 
//if (point_distance(x, y, other.x, other.y) < 50) {
//	direction = point_direction(x,y,other.x, other.y)
//}


// /\/\/\/\/\/\/\

// ALL CODE BELOW IS FOR CLAMPING BORDERS
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2+80, room_height-sprite_height)

/*
//BELOW ARE PHYSICS FOR PASSIVE COLLISIONS BETWEEN OTHER SIMPLE STUDENTS********************

var knockback_strength = 10;
var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
if (place_meeting(x+hsp,y,instance_nearest(x,y,obj_simpleStudent)))
{
    //move as close as we can
    while (!place_meeting(x+onepixel,y,instance_nearest(x,y,obj_simpleStudent)))
    {
        x = x + onepixel;
    }
   // hsp = 0;
	// calculate knockback direction and apply to this desk and the other desk
	var other_desk = instance_place(x+hsp, y, instance_nearest(x,y,obj_simpleStudent));
    var dir = point_direction(other_desk.x, other_desk.y, x, y);
    motion_add(dir, knockback_strength);
    other_desk.motion_add(dir + 180, knockback_strength);
}
x = x + hsp;

var onepixel = sign(vsp) //up = -1, down = 1.
if (place_meeting(x,y+vsp,instance_nearest(x,y,obj_simpleStudent)))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,instance_nearest(x,y,obj_simpleStudent)))
    {
        y = y + onepixel;
    }
  //  vsp = 0;
	// calculate knockback direction and apply to this desk and the other desk
    var other_desk = instance_place(x, y+vsp, instance_nearest(x,y,obj_simpleStudent));
    var dir = point_direction(other_desk.x, other_desk.y, x, y);
    motion_add(dir, knockback_strength);
    other_desk.motion_add(dir + 180, knockback_strength);
	
}
y = y + vsp;


if (buffer_time == 0) {
	freeze = false;
}
*/

