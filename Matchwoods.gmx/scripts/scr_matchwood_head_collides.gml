var matchwood = argument0;
var headWidth = argument1;
var headHeight = argument2;
var objColliderBase = argument3;

var headPos = scr_rotate_point(matchwood.x, matchwood.y, matchwood.x, matchwood.y - matchwood.sprite_yoffset + headHeight/2, matchwood.image_angle);
var headRadius = max(headWidth, headHeight);

if(matchwood.phy_collision_points > 0){
    for(var i=0;i < matchwood.phy_collision_points;i++){
        if(point_distance(matchwood.phy_collision_x[i], matchwood.phy_collision_y[i], headPos[0], headPos[1]) <= headRadius)
        {
            return true;
        }
        //show_debug_message("#"+string(i) + " => x: " + string(matchwood.phy_collision_x[i]) + ", y: " + string(matchwood.phy_collision_y[i]));
    }
}else{
    if(collision_circle(headPos[0], headPos[1], headRadius, objColliderBase, false, false)){
        return true;
    }
}
return false;
