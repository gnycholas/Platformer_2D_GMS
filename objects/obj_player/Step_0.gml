/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Iniciando Variaveis
var right, left, jump, attack;
var chao = place_meeting(x, y + 1, obj_block);


right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = (keyboard_check(vk_space));

//Codigo de Movimentação
velx = (right - left) * max_velx;


//Aplicando Gravidade
if (!chao){
	
	if (vely < max_vely * 2){
		vely += GRAVIDADE * massa;
	}
}
else{
	if (jump)
	{
		vely = -max_vely; 
	}
}

//Iniciando a maquina de estados
switch(estado){
	case "parado":{
		//Comportamento do estado
		sprite_index = spr_player_idle;
		
		//Condição de troca de estado
		//Movendo
		if (right || left){
			estado = "movendo";	
		}
		
		break;
	}
	case "movendo":{
		//Comportamento do estado de movimento
		sprite_index = spr_player_run;
		
		//Condição de troca de estado
		//Parado
		if (abs(velx) < .1){
			estado = "parado";
			velx = 0;
		}
		
	break;
	}
} 