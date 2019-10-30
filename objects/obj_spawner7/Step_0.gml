if !instance_exists(obj_trigger7)
{
repeat (30) instance_create_layer(x + random_range(-200, 200), y + random_range(-64, 64), "layer_player", obj_watcher_purple);
instance_destroy();
}