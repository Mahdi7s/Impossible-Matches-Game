var retval = 0;

for(var device=0; device < 5; device++){
    if(YoYo_MouseCheckButton(device, mb_left)){
        ++retval;
    }
}

return retval;

