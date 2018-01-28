spreadDelay = 2
spreadDelayRandom = 3
scoring = 100

x = round(x / global.tilingX) * global.tilingX
y = round(y / global.tilingY) * global.tilingY

emit = part_emitter_create(global.System)
part_emitter_region(global.System, emit, bbox_left, bbox_right, bbox_top, bbox_bottom, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_stream(global.System, emit, global.PartFire, 5);

alarm_set(0, (spreadDelay + random_range(0, spreadDelayRandom)) * room_speed)