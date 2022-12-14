var centerX = argument0;
var centerY = argument1;
var pointX = argument2;
var pointY = argument3;
var angle = scr_correct_angle(argument4 + point_direction(centerX, centerY, pointX, pointY));

var x1 = pointX-centerX;
var y1 = pointY-centerY;

/*
var x2 = x1*cos(angle)+y1*sin(angle);
var y2 = -x1*sin(angle) + y1*cos(angle);
*/
var dist = point_distance(centerX, centerY, pointX, pointY);
var x2 = lengthdir_x(dist, angle);
var y2 = lengthdir_y(dist, angle);

retval[0] = x2 + centerX;
retval[1] = y2 + centerY;

return retval;
