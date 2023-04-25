/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
 

// sistema de colisão e movimentação
var _velx = sign(velx);
var _vely = sign(vely);

//Horizontal
repeat(abs(velx)){
	if (place_meeting(x + _velx, y, obj_block))
	{
		velx = 0;
		break;
	}
	x += _velx;
}

//Vertical
repeat(abs(vely)){
	if (place_meeting(x, y + _vely, obj_block))
	{
		vely = 0;
		break;
	}
	y += _vely;
}