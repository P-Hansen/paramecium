/// @description Insert description here
// You can write your code in this editor

leaf1 = instance_create_layer(x,y,layer,leaf);
leaf1.direction = direction - random_range(0,45);

leaf3 = instance_create_layer(x,y,layer,stemRight);
leaf3.direction = direction;

leaf5 = instance_create_layer(x,y,layer,leaf);
leaf5.direction = direction + random_range(0,45);