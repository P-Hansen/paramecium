/// @description Insert description here

image_alpha -= 0.007;

if(image_alpha <= 0)
{
	instance_destroy(self);
}

