#region Colisão
// Colisão horizontal
repeat(abs(hspd))
{
	if (place_meeting(x+sign(hspd),y,obj_wall))
	{
		hspd = 0;
		break;
	}
	else
	{
		x+=sign(hspd);
	}
}

// Colisão vestical
repeat(abs(vspd))
{
	if (place_meeting(x,y+sign(vspd),obj_wall))
	{
		vspd = 0;
		break;
	}
	else
	{
		y+=sign(vspd);
	}
}
#endregion