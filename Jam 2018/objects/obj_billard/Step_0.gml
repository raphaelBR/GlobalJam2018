/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 194C8CC9
/// @DnDArgument : "code" "//effect of slow$(13_10)if rebounce = true {$(13_10)speed = speed -0.1	$(13_10)}$(13_10)$(13_10)if speed <= 0  {$(13_10)	rebounce = false$(13_10)}"
//effect of slow
if rebounce = true {
speed = speed -0.1	
}

if speed <= 0  {
	rebounce = false
}