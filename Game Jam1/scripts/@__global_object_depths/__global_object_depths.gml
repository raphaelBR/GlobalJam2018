// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -1000; // obj_Engine
global.__objectDepths[1] = 20; // obj_Background
global.__objectDepths[2] = 0; // obj_Solid
global.__objectDepths[3] = 0; // obj_MovingSolid
global.__objectDepths[4] = 0; // obj_Mountain
global.__objectDepths[5] = 0; // obj_Slope
global.__objectDepths[6] = 0; // obj_Player
global.__objectDepths[7] = 0; // obj_PlayerAttack
global.__objectDepths[8] = 0; // obj_Dagger
global.__objectDepths[9] = 0; // obj_LifeTear
global.__objectDepths[10] = 0; // obj_Shield
global.__objectDepths[11] = 0; // obj_ArrowBasic
global.__objectDepths[12] = 0; // obj_ArrowLoaded
global.__objectDepths[13] = 0; // obj_Enemy
global.__objectDepths[14] = 0; // obj_HealthPotion


global.__objectNames[0] = "obj_Engine";
global.__objectNames[1] = "obj_Background";
global.__objectNames[2] = "obj_Solid";
global.__objectNames[3] = "obj_MovingSolid";
global.__objectNames[4] = "obj_Mountain";
global.__objectNames[5] = "obj_Slope";
global.__objectNames[6] = "obj_Player";
global.__objectNames[7] = "obj_PlayerAttack";
global.__objectNames[8] = "obj_Dagger";
global.__objectNames[9] = "obj_LifeTear";
global.__objectNames[10] = "obj_Shield";
global.__objectNames[11] = "obj_ArrowBasic";
global.__objectNames[12] = "obj_ArrowLoaded";
global.__objectNames[13] = "obj_Enemy";
global.__objectNames[14] = "obj_HealthPotion";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for