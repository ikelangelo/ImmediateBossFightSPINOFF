if !instance_exists(obj_trigger8)
{
repeat (50) instance_create_layer(x + random_range(-500, 500), y + random_range(-200, 200), "layer_player", obj_watcher_red);
instance_destroy();
}