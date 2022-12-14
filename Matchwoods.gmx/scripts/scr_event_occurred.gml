var kind = argument0;
var posX = argument1;
var posY = argument2;

var plusScore = 0;
var snd = noone;

switch(kind) {
    case "exp_bomb":
        plusScore = 10000;
        
    break;
    case "exp_cannon":
        plusScore = 50000;
        snd = snd_cannon;        
    break;
    case "exp_flag":
        plusScore = 100000;
        snd = snd_flag;
    break;
    
    case "fire_fitile":
        plusScore = 1000;        
    break;
    case "fire_matchwood":
        plusScore = 3000;
        snd = snd_matchwood_fire; 
    break;
    case "fire_lighter":
        plusScore = 2000;
    break;
    
    case "cut_matchwood":
        plusScore = 1000;
        snd = snd_matchwood_cut;
    break;
    case "cut_rope":
        plusScore = 1000;
    break;
    
    case "lighter_open":
        snd = snd_lighter_open;
    break;
    case "lighter_close":
        snd = snd_lighter_close;
    break;
    
    case "arrow_stretch":
        snd = snd_arrow;
    break;
    
    case "water_drop_destroy":
        //snd = snd_water_drop;
    break;
    
    case "star":
        snd = snd_star;
    break;
    
    case "spray":
        snd = snd_spray;
    break;
    
    case "matchwood_coll":
        snd = snd_matchwood_coll;
    break;
}

score += plusScore;
if(snd != noone){
    audio_play_sound(snd, 0, false);
}
