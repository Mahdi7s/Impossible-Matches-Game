var ang = scr_correct_angle(argument0);
var from = scr_correct_angle(argument1);
var to = scr_correct_angle(argument2);

if(from < to) 
    return (ang >= from && ang <= to);
return (ang >= from || ang <= to);
