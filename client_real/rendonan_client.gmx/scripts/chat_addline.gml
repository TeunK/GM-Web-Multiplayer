var i;

if global.chatlines < global.chatmaxlines {
    global.chatline[global.chatlines] = argument0;
    global.chatlines += 1;
} else {
    for(i = 0; i < global.chatmaxlines - 1; i += 1) {
        global.chatline[i] = global.chatline[i + 1];
    }
    global.chatline[global.chatmaxlines - 1] = argument0;
}

