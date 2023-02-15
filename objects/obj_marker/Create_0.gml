image_angle = random_range(0, 360)

player = noone
draw_tip = false

scale = 1

point_light = light_create_point(x, y, 64000, $FFFF00FF, 150, 1.5)
light_add_to_world(point_light)
