//path_start(path0, 5, path_action_restart, false)
//speed = 1
alarm_set(11, 900)
highscore_clear()
i = 0
while i < 10
    {
    highscore_add(string(i), random_range(1, 100))
    i = i + 1
    }
var1 = "KEK"

enum rainbowcolors
    {
   orange = 3,
   blue = 5,
   red = 6
   }

list = ds_list_create()
ds_list_add(list, 5, 6, 9, 8, 7, 3, 1)

grid = ds_grid_create(6, 6)
ds_grid_set(grid, 4, 4, 5)
ds_grid_set(grid, 1, 1, 2)
ds_grid_set(grid, 0, 0, 3)

map = ds_map_create()
ds_map_add(map, "shit", 5)
ds_map_add(map, "derp", 1)
ds_map_add(map, "kek", 0)
ds_map_add(map, "wut", 9)

priority = ds_priority_create()
ds_priority_add(priority, 50, 2)
ds_priority_add(priority, 44, 8)
ds_priority_add(priority, 75, 7)
ds_priority_add(priority, 123, 6)
priority2 = ds_priority_create()

queue = ds_queue_create()
ds_queue_enqueue(queue, 50, 80, 22, 95, 47, 23, 12)

stack = ds_stack_create()
ds_stack_push(stack, 50, 80, 40, 66, 20, 80, 40)

