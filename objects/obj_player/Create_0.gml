#region Values
NORMAL_SPEED = 2
RUN_SPEED = 4
MAX_SPEED = 6

STAMINA_TIMER = 20
MARKER_COUNT = 20

// application_surface is upscaled by a factor of 3, so these values need to be as well.
var camera = view_camera[0]
VIEW_WIDTH = camera_get_view_width(camera) * 3 
VIEW_HEIGHT = camera_get_view_height(camera) * 3
#endregion


#region Variables
x_movement = 0
y_movement = 0

_speed = NORMAL_SPEED
is_running = false

stamina_timer = STAMINA_TIMER
marker_count = MARKER_COUNT
#endregion


alarm[0] = room_speed


#region Lighting
global.ambientShadowIntensity = 1

flash_light = light_create_spot(x, y, 64000, $FFFFFFFF, 1000, 1.4, 30, 0)
light_add_to_world(flash_light)

point_light = light_create_point(x, y, 64000, $FFFFFFFF, 100, 1.4)
light_add_to_world(point_light)

#endregion

