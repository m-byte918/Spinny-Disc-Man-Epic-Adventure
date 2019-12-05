/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 77958C22
/// @DnDArgument : "xscale" "0.02"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.02"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += 0.02;
image_yscale += 0.02;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1907B185
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_xscale >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 6D016EC3
	/// @DnDParent : 1907B185
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72E579BC
	/// @DnDParent : 1907B185
	/// @DnDArgument : "objind" "obj_enemy"
	/// @DnDSaveInfo : "objind" "b2c6780c-eef8-4a41-bec7-fbbe6ca5d336"
	instance_change(obj_enemy, true);
}