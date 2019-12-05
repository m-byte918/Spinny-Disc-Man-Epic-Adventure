/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 731FC9B8
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "e9d53c6c-18dc-4c6f-a543-27164bf9ff79"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1B7479EF
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1F78D165
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 36A6AFE5
/// @DnDArgument : "x" "window_get_width() / 2"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "thescore"
draw_text(window_get_width() / 2, 32, string("Score: ") + string(thescore));