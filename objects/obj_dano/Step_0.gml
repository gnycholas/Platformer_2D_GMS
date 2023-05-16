/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var outro = instance_place(x, y, obj_entidade);

//Se eu estou tocando em alguém
if(outro){
	if(outro.id != pai){
		outro.estado = "hit"
		outro.vida_atual -= dano;
		instance_destroy();
	}
}