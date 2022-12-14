var inst = argument0;
var fix = argument1;
var rectX1 = argument2;
var rectY1 = argument3;
var rectX2 = argument4;
var rectY2 = argument5;
var cutY = argument6;
var angle = argument7;

fix = physics_fixture_create();
physics_fixture_set_polygon_shape(fix);
physics_fixture_add_point(fix, rectX1, rectY1);
physics_fixture_add_point(fix, rectX2, rectY1);
physics_fixture_add_point(fix, rectX2, rectY2);
physics_fixture_add_point(fix, rectX1, rectY2);
physics_fixture_bind(fix, inst);
physics_fixture_delete(fix);


