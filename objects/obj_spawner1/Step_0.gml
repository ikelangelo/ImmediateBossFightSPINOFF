if !instance_exists(obj_trigger1)
{
repeat (20) instance_create_layer(x + random_range(-64, 64), y + random_range(-64, 64), "layer_player", obj_watcher_purple);
instance_destroy();
}