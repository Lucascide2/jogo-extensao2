if (timer > 0) {
    timer -= 1;
} else {
    show_message("Game Over!"); 
    room_restart();
}
