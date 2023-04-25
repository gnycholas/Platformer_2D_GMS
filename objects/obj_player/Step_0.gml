//Iniciando Variaveis
var right, left, jump, attack;
var chao = place_meeting(x, y + 1, obj_block);

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = (keyboard_check(vk_space));
attack = keyboard_check(ord("J"));

//Codigo de Movimentação
velx = (right - left) * max_velx;


//Aplicando Gravidade
if (!chao){
	if (vely < max_vely * 2){
		vely += GRAVIDADE * massa;
	}
}
//Iniciando a maquina de estados
switch(estado){
	case "parado" :{
		//Comportamento do estado
		sprite_index = spr_player_idle;
		
		//Condição de troca de estado
		//Movendo
		if (right || left){
			estado = "movendo";	
		}
			else if (jump || vely != 0 ){			
				estado = "pulando";
				vely = (-max_vely * jump); 
			}
				else if(attack){
					estado = "ataque";
					velx = 0;
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
		else if (jump){			
				estado = "pulando";
				vely = -max_vely; 
			}
				else if (attack){
					estado = "ataque";
					velx = 0;
				}			
	break;
	}
	case "pulando":{
		// Caindo
		if(vely > 0 ){
			sprite_index = spr_player_fall
		}
		else{
			sprite_index = spr_player_jump
		}
		if (chao){
			estado = "parado";
		}
		break;
	}	
	case "ataque" :{
		velx = 0;
		sprite_index = spr_player_atk1;
		
		if(image_index > image_number-1){
			estado = "parado";
		}
	}
}