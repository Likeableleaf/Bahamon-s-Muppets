/// @description Insert description here
// You can write your code in this editor

// get the number of devices connected, also contains the number of slots 
controllerList = gamepad_get_device_count();
// loop through to see how many devices are connected
for (var i = 0; i < controllerList; i++;)
{
	// Set index to true if connected else false
    if gamepad_is_connected(i) global.controllers[i] = true else global.controllers[i] = false;
}