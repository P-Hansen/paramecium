/// @description Insert description here
// You can write your code in this editor

growth = random_range(0.0005, 0.0015);
image_xscale = clamp(image_xscale + growth, 0, maxSize);
image_yscale = clamp(image_yscale + growth, 0, maxSize);