var startPosX = argument0;
var startPosY = argument1;
var minDropsCount = argument2-1;
var startAngle = argument3;
var endAngle = argument4;
var minRadius = argument5;

var dropHegiht = sprite_get_height(spr_water_drop);

var radius = minRadius;
var rowDropsCount = minDropsCount;
var angPlus = (endAngle-startAngle)/rowDropsCount;

var lpower = choose(0.6, 0.7, 0.8, 0.9);
for (var ang = startAngle; ang <= endAngle; ang+=angPlus) {
    var dropX = startPosX + lengthdir_x(radius, ang);
    var dropY = startPosY + lengthdir_y(radius, ang);
    
    var drop = instance_create(dropX, dropY, obj_water_drop);
    drop.launchDir = ang;
    drop.launchPower = lpower;
}
