/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 47057649
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""Layer_Enemy""
/// @DnDSaveInfo : "objectid" "11021284-1228-4be7-84c2-4ddc46662022"
instance_create_layer(random(room_width), random(room_height), "Layer_Enemy", obj_enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 365B2DB1
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);