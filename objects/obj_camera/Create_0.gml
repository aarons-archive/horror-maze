surface_resize(application_surface, 1920, 1080)

camera = view_camera[0]
follow = obj_player

half_view_width = camera_get_view_width(camera) * 0.5
half_view_height = camera_get_view_height(camera) * 0.5

to_x = xstart
to_y = ystart
