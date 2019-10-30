if !instance_exists(obj_trigger5)
{
repeat (10) instance_create_layer(x + random_range(-64, 64), y + random_range(-32, 32), "layer_player", obj_watcher_red);
instance_destroy();
}