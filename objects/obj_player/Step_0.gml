
#region verificacao de direcao para angulo de imagem
if (hspeed < 0)
{
	image_angle = 90;
}
else if (hspeed > 0)
{
	image_angle = 270;
}

if (vspeed < 0)
{
	image_angle = 0;
	if (hspeed < 0)
	{
		image_angle = 45;
	}
	if (hspeed > 0)
	{
		image_angle = 315;
	}
}
else if (vspeed > 0)
{
	image_angle = 180;
	if (hspeed < 0)
	{
		image_angle = 135;
		
	}
	if (hspeed > 0)
	{
		image_angle = 215;
	}
}

#endregion


if ((vspeed > 0 or vspeed) and (hspeed > 0 or hspeed < 0))
{
	show_debug_message("ativo")
	speed /= 2;
	show_debug_message("Hspeed = " + string(hspeed)+ ", Vspeed = " + string(vspeed))
}