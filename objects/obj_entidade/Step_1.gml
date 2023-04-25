/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Olhando para o lado certo
if (velx != 0) xscale = sign(velx);
image_xscale = xscale;

// Exibindo meu estado quando o usuário mandar
if (position_meeting(mouse_x, mouse_y, id)){
	
	if (mouse_check_button_released(mb_left))
	mostra_estado = !mostra_estado;
}