if (keyboard_check(ord("A")) && x > 0)
    x -= 5;

if (keyboard_check(ord("D")) && x < room_width - sprite_width)
    x += 5;
