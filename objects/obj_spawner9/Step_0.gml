if !instance_exists(obj_trigger9)
{
repeat (100) instance_create_layer(x + random_range(-800, 800), y + random_range(-200, 200), "layer_player", obj_watcher_red);
instance_destroy();
}