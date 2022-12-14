/*
**  Usage:
**      t = lines_intersect(x1,y1,x2,y2,x3,y3,x4,y4,segment)
**
**  Arguments:
**      x1,y1,x2,y2     Coordinates defining first line segment
**      x3,y3,x4,y4     Coordinates defining second line segment
**      segment         If TRUE, intersection test is confined to the given line segments
**                      If FALSE, intersection may occur at any point on the given lines
**
**  Returns:
**      The vector multiplier (t) from the parametric form of the first line.
**      A value of 0 < t <= 1 indicates an intersection within the first line segment.
**      A value of 0 indicates no intersection, other values indicate a possible
**      intersection beyond the endpoints of the first line segment.
**
**  Notes:
**      By substituting the return value (t) into the parametric form of the first line,
**      you can determine the point of intersection, eg. x = x1+t*(x2-x1)
**
**  GMLscripts.com
*/
{
    var x1,y1,x2,y2,x3,y3,x4,y4,segment,ud,ua,ub;
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    x3 = argument4;
    y3 = argument5;
    x4 = argument6;
    y4 = argument7;
    segment = argument8;
    ua = 0;
    ud = (y4 - y3) * (x2 - x1) - (x4 - x3) * (y2 - y1);
    if (ud != 0) {
        ua = ((x4 - x3) * (y1 - y3) - (y4 - y3) * (x1 - x3)) / ud;
        if (segment) {
            ub = ((x2 - x1) * (y1 - y3) - (y2 - y1) * (x1 - x3)) / ud;
            if (ua < 0 || ua > 1 || ub < 0 || ub > 1) ua = 0;
        }
    }
    //return ua;
    
    if(ua > 0 && ua <= 1) {
        retval[0] = x1 + ua*(x2-x1);
        retval[1] = y1 + ua*(y2-y1);
        
        return retval;
    }
    return ua;
}
