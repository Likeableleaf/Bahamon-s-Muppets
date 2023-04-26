/// @description Insert description here
// You can write your code in this editor

// ALL CODE BELOW IS FOR CLAMPING BORDERS
x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2+65, room_height-sprite_height)

if (speed > 0) then speed -= 1/room_speed;
var knockback_strength = 10;
var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
if (place_meeting(x+hsp,y,obj_emptyDesk))
{
    //move as close as we can
    while (!place_meeting(x+onepixel,y,obj_emptyDesk))
    {
        x = x + onepixel;
    }
    hsp = 0;
	// calculate knockback direction and apply to this desk and the other desk
	var other_desk = instance_place(x+hsp, y, obj_emptyDesk);
    var dir = point_direction(other_desk.x, other_desk.y, x, y);
    motion_add(dir, knockback_strength);
    other_desk.motion_add(dir + 180, knockback_strength);
}
x = x + hsp;

var onepixel = sign(vsp) //up = -1, down = 1.
if (place_meeting(x,y+vsp,obj_emptyDesk))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,obj_emptyDesk))
    {
        y = y + onepixel;
    }
    vsp = 0;
	// calculate knockback direction and apply to this desk and the other desk
    var other_desk = instance_place(x, y+vsp, obj_emptyDesk);
    var dir = point_direction(other_desk.x, other_desk.y, x, y);
    motion_add(dir, knockback_strength);
    other_desk.motion_add(dir + 180, knockback_strength);
	
}
y = y + vsp;
