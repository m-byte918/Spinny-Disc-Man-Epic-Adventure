/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B6F3482
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "spawnrate"
spawnrate = 60;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 57712FAE
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);