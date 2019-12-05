/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 654F3AA1
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "8912c5fe-9165-4c97-9035-655e88d7bae2"
var l654F3AA1_0 = false;
l654F3AA1_0 = instance_exists(obj_player);
if(l654F3AA1_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 377C88C2
	/// @DnDParent : 654F3AA1
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 184D1FF1
	/// @DnDParent : 654F3AA1
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 00C5B6F2
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D2D1D87
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E2FF6EE
	/// @DnDApplyTo : 698081df-7014-4655-a882-10487a676521
	/// @DnDParent : 0D2D1D87
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 2B72CB39
	/// @DnDParent : 0D2D1D87
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
	/// @DnDSaveInfo : "sound" "9c3dea55-e657-4993-8bff-0ac911a5faf7"
	audio_sound_pitch(snd_death, random_range(0.8, 1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4E653DDF
	/// @DnDParent : 0D2D1D87
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "9c3dea55-e657-4993-8bff-0ac911a5faf7"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 459C7985
	/// @DnDParent : 0D2D1D87
	instance_destroy();
}