// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
var _room = argument[0];
var _dur = argument[1];
var _color =argument[2];

var _inst = instance_create_layer(x,y,"Instances pop_up", obj_fade);


with ( _inst) {

targetRoom = _room;
duration = _dur;
color = _color;

}