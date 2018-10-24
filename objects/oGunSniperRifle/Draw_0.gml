draw_self();

draw_set_color(make_color_rgb(200, 20, 20));
draw_set_alpha(0.4);
draw_line(x + (15 * image_xscale), y - 1, x + (400 * image_xscale), y - 1);
draw_set_alpha(1);