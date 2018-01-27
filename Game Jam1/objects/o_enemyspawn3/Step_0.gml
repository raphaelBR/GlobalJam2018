image_xscale += 0.02;
image_yscale += 0.02;

if(image_xscale >= 1)
{
	image_xscale = 1;
	image_yscale = 1;
	instance_change(o_enemy3, true);
}