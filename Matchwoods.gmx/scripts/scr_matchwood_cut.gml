var inst = argument0;
var cutY = argument1;

var newIns = instance_create(inst.x, inst.y, obj_matchwood_cutable);
newIns.bodyHeight -= cutY;
newIns.image_angle = inst.image_angle;

with(inst) {instance_destroy();}



