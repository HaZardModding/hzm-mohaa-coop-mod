	// ===================================================== //
	// Leg state machine for Mike Powell, the hero of MoH PC //
	// ===================================================== //

// The leg state machine takes care of states for the legs only.  The
// torso state machine can override the leg state machine with states
// which require animations of the whole body, such as climbing and
// sprinting.  The animations in this state file control the whole body,
// but most of the time the torso state machine overrides the animation
// for the upper body.

////////////////////////////////////////////////////////////////
//
// Standing
//
////////////////////////////////////////////////////////////////

state STAND
{
	entrycommands
	{
		modheight "stand"
		movementstealth "1.0"
		moveposflags "standing"
	}
	legs
	{
		mp40_stand_idle				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_idle				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_idle			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_idle			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_idle			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_idle	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_idle			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_idle			: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_idle			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_idle				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_idle				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_idle			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_idle			: default
	}

	states
	{
		FALL				: FALLING
		VEHICLE_TURRET_START	: IS_USING_VEHICLE IS_USING_TURRET !HAS_WEAPON
		VEHICLE_START		: IS_USING_VEHICLE !HAS_WEAPON
		TURRET_START		: IS_USING_TURRET !HAS_WEAPON
		
		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER

		RUN_FORWARD			: RUN FORWARD HAS_VELOCITY !BLOCKED "2"
		RUN_BACKWARD		: RUN BACKWARD HAS_VELOCITY !BLOCKED "2"
		RUN_LEFT			: RUN STRAFE_LEFT HAS_VELOCITY !BLOCKED "2"
		RUN_BACKWARD		: RUN STRAFE_RIGHT HAS_VELOCITY !BLOCKED "2"

		WALK_FORWARD		: FORWARD HAS_VELOCITY !BLOCKED "2"
		WALK_BACKWARD		: BACKWARD HAS_VELOCITY !BLOCKED "2"
		WALK_LEFT			: STRAFE_LEFT HAS_VELOCITY !BLOCKED "2"
		WALK_BACKWARD		: STRAFE_RIGHT HAS_VELOCITY !BLOCKED "2"

		// restart if our weapon has changed
		STAND				: +HAS_WEAPON
		STAND				: -HAS_WEAPON
		
		JUMP_STANDING		: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
		
		// pitch a new idle anim if the anim finished
		STAND				: ANIMDONE_LEGS
	}
}


////////////////////////////////////////////////////////////////
//
// Running
//
////////////////////////////////////////////////////////////////

state RUN_FORWARD
{
	entrycommands
	{
		movementstealth "0.25"
		moveposflags "standing" "running"
	}
	legs
	{
		mp40_stand_run_fwd				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_run_fwd				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_run_fwd			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_run_fwd			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_run_fwd			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_run_fwd	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_run_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_run_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_run_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_run_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_run_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_run_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_run_fwd			: default
	}

	states
	{
		FALL				: FALLING

		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER
		
		STAND				: !HAS_VELOCITY
		STAND				: BLOCKED "2"
		
		WALK_FORWARD		: !RUN FORWARD
		WALK_BACKWARD		: !RUN BACKWARD
		WALK_LEFT			: !RUN STRAFE_LEFT !FORWARD !BACKWARD
		WALK_BACKWARD		: !RUN STRAFE_RIGHT !FORWARD !BACKWARD

		RUN_BACKWARD		: BACKWARD
		RUN_LEFT			: STRAFE_LEFT !FORWARD !BACKWARD
		RUN_RIGHT			: STRAFE_RIGHT !FORWARD !BACKWARD
		
		// restart if our weapon has changed
		RUN_FORWARD	: +HAS_WEAPON
		RUN_FORWARD	: -HAS_WEAPON

		JUMP_FORWARD_RUN	: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
	}
}

state RUN_BACKWARD
{
	entrycommands
	{
		movementstealth "0.25"
		moveposflags "standing" "running"
	}
	legs
	{
		mp40_stand_run_back				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_run_back				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_run_back			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_run_back			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_run_back			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_run_back	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_run_back			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_run_back			: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_run_back			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_run_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_run_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_run_back			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_run_back			: default
	}

	states
	{
		FALL				: FALLING

		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER

		STAND				: !HAS_VELOCITY
		STAND				: BLOCKED "2"

		WALK_FORWARD		: !RUN FORWARD
		WALK_BACKWARD		: !RUN BACKWARD
		WALK_LEFT			: !RUN STRAFE_LEFT !FORWARD !BACKWARD
		WALK_BACKWARD		: !RUN STRAFE_RIGHT !FORWARD !BACKWARD

		RUN_FORWARD			: FORWARD
		RUN_LEFT			: STRAFE_LEFT !FORWARD !BACKWARD
		RUN_RIGHT			: STRAFE_RIGHT !FORWARD !BACKWARD
		
		// restart if our weapon has changed
		RUN_BACKWARD		: +HAS_WEAPON
		RUN_BACKWARD		: -HAS_WEAPON

		JUMP_STANDING		: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
	}
}

state RUN_LEFT
{
	entrycommands
	{
		movementstealth "0.25"
		moveposflags "standing" "running"
	}
	legs
	{
		mp40_stand_run_left				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_run_left				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_run_left			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_run_left			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_run_left			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_run_left	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_run_left			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_run_left			: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_run_left			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_run_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_run_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_run_left			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_run_left			: default
	}

	states
	{
		FALL				: FALLING

		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER

		STAND				: !HAS_VELOCITY
		STAND				: BLOCKED "2"

		WALK_FORWARD		: !RUN FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		WALK_BACKWARD		: !RUN BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		WALK_LEFT			: !RUN STRAFE_LEFT
		WALK_BACKWARD		: !RUN STRAFE_RIGHT

		RUN_FORWARD			: FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		RUN_BACKWARD		: BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		RUN_RIGHT			: STRAFE_RIGHT
		
		// restart if our weapon has changed
		RUN_LEFT			: +HAS_WEAPON
		RUN_LEFT			: -HAS_WEAPON

		JUMP_STANDING		: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
	}
}

state RUN_RIGHT
{
	entrycommands
	{
		movementstealth "0.25"
		moveposflags "standing" "running"
	}
	legs
	{
		mp40_stand_run_right			: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_run_right			: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_run_right			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_run_right			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_run_right			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_run_right	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_run_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_run_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_run_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_run_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_run_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_run_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_run_right			: default
	}

	states
	{
		FALL				: FALLING

		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER

		STAND				: !HAS_VELOCITY
		STAND				: BLOCKED "2"
		
		WALK_FORWARD		: !RUN FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		WALK_BACKWARD		: !RUN BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		WALK_LEFT			: !RUN STRAFE_LEFT
		WALK_BACKWARD		: !RUN STRAFE_RIGHT

		RUN_FORWARD			: FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		RUN_BACKWARD		: BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		RUN_LEFT			: STRAFE_LEFT

		// restart if our weapon has changed
		RUN_RIGHT			: +HAS_WEAPON
		RUN_RIGHT			: -HAS_WEAPON

		JUMP_STANDING		: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
	}
}

////////////////////////////////////////////////////////////////
//
// Walking
//
////////////////////////////////////////////////////////////////

state WALK_FORWARD
{
	entrycommands
	{
		movementstealth "0.75"
		moveposflags "standing" "walking" // fixed... -1337SMITHY
	}
	legs
	{
		mp40_stand_walk_fwd				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_walk_fwd				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_walk_fwd			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_walk_fwd			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_walk_fwd			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_walk_fwd	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_walk_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_walk_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_walk_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_walk_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_walk_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_walk_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_walk_fwd			: default
	}

	states
	{
		FALL				: FALLING

		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER

		STAND				: BLOCKED "2"
		STAND				: !HAS_VELOCITY
		
		RUN_FORWARD			: RUN FORWARD
		RUN_BACKWARD		: RUN BACKWARD
		RUN_LEFT			: RUN STRAFE_LEFT !FORWARD !BACKWARD
		RUN_RIGHT			: RUN STRAFE_RIGHT !FORWARD !BACKWARD
		
		WALK_BACKWARD		: BACKWARD
		WALK_LEFT			: STRAFE_LEFT !FORWARD !BACKWARD
		WALK_RIGHT			: STRAFE_RIGHT !FORWARD !BACKWARD
		
		// restart if our weapon has changed
		WALK_FORWARD		: +HAS_WEAPON
		WALK_FORWARD		: -HAS_WEAPON

		JUMP_FORWARD_RUN	: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
	}
}

state WALK_BACKWARD
{
	entrycommands
	{
		movementstealth "0.75"
		moveposflags "standing" "walking"
	}
	legs
	{
		mp40_stand_walk_back				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_walk_back				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_walk_back				: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_walk_back				: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_walk_back				: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_walk_back	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_walk_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_walk_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_walk_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_walk_back					: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_walk_back					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_walk_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_walk_back				: default
	}

	states
	{
		FALL				: FALLING

		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER

		STAND				: BLOCKED "2"
		STAND				: !HAS_VELOCITY
		
		RUN_FORWARD			: RUN FORWARD
		RUN_BACKWARD		: RUN BACKWARD
		RUN_LEFT			: RUN STRAFE_LEFT !FORWARD !BACKWARD
		RUN_RIGHT			: RUN STRAFE_RIGHT !FORWARD !BACKWARD
		
		WALK_FORWARD		: FORWARD
		WALK_LEFT			: STRAFE_LEFT !FORWARD !BACKWARD
		WALK_RIGHT			: STRAFE_RIGHT !FORWARD !BACKWARD
		
		// restart if our weapon has changed
		WALK_BACKWARD		: +HAS_WEAPON
		WALK_BACKWARD		: -HAS_WEAPON

		JUMP_STANDING	: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
	}
}

state WALK_LEFT
{
	entrycommands
	{
		movementstealth "0.75"
		moveposflags "standing" "walking"
	}
	legs
	{
		mp40_stand_walk_left				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_walk_left				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_walk_left				: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_walk_left				: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_walk_left				: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_walk_left	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_walk_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_walk_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_walk_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_walk_left					: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_walk_left					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_walk_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_walk_left				: default
	}

	states
	{
		FALL				: FALLING

		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER

		STAND				: BLOCKED "2"
		STAND				: !HAS_VELOCITY
		
		RUN_FORWARD			: RUN FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		RUN_BACKWARD		: RUN BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		RUN_LEFT			: RUN STRAFE_LEFT
		RUN_RIGHT			: RUN STRAFE_RIGHT
		
		WALK_FORWARD		: FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		WALK_BACKWARD		: BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		WALK_RIGHT			: STRAFE_RIGHT
		
		// restart if our weapon has changed
		WALK_LEFT			: +HAS_WEAPON
		WALK_LEFT			: -HAS_WEAPON

		JUMP_STANDING		: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
	}
}

state WALK_RIGHT
{
	entrycommands
	{
		movementstealth "0.75"
		moveposflags "standing" "walking"
	}
	legs
	{
		mp40_stand_walk_right				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_stand_walk_right				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_stand_walk_right			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_stand_walk_right			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_stand_walk_right			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_stand_walk_right	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_stand_walk_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_stand_walk_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_stand_walk_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_stand_walk_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_stand_walk_right					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_stand_walk_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_stand_walk_right			: default
	}

	states
	{
		FALL				: FALLING

		CROUCH_IDLE			: ONGROUND +CROUCH !DUCKED_VIEW_IN_WATER
		CROUCH_DENIED		: ONGROUND +CROUCH DUCKED_VIEW_IN_WATER

		STAND				: BLOCKED "2"
		STAND				: !HAS_VELOCITY
		
		RUN_FORWARD			: RUN FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		RUN_BACKWARD		: RUN BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		RUN_LEFT			: RUN STRAFE_LEFT
		RUN_RIGHT			: RUN STRAFE_RIGHT
		
		WALK_FORWARD		: FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		WALK_BACKWARD		: BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		WALK_LEFT			: STRAFE_LEFT
		
		// restart if our weapon has changed
		WALK_RIGHT			: +HAS_WEAPON
		WALK_RIGHT			: -HAS_WEAPON

		JUMP_STANDING		: +JUMP ONGROUND !DUCKED_VIEW_IN_WATER
	}
}


////////////////////////////////////////////////////////////////
//
// Crouching
//
////////////////////////////////////////////////////////////////

// this state is called to notify the player that he can't duck
state CROUCH_DENIED
{
	entrycommands
	{
		iprint "Can't duck under water"
	}
	
	states
	{
		STAND	: default
	}
}

state CROUCH_IDLE
{
	entrycommands
	{
		modheight "duck"
		movementstealth "1.25"
		moveposflags "crouching"
	}
	legs
	{
		mp40_crouch_idle				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_idle				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_idle				: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_idle				: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_idle				: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_idle	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_idle				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_idle				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_idle				: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_idle					: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_idle					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_idle				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_idle				: default
	}

	states
	{
		FALL_DUCKED				: FALLING
		
		STAND					: JUMP CHECK_HEIGHT "stand"
		STAND					: +CROUCH CHECK_HEIGHT "stand"
		STAND					: VIEW_IN_WATER CHECK_HEIGHT "stand"		

		CROUCH_RUN_FORWARD		: RUN FORWARD HAS_VELOCITY !BLOCKED "2"
		CROUCH_RUN_BACKWARD		: RUN BACKWARD HAS_VELOCITY !BLOCKED "2"
		CROUCH_RUN_LEFT			: RUN STRAFE_LEFT HAS_VELOCITY !BLOCKED "2"
		CROUCH_RUN_BACKWARD		: RUN STRAFE_RIGHT HAS_VELOCITY !BLOCKED "2"

		CROUCH_WALK_FORWARD		: FORWARD HAS_VELOCITY !BLOCKED "2"
		CROUCH_WALK_BACKWARD	: BACKWARD HAS_VELOCITY !BLOCKED "2"
		CROUCH_WALK_LEFT		: STRAFE_LEFT HAS_VELOCITY !BLOCKED "2"
		CROUCH_WALK_BACKWARD	: STRAFE_RIGHT HAS_VELOCITY !BLOCKED "2"

		// restart if our weapon has changed
		CROUCH_IDLE				: +HAS_WEAPON
		CROUCH_IDLE				: -HAS_WEAPON
	}
}

////////////////////////////////////////////////////////////////
//
// Crouch Walking
//
////////////////////////////////////////////////////////////////

state CROUCH_WALK_FORWARD
{
	entrycommands
	{
		modheight "duck"
		movementstealth "1.0"
		moveposflags "crouching" "walking"
	}
	legs
	{
		mp40_crouch_walk_fwd				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_walk_fwd				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_walk_fwd				: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_walk_fwd				: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_walk_fwd				: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_walk_fwd	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_walk_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_walk_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_walk_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_walk_fwd					: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_walk_fwd					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_walk_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_walk_fwd				: default
	}

	states
	{
		FALL_DUCKED				: FALLING

		STAND					: JUMP CHECK_HEIGHT "stand"
		STAND					: +CROUCH CHECK_HEIGHT "stand"
		STAND					: VIEW_IN_WATER CHECK_HEIGHT "stand"		
	
		CROUCH_IDLE				: !HAS_VELOCITY
		CROUCH_IDLE				: BLOCKED "2"
		
		CROUCH_RUN_FORWARD		: RUN FORWARD
		CROUCH_RUN_BACKWARD		: RUN BACKWARD
		CROUCH_RUN_LEFT			: RUN STRAFE_LEFT !FORWARD !BACKWARD
		CROUCH_RUN_RIGHT		: RUN STRAFE_RIGHT !FORWARD !BACKWARD
		
		CROUCH_WALK_BACKWARD	: BACKWARD
		CROUCH_WALK_LEFT		: STRAFE_LEFT !FORWARD !BACKWARD
		CROUCH_WALK_RIGHT		: STRAFE_RIGHT !FORWARD !BACKWARD
		
		// restart if our weapon has changed
		CROUCH_WALK_FORWARD		: +HAS_WEAPON
		CROUCH_WALK_FORWARD		: -HAS_WEAPON
	}
}

state CROUCH_WALK_BACKWARD
{
	entrycommands
	{
		modheight "duck"
		movementstealth "1.0"
		moveposflags "crouching" "walking"
	}
	legs
	{
		mp40_crouch_walk_back				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_walk_back				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_walk_back			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_walk_back			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_walk_back			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_walk_back	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_walk_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_walk_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_walk_back			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_walk_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_walk_back					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_walk_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_walk_back			: default
	}

	states
	{
		FALL_DUCKED				: FALLING

		STAND				: JUMP CHECK_HEIGHT "stand"
		STAND				: +CROUCH CHECK_HEIGHT "stand"
		STAND				: VIEW_IN_WATER CHECK_HEIGHT "stand"		

		CROUCH_IDLE			: !HAS_VELOCITY
		CROUCH_IDLE			: BLOCKED "2"

		
		CROUCH_RUN_FORWARD		: RUN FORWARD
		CROUCH_RUN_BACKWARD		: RUN BACKWARD
		CROUCH_RUN_LEFT			: RUN STRAFE_LEFT !FORWARD !BACKWARD
		CROUCH_RUN_RIGHT		: RUN STRAFE_RIGHT !FORWARD !BACKWARD
		
		CROUCH_WALK_FORWARD		: FORWARD
		CROUCH_WALK_LEFT		: STRAFE_LEFT !FORWARD !BACKWARD
		CROUCH_WALK_RIGHT		: STRAFE_RIGHT !FORWARD !BACKWARD
		
		// restart if our weapon has changed
		CROUCH_WALK_BACKWARD	: +HAS_WEAPON
		CROUCH_WALK_BACKWARD	: -HAS_WEAPON
	}
}

state CROUCH_WALK_LEFT
{
	entrycommands
	{
		modheight "duck"
		movementstealth "1.0"
		moveposflags "crouching" "walking"
	}
	legs
	{
		mp40_crouch_walk_left				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_walk_left				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_walk_left			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_walk_left			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_walk_left			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_walk_left	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_walk_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_walk_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_walk_left			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_walk_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_walk_left					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_walk_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_walk_left			: default
	}

	states
	{
		FALL_DUCKED				: FALLING

		STAND					: JUMP CHECK_HEIGHT "stand"
		STAND					: +CROUCH CHECK_HEIGHT "stand"
		STAND					: VIEW_IN_WATER CHECK_HEIGHT "stand"		

		CROUCH_IDLE				: !HAS_VELOCITY
		CROUCH_IDLE				: BLOCKED "2"

		
		CROUCH_RUN_FORWARD		: RUN FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_RUN_BACKWARD		: RUN BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_RUN_LEFT			: RUN STRAFE_LEFT
		CROUCH_RUN_RIGHT		: RUN STRAFE_RIGHT
		
		CROUCH_WALK_FORWARD		: FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_WALK_BACKWARD	: BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_WALK_RIGHT		: STRAFE_RIGHT
		
		// restart if our weapon has changed
		CROUCH_WALK_LEFT		: +HAS_WEAPON
		CROUCH_WALK_LEFT		: -HAS_WEAPON
	}
}

state CROUCH_WALK_RIGHT
{
	entrycommands
	{
		modheight "duck"
		movementstealth "1.0"
		moveposflags "crouching" "walking"
	}
	legs
	{
		mp40_crouch_walk_right				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_walk_right				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_walk_right			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_walk_right			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_walk_right			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_walk_right	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_walk_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_walk_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_walk_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_walk_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_walk_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_walk_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_walk_right			: default
	}

	states
	{
		FALL_DUCKED				: FALLING

		STAND					: JUMP CHECK_HEIGHT "stand"
		STAND					: +CROUCH CHECK_HEIGHT "stand"
		STAND					: VIEW_IN_WATER CHECK_HEIGHT "stand"		

		CROUCH_IDLE				: !HAS_VELOCITY
		CROUCH_IDLE				: BLOCKED "2"

		
		CROUCH_RUN_FORWARD		: RUN FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_RUN_BACKWARD		: RUN BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_RUN_LEFT			: RUN STRAFE_LEFT
		CROUCH_RUN_RIGHT		: RUN STRAFE_RIGHT
		
		CROUCH_WALK_FORWARD		: FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_WALK_BACKWARD	: BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_WALK_LEFT		: STRAFE_LEFT
		
		// restart if our weapon has changed
		CROUCH_WALK_RIGHT		: +HAS_WEAPON
		CROUCH_WALK_RIGHT		: -HAS_WEAPON
	}
}

////////////////////////////////////////////////////////////////
//
// Crouch Running
//
////////////////////////////////////////////////////////////////

state CROUCH_RUN_FORWARD
{
	entrycommands
	{
		modheight "duck"
		movementstealth "0.75"
		moveposflags "crouching" "running"
	}
	legs
	{
		mp40_crouch_run_fwd				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_run_fwd				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_run_fwd			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_run_fwd			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_run_fwd			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_run_fwd	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_run_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_run_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_run_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_run_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_run_fwd				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_run_fwd			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_run_fwd			: default
	}

	states
	{
		FALL_DUCKED				: FALLING

		STAND					: JUMP CHECK_HEIGHT "stand"
		STAND					: +CROUCH CHECK_HEIGHT "stand"
		STAND					: VIEW_IN_WATER CHECK_HEIGHT "stand"		

		CROUCH_IDLE				: !HAS_VELOCITY
		CROUCH_IDLE				: BLOCKED "2"
		
		CROUCH_WALK_FORWARD		: !RUN FORWARD
		CROUCH_WALK_BACKWARD	: !RUN BACKWARD
		CROUCH_WALK_LEFT		: !RUN STRAFE_LEFT !FORWARD !BACKWARD
		CROUCH_WALK_BACKWARD	: !RUN STRAFE_RIGHT !FORWARD !BACKWARD

		CROUCH_RUN_BACKWARD		: BACKWARD
		CROUCH_RUN_LEFT			: STRAFE_LEFT !FORWARD !BACKWARD
		CROUCH_RUN_RIGHT		: STRAFE_RIGHT !FORWARD !BACKWARD
		
		// restart if our weapon has changed
		CROUCH_RUN_FORWARD	: +HAS_WEAPON
		CROUCH_RUN_FORWARD	: -HAS_WEAPON
	}
}

state CROUCH_RUN_BACKWARD
{
	entrycommands
	{
		modheight "duck"
		movementstealth "0.75"
		moveposflags "crouching" "running"
	}
	legs
	{
		mp40_crouch_run_back				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_run_back				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_run_back				: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_run_back				: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_run_back				: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_run_back	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_run_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_run_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_run_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_run_back					: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_run_back					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_run_back				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_run_back				: default
	}

	states
	{
		FALL_DUCKED				: FALLING

		STAND					: JUMP CHECK_HEIGHT "stand"
		STAND					: +CROUCH CHECK_HEIGHT "stand"
		STAND					: VIEW_IN_WATER CHECK_HEIGHT "stand"		

		CROUCH_IDLE				: !HAS_VELOCITY
		CROUCH_IDLE				: BLOCKED "2"
		
		CROUCH_WALK_FORWARD		: !RUN FORWARD
		CROUCH_WALK_BACKWARD	: !RUN BACKWARD
		CROUCH_WALK_LEFT		: !RUN STRAFE_LEFT !FORWARD !BACKWARD
		CROUCH_WALK_BACKWARD	: !RUN STRAFE_RIGHT !FORWARD !BACKWARD

		CROUCH_RUN_FORWARD		: FORWARD
		CROUCH_RUN_LEFT			: STRAFE_LEFT !FORWARD !BACKWARD
		CROUCH_RUN_RIGHT		: STRAFE_RIGHT !FORWARD !BACKWARD
		
		// restart if our weapon has changed
		CROUCH_RUN_BACKWARD		: +HAS_WEAPON
		CROUCH_RUN_BACKWARD		: -HAS_WEAPON
	}
}

state CROUCH_RUN_LEFT
{
	entrycommands
	{
		modheight "duck"
		movementstealth "0.75"
		moveposflags "crouching" "running"
	}
	legs
	{
		mp40_crouch_run_left				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_run_left				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_run_left				: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_run_left				: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_run_left				: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_run_left	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_run_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_run_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_run_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_run_left					: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_run_left					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_run_left				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_run_left				: default
	}

	states
	{
		FALL_DUCKED				: FALLING

		STAND					: JUMP CHECK_HEIGHT "stand"
		STAND					: +CROUCH CHECK_HEIGHT "stand"
		STAND					: VIEW_IN_WATER CHECK_HEIGHT "stand"		

		CROUCH_IDLE				: !HAS_VELOCITY
		CROUCH_IDLE				: BLOCKED "2"
		
		CROUCH_WALK_FORWARD		: !RUN FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_WALK_BACKWARD	: !RUN BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_WALK_LEFT		: !RUN STRAFE_LEFT
		CROUCH_WALK_BACKWARD	: !RUN STRAFE_RIGHT

		CROUCH_RUN_FORWARD		: FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_RUN_BACKWARD		: BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_RUN_RIGHT		: STRAFE_RIGHT
		
		// restart if our weapon has changed
		CROUCH_RUN_LEFT			: +HAS_WEAPON
		CROUCH_RUN_LEFT			: -HAS_WEAPON
	}
}

state CROUCH_RUN_RIGHT
{
	entrycommands
	{
		modheight "duck"
		movementstealth "0.75"
		moveposflags "crouching" "running"
	}
	legs
	{
		mp40_crouch_run_right				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_crouch_run_right				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_crouch_run_right			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_crouch_run_right			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_crouch_run_right			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_crouch_run_right	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_crouch_run_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_crouch_run_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_crouch_run_right			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_crouch_run_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_crouch_run_right					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_crouch_run_right				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_crouch_run_right			: default
	}

	states
	{
		FALL_DUCKED				: FALLING

		STAND					: JUMP CHECK_HEIGHT "stand"
		STAND					: +CROUCH CHECK_HEIGHT "stand"
		STAND					: VIEW_IN_WATER CHECK_HEIGHT "stand"		

		CROUCH_IDLE				: !HAS_VELOCITY
		CROUCH_IDLE				: BLOCKED "2"
		
		CROUCH_WALK_FORWARD		: !RUN FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_WALK_BACKWARD	: !RUN BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_WALK_LEFT		: !RUN STRAFE_LEFT
		CROUCH_WALK_BACKWARD	: !RUN STRAFE_RIGHT

		CROUCH_RUN_FORWARD		: FORWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_RUN_BACKWARD		: BACKWARD !STRAFE_LEFT !STRAFE_RIGHT
		CROUCH_RUN_LEFT			: STRAFE_LEFT
		
		// restart if our weapon has changed
		CROUCH_RUN_RIGHT		: +HAS_WEAPON
		CROUCH_RUN_RIGHT		: -HAS_WEAPON
	}
}

////////////////////////////////////////////////////////////////
//
// Falling
//
////////////////////////////////////////////////////////////////

// falling in standing position
state FALL
{
	entrycommands
	{
		modheight "stand"
		movementstealth "0.5"
		moveposflags "offground" "falling"
	}
	legs
	{
		mp40_fall				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_fall				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_fall			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_fall			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_fall			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_fall	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_fall			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_fall					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_fall			: default
	}

	states
	{
//		LAND			: ONGROUND CHECK_HEIGHT "stand"
//		LAND_DUCKED		: ONGROUND
		LAND			: ONGROUND
		
		FALL_DUCKED		: +CROUCH
	}
}

// land from falling in  a standing position
state LAND
{
	entrycommands
	{
		modheight "stand"
		movementstealth "0.5"
		moveposflags "standing"
	}
	states
	{
		LAND_IMPACT_HARD	: HARD_IMPACT
		LAND_IMPACT			: MEDIUM_IMPACT
		STAND				: default
	}
}

// land from falling in  a standing position
state LAND_IMPACT
{
	entrycommands
	{
		movementstealth "0.25"
		moveposflags "standing"
	}
	legs
	{
		mp40_land				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_land				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_land			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_land			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_land			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_land	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_land				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol"
		rifle_land				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_land			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade"
		smg_land				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_land					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_land				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_land			: default
	}

	states
	{
		STAND 			: ANIMDONE_LEGS CHECK_HEIGHT "stand"
		CROUCH_IDLE		: ANIMDONE_LEGS
	}
}

// land from falling in  a standing position
state LAND_IMPACT_HARD
{
	entrycommands
	{
		movementstealth "0.25"
		moveposflags "standing"
	}
	legs
	{
		mp40_land_hard				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_land_hard				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_land_hard			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_land_hard			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_land_hard			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_land_hard	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_land_hard			: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_land_hard				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_land_hard			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_land_hard				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_land_hard				: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_land_hard			: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_land_hard			: default
	}

	states
	{
		STAND 			: ANIMDONE_LEGS CHECK_HEIGHT "stand"
		CROUCH_IDLE		: ANIMDONE_LEGS
	}
}

state FALL_DUCKED
{
	entrycommands
	{
		modheight "duck"
		movementstealth "0.75"
		moveposflags "offground" "falling"
	}
	legs
	{
		mp40_fall				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_fall				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_fall			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_fall			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_fall			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_fall	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_fall			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_fall					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_fall			: default
	}
	
	states
	{
		LAND_DUCKED			: ONGROUND
//		FALL				: !CROUCH DOWN_VELOCITY "100" CHECK_HEIGHT "stand"

//		FALL				: +CROUCH CHECK_HEIGHT "stand"
//		FALL				: +JUMP CHECK_HEIGHT "stand"
	}
}

state FALL_DUCKED_WANT_STAND
{
	entrycommands
	{
		modheight "duck"
		movementstealth "0.75"
		moveposflags "offground" "falling"
	}
	legs
	{
		mp40_fall				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_fall				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_fall			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_fall			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_fall			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_fall	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_fall			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_fall					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_fall				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_fall			: default
	}
	
	states
	{
//		FALL				: CHECK_HEIGHT "stand"
//		FALL				: +JUMP CHECK_HEIGHT "stand"
		FALL_DUCKED			: +CROUCH
	
		LAND				: ONGROUND CHECK_HEIGHT "stand"
		LAND_DUCKED			: ONGROUND
	}
}

state LAND_DUCKED
{
	entrycommands
	{
		movementstealth "0.5"
		moveposflags "crouching"
	}
	states
	{
		STAND				: HARD_IMPACT !CROUCH CHECK_HEIGHT "stand"
		CROUCH_IDLE			: default
	}
}


////////////////////////////////////////////////////////////////
//
// JUMPING
//
////////////////////////////////////////////////////////////////

state JUMP_STANDING
{
	entrycommands
	{
		movementstealth "0.3"
		moveposflags "crouching"
//		modheight "duck"
		modheight "jumpstart"
		commanddelay 0.05 jump 56
	}
	legs
	{
		mp40_jump_takeoff				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_jump_takeoff				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_jump_takeoff			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_jump_takeoff			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_jump_takeoff			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_jump_takeoff	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_jump_takeoff				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_jump_takeoff				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_jump_takeoff			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_jump_takeoff				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_jump_takeoff					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_jump_takeoff				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_jump_takeoff			: default
	}
	
	states
	{
//		FALL_DUCKED				: ANIMDONE_LEGS CROUCH
//		FALL					: ANIMDONE_LEGS CHECK_HEIGHT "stand"
		FALL_DUCKED_WANT_STAND	: ANIMDONE_LEGS !DUCKED_VIEW_IN_WATER
		FALL					: ANIMDONE_LEGS
	}
}

state JUMP_FORWARD_RUN
{
	entrycommands
	{
		movementstealth "0.2"
		moveposflags "crouching" "running"
//		modheight "duck"
		modheight "jumpstart"
		commanddelay 0.05 jump 56
	}
	legs
	{
		mp40_jump_run_takeoff				: IS_WEAPON_ACTIVE "mainhand" "MP40"
		mp44_jump_run_takeoff				: IS_WEAPON_ACTIVE "mainhand" "StG 44"
		bazooka_jump_run_takeoff			: IS_WEAPON_ACTIVE "mainhand" "Bazooka"
		bazooka_jump_run_takeoff			: IS_WEAPON_ACTIVE "mainhand" "Panzerschreck"
		shotgun_jump_run_takeoff			: IS_WEAPON_ACTIVE "mainhand" "Shotgun"
		steilhandgranate_jump_run_takeoff	: IS_WEAPON_ACTIVE "mainhand" "Stielhandgranate"
		pistol_jump_run_takeoff				: IS_WEAPONCLASS_ACTIVE "mainhand" "pistol" 
		rifle_jump_run_takeoff				: IS_WEAPONCLASS_ACTIVE "mainhand" "rifle" 
		grenade_jump_run_takeoff			: IS_WEAPONCLASS_ACTIVE "mainhand" "grenade" 
		smg_jump_run_takeoff				: IS_WEAPONCLASS_ACTIVE "mainhand" "smg" 
		mg_jump_run_takeoff					: IS_WEAPONCLASS_ACTIVE "mainhand" "mg" 
//		pistol_jump_run_takeoff				: IS_WEAPONCLASS_ACTIVE "mainhand" "item" // hold all items like a pistol for now
		unarmed_jump_run_takeoff			: default
	}
	
	states
	{
//		FALL_DUCKED				: ANIMDONE_LEGS CROUCH
//		FALL					: ANIMDONE_LEGS CHECK_HEIGHT "stand"
		FALL_DUCKED_WANT_STAND	: ANIMDONE_LEGS !DUCKED_VIEW_IN_WATER
		FALL					: ANIMDONE_LEGS
	}
}

////////////////////////////////////////////////////////////////
//
// VEHICLES
//
////////////////////////////////////////////////////////////////

state VEHICLE_START
{
	legs
	{
		unarmed_idle : default
	}
	
	states
	{
		VEHICLE_USING			: ANIMDONE_LEGS
	}
}

state VEHICLE_USING
{
	legs
	{
		unarmed_idle : default
	}
	
	states
	{
		STAND : !IS_USING_VEHICLE
	}
}

// for when using a turret on a vehicle

state VEHICLE_TURRET_START
{
	legs
	{
		unarmed_idle : default
	}
	
	states
	{
		VEHICLE_TURRET_USING	: ANIMDONE_LEGS
	}
}

state VEHICLE_TURRET_USING
{
	legs
	{
		unarmed_idle	: TURRET_TYPE "MG42"
		unarmed_idle	: default
	}
	
	states
	{
		STAND		: !IS_USING_VEHICLE
		STAND		: !IS_USING_TURRET
	}
}

////////////////////////////////////////////////////////////////
//
// TURRETS
//
////////////////////////////////////////////////////////////////

state TURRET_START
{
	legs
	{
		unarmed_idle : TURRET_TYPE "MG42"
		unarmed_idle : default
	}
	
	states
	{
		TURRET_USING			: ANIMDONE_LEGS
	}
}

state TURRET_USING
{
	legs
	{
		unarmed_idle : TURRET_TYPE "MG42"
		unarmed_idle : default
	}
	
	states
	{
		STAND : !IS_USING_TURRET
	}
}
