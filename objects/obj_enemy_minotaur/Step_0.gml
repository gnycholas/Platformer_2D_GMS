var chao = place_meeting(x, y + 1, obj_block);

if (!chao){
		vely += GRAVIDADE * massa;
}

switch(estado){
    case "parado": {
		//if(sprite_index != spr_enemy_idle){
		//	image_index = 0;
		//}
        sprite_index = spr_enemy_idle;

        // Condição de troca de estado
	if(position_meeting(mouse_x, mouse_y, self)){
		if(mouse_check_button_pressed(mb_right)){
			estado = "hit";
		}
	}
		break;
	}
	case "hit":{
		if(sprite_index != spr_enemy_hit){
			image_index =0;
			vida_atual--;
		}
		sprite_index = spr_enemy_hit;
		
		if(image_index > image_number-1){
			if(vida_atual > 0){			
			estado = "parado";
			}
			else if(vida_atual <= 0){
				estado = "dead";
			}
		}
		break;
	}
	case "dead":{
		if(sprite_index != spr_enemy_death){
			image_index = 0;
		}
		sprite_index = spr_enemy_death;
		
		//Morrendo
		if(image_index > image_number-1){
			instance_destroy();
		}
	}
}