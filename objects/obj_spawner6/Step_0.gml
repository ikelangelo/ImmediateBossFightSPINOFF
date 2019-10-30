if !instance_exists(obj_trigger6)
{
repeat (12) instance_create_layer(x + random_range(-100, 100), y + random_range(-100, 100), "layer_player", obj_watcher_red);
instance_destroy();
}