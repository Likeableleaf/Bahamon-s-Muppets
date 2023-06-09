/// @description Insert description here
// You can write your code in this editor
/*for (var i = 0; i < array_length(numbAI); ++i;)
{
    if(not instance_exists(numbAI[i].object_index)) {
		array_delete(numbAI,i,1)
	}
}*/

//check that menu is closed
if(!global.menuOpen){
	
	//win conditions
	if(instance_exists(obj_simpleStudent) and !instance_exists(obj_studentInDesk) and !instance_exists(obj_Player)){
		simpStudentCount = instance_number(obj_simpleStudent)
			if(simpStudentCount < 2 && simpStudentCount > 0){
				global.playerNumber[0] = instance_nearest(x,y,obj_simpleStudent).playerNum;
				instance_destroy(obj_teacher);
			}
		
	}
	if(instance_exists(obj_studentInDesk) and !instance_exists(obj_simpleStudent) and !instance_exists(obj_Player)){
		stnInDeskCount = instance_number(obj_studentInDesk)
			if(stnInDeskCount < 2 && stnInDeskCount > 0){
				global.playerNumber[0] = instance_nearest(x,y,obj_studentInDesk).playerNum;
				instance_destroy(obj_teacher);
			}
	}
	if(instance_exists(obj_Player) and !instance_exists(obj_studentInDesk) and !instance_exists(obj_simpleStudent)){
		playerObjCount = instance_number(obj_Player)
			if(playerObjCount < 2 && playerObjCount > 0){
				global.playerNumber[0] = instance_nearest(x,y,obj_Player).playerNum;
				instance_destroy(obj_teacher);
			}
	}//*/
	
	if (!greenlight) {	
		
		//rotate sprite
		phy_rotation = 0;
		
		//check if mousePlayer exists
		if (instance_exists(obj_studentInDesk)) {
			
			//check if mousePlayer is moving + not already in list
			if ((obj_studentInDesk.phy_speed != 0 || !obj_studentInDesk.inDesk) && (ds_list_find_index(target_list, obj_studentInDesk) == -1)) {
						
				//add mousePlayer to targetList
				ds_list_add(target_list, obj_studentInDesk.id);	
			}
		}
		
		//check if Players exist 
		if (instance_exists(obj_Player)) {
			
			//cycle through players
			for (i = 0; i < instance_number(obj_Player); i++) {
					
				//check if target is in list
				if ((instance_find(obj_Player, i).phy_speed != 0 || !(instance_find(obj_Player, i).inDesk)) && (ds_list_find_index(target_list, instance_find(obj_Player, i)) == -1)) {
						
					//add player to targetList
					ds_list_add(target_list, instance_find(obj_Player, i));
				}					
			}
		}
		
		//check if ai exist 
		if (instance_exists(obj_simpleStudent)) {
			
			//cycle through ai
			for (i = 0; i < instance_number(obj_simpleStudent); i++) {
					
				//check if target is in list
				if ((instance_find(obj_simpleStudent, i).phy_speed != 0 || !(instance_find(obj_simpleStudent, i).inDesk)) && (ds_list_find_index(target_list, instance_find(obj_simpleStudent, i)) == -1)) {
						
					//add player to targetList
					ds_list_add(target_list, instance_find(obj_simpleStudent, i));
				}					
			}
		}
		
		//check if can shoot
		if (canShoot && (ds_list_size(target_list) != 0) && (instance_exists(ds_list_find_value(target_list, 0)))) {
			
			//change sprite to throw
			image_index = 1;
			
			// Create throwables
			instance_create_layer(x, y, "Instances", obj_throwable);
			instance_nearest(x, y, obj_throwable).target = ds_list_find_value(target_list, 0);
			
			
			// Set direction of throwables
			//instance_nearest(x, y, obj_throwable).direction = point_direction(x, y, ds_list_find_value(target_list, 0).x, ds_list_find_value(target_list, 0).y);
			instance_nearest(x, y, obj_throwable).direction = point_direction(x, y, ds_list_find_value(target_list, 0).x, ds_list_find_value(target_list, 0).y);
			with (instance_nearest(x, y, obj_throwable)) {
				physics_apply_impulse(x, y, lengthdir_x(750, direction), lengthdir_y(750, direction));
			}
			
			canShoot = false;
			
			//move to next in list 
			ds_list_delete(target_list, 0);
		} else {
			
			///change sprite to standing still
			image_index = 0;
		}
	}
}

//if(greenlight == false) {
	
	/*for(i=0; i<array_length(numbAI); ++i;) {
		val = numbAI[i]
		ai = val.object_index
		if(ai.inDesk == false) {
			instance_destroy(ai)
		}
	}*/
/*	
if (canShoot == true) {
// Check to see if greenlight is false
	if (greenlight == false) {
		// facing class
		image_angle = 0;
		// Check if AI is moving
		if(instance_exists(obj_simpleStudent)){
			// Check if simple AI is moving
			if (obj_simpleStudent.speed != 0) {
				
				/*if(obj_simpleStudent.inDesk == false) {
					for (var i = 0; i < array_length(numbAI); ++i;) {
						ai = numbAI[i].object_index
						if(ai.inDesk == false) {
							instance_destroy(ai)
						}
					}
				}
				if(instance_exists(obj_simpleStudent)){
					/*/// Create throwables
		/*			instance_create_layer(x, y, "Instances", obj_throwable)
					obj_throwable.target = instance_nearest(x, y, obj_simpleStudent).id
					// Set direction of throwables
					obj_throwable.direction = point_direction(x, y, obj_simpleStudent.x, obj_simpleStudent.y)
					canShoot = false
				}
			} 
		}
		// Check if player in desk exists
		if(instance_exists(obj_studentInDesk)){
			// Check if player is moving
			if (obj_studentInDesk.speed != 0) {
				if(obj_studentInDesk.inDesk == false) {
					instance_destroy(obj_studentInDesk)
				}
				if(instance_exists(obj_studentInDesk)) {
					// Create throwables
					instance_create_layer(x, y, "Instances", obj_throwable)
					obj_throwable.target = instance_nearest(x, y, obj_studentInDesk).id
					// Set direction of throwables
					obj_throwable.direction = point_direction(x, y, obj_studentInDesk.x, obj_studentInDesk.y)
					canShoot = false
				}
			} 
		}
		// Check if studentCrawling exists
		if(instance_exists(obj_Player)){
			// Check if anyone is crawling
			if (obj_Player.speed != 0) {
				if(obj_Player.inDesk == false) {
					instance_destroy(obj_Player)
				}
				if(instance_exists(obj_Player)){
					// Create throwables
					instance_create_layer(x, y, "Instances", obj_throwable)
					obj_throwable.target = instance_nearest(x, y, obj_Player).id
					// Set direction of throwables
					obj_throwable.direction = point_direction(x, y, obj_Player.x, obj_Player.y)
					canShoot = false
				}
			} 
		}
		
	}//can shoot
}//if its redlight//*/

//re-adjust image if greenlight
if (greenlight) { 
		
	//initialize + reset target list
	ds_list_clear(target_list);
	
	//rotate sprite
	phy_rotation=180;
}





