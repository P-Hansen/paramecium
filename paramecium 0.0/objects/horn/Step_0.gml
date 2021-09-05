/// @description Insert description here
// You can write your code in this editor

image_angle = direction;

image_xscale = clamp(image_xscale + 0.001, 0.1, maxSize);
image_yscale = clamp(image_yscale + 0.001, 0.1, maxSize);