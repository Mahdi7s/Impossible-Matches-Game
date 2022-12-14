var angle = argument0;

angle = (360 + (angle mod 360)) mod 360;

return angle;
