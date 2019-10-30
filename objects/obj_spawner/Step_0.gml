if !instance_exists(obj_trigger)
{
repeat (6) instance_create_layer(x + random_range(-64, 64), y + random_range(-64, 64), "layer_player", obj_watcher_red);
instance_destroy();
}