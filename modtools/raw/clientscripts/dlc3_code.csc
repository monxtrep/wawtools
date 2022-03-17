//This file was adapted from nazi_zombie_factory.csc for use in the UGX Modtools patch.
#include clientscripts\_utility; 
#include clientscripts\_fx;
#include clientscripts\_music;

DLC3_FX()
{
	if( isDefined( level.DLC3_Client.createFX ) )
	{
		[[level.DLC3_Client.createFX]]();
	}
	
	_spawnFX();
	
	clientscripts\_fx::reportNumEffects();
	
	clientscripts\_utility::setFootstepEffect( "asphalt",    LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "brick",      LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "carpet",     LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "cloth",      LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "concrete",   LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "dirt",       LoadFx( "bio/player/fx_footstep_sand" ) );
	clientscripts\_utility::setFootstepEffect( "foliage",    LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "gravel",     LoadFx( "bio/player/fx_footstep_sand" ) );
	clientscripts\_utility::setFootstepEffect( "grass",      LoadFx( "bio/player/fx_footstep_sand" ) );
	clientscripts\_utility::setFootstepEffect( "metal",      LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "mud",        LoadFx( "bio/player/fx_footstep_mud" ) );
	clientscripts\_utility::setFootstepEffect( "paper",      LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "plaster",    LoadFx( "bio/player/fx_footstep_dust" ) );
	clientscripts\_utility::setFootstepEffect( "rock",       LoadFx( "bio/player/fx_footstep_sand" ) );
	clientscripts\_utility::setFootstepEffect( "sand",       LoadFx( "bio/player/fx_footstep_sand" ) );
	clientscripts\_utility::setFootstepEffect( "water",      LoadFx( "bio/player/fx_footstep_water" ) );
	clientscripts\_utility::setFootstepEffect( "wood",       LoadFx( "bio/player/fx_footstep_dust" ) );
	
	// THESE ARE NEEDED FOR ZOMBIE MODE -- LEAVE THESE
	level._effect["zombie_grain"]	             = LoadFx( "misc/fx_zombie_grain_cloud" );
	level._effect["electric_short_oneshot"]    = loadfx("env/electrical/fx_elec_short_oneshot");
	level._effect["switch_sparks"]             = loadfx ("env/electrical/fx_elec_wire_spark_burst");
	
	level._effect["zapper_fx"]                 = loadfx("misc/fx_zombie_zapper_powerbox_on");
	level._effect["zapper_wall"]               = loadfx("misc/fx_zombie_zapper_wall_control_on");
	level._effect["elec_trail_one_shot"]       = loadfx("misc/fx_zombie_elec_trail_oneshot");
	
	level._effect["zapper_light_ready"]        = loadfx("maps/zombie/fx_zombie_light_glow_green");
	level._effect["zapper_light_notready"]     = loadfx("maps/zombie/fx_zombie_light_glow_red");
	level._effect["wire_sparks_oneshot"]       = loadfx("env/electrical/fx_elec_wire_spark_dl_oneshot");

	level._effect["wire_spark"]                = loadfx("maps/zombie/fx_zombie_wire_spark");
	level._effect["eye_glow"]                 	= LoadFx( "misc/fx_zombie_eye_single" );
	level._effect["powerup_on"] 				= loadfx( "misc/fx_zombie_powerup_on" );
	
	/*
	level thread trap_fx_monitor("warehouse_trap","warehouse"); 
	level thread trap_fx_monitor("wuen_trap", "wuen");
	level thread trap_fx_monitor("bridge_trap", "bridge");
	*/
	
	disableFX = GetDvarInt( "disable_fx" );
	if( !IsDefined( disableFX ) || disableFX <= 0 )
	{
		// THESE ARE NEEDED FOR ZOMBIE MODE -- LEAVE THESE
		level._effect["zombie_grain"]	             = LoadFx( "misc/fx_zombie_grain_cloud" );
		level._effect["electric_short_oneshot"]    = loadfx("env/electrical/fx_elec_short_oneshot");
		level._effect["switch_sparks"]             = loadfx ("env/electrical/fx_elec_wire_spark_burst");
		
		level._effect["zapper_fx"]                 = loadfx("misc/fx_zombie_zapper_powerbox_on");
		level._effect["zapper_wall"]               = loadfx("misc/fx_zombie_zapper_wall_control_on");
		level._effect["elec_trail_one_shot"]       = loadfx("misc/fx_zombie_elec_trail_oneshot");
		
		level._effect["zapper_light_ready"]        = loadfx("maps/zombie/fx_zombie_light_glow_green");
		level._effect["zapper_light_notready"]     = loadfx("maps/zombie/fx_zombie_light_glow_red");
		level._effect["wire_sparks_oneshot"]       = loadfx("env/electrical/fx_elec_wire_spark_dl_oneshot");
	
		level._effect["wire_spark"]                = loadfx("maps/zombie/fx_zombie_wire_spark");
		level._effect["eye_glow"]                 	= LoadFx( "misc/fx_zombie_eye_single" );
		level._effect["powerup_on"] 				= loadfx( "misc/fx_zombie_powerup_on" );
	}
	
	/*
	level thread perk_wire_fx( "pw0", "pad_0_wire", "t01" );
	level thread perk_wire_fx( "pw1", "pad_1_wire", "t11" );
	level thread perk_wire_fx( "pw2", "pad_2_wire", "t21" );
	*/
	
	if( isDefined( level.DLC3_Client.myFX ) )
	{
		[[level.DLC3_Client.myFX]]();
	}
	
	// THESE ARE NEEDED FOR ZOMBIE MODE -- LEAVE THESE
	level._effect["transporter_beam"]				          = loadfx("maps/zombie/fx_transporter_beam");
	level._effect["transporter_pad_start"]				    = loadfx("maps/zombie/fx_transporter_pad_start");
	level._effect["transporter_start"]				        = loadfx("maps/zombie/fx_transporter_start");		
	level._effect["transporter_ambient"]				      = loadfx("maps/zombie/fx_transporter_ambient");		
	level._effect["zombie_mainframe_link_all"]				= loadfx("maps/zombie/fx_zombie_mainframe_link_all");
	level._effect["zombie_mainframe_link_single"]			= loadfx("maps/zombie/fx_zombie_mainframe_link_single");
	level._effect["zombie_mainframe_linked"]			    = loadfx("maps/zombie/fx_zombie_mainframe_linked");
	level._effect["zombie_mainframe_beam"]			      = loadfx("maps/zombie/fx_zombie_mainframe_beam");	
	level._effect["zombie_mainframe_flat"]			      = loadfx("maps/zombie/fx_zombie_mainframe_flat");		
	level._effect["zombie_mainframe_flat_start"]		  = loadfx("maps/zombie/fx_zombie_mainframe_flat_start");		
	level._effect["zombie_mainframe_beam_start"]		  = loadfx("maps/zombie/fx_zombie_mainframe_beam_start");		
	level._effect["zombie_flashback_american"]		    = loadfx("maps/zombie/fx_zombie_flashback_american");		
	level._effect["gasfire2"] 				                = LoadFx("destructibles/fx_dest_fire_vert");
	level._effect["mp_light_lamp"] 			              = Loadfx("maps/mp_maps/fx_mp_light_lamp");
	level._effect["zombie_difference"]		            = loadfx("maps/zombie/fx_zombie_difference");
	level._effect["zombie_mainframe_steam"]		        = loadfx("maps/zombie/fx_zombie_mainframe_steam");
	level._effect["zombie_heat_sink"]		              = loadfx("maps/zombie/fx_zombie_heat_sink");
	level._effect["mp_smoke_stack"] 			            = loadfx("maps/mp_maps/fx_mp_smoke_stack");
	level._effect["mp_elec_spark_fast_random"] 			  = loadfx("maps/mp_maps/fx_mp_elec_spark_fast_random");	
	level._effect["zombie_elec_gen_idle"] 		    	  = loadfx("misc/fx_zombie_elec_gen_idle");
	level._effect["zombie_moon_eclipse"]		          = loadfx("maps/zombie/fx_zombie_moon_eclipse");	
	level._effect["zombie_clock_hand"]		            = loadfx("maps/zombie/fx_zombie_clock_hand");
	level._effect["zombie_elec_pole_terminal"]		    = loadfx("maps/zombie/fx_zombie_elec_pole_terminal");	
	level._effect["mp_elec_broken_light_1shot"] 	  		  = loadfx("maps/mp_maps/fx_mp_elec_broken_light_1shot");	
	level._effect["mp_light_lamp_no_eo"] 	  		      = loadfx("maps/mp_maps/fx_mp_light_lamp_no_eo");													

	level._effect["zombie_packapunch"]		            = loadfx("maps/zombie/fx_zombie_packapunch");		
	level._effect["zapper"]							              = loadfx("misc/fx_zombie_electric_trap");
	
	level thread dog_start_monitor();
	level thread dog_stop_monitor();
	
	/*
	level thread light_model_swap( "smodel_light_electric",				"lights_indlight_on" );
	level thread light_model_swap( "smodel_light_electric_milit",		"lights_milit_lamp_single_int_on" );
	level thread light_model_swap( "smodel_light_electric_tinhatlamp",	"lights_tinhatlamp_on" );
	*/
	
	level thread clientscripts\_zombie_mode::init_perk_machines();
}

_spawnFX()
{	
	// Leave This -- Modulated Teleporter FX Exploders
	clientscripts\createfx\dlc3_fx::main();
}

zombie_monitor(clientNum)
{
	self endon("disconnect");
	self endon("zombie_off");
	
	while(1)
	{
		if(isdefined(self.zombifyFX))
		{
			playfx(clientNum, level._effect["zombie_grain"], self.origin);
		}
		realwait(0.1);		
	}
}

zombifyHandler(clientNum, newState, oldState)
{
	player = getlocalplayers()[clientNum];
		
	if(newState == "1")
	{
		if(!isdefined(player.zombifyFX))	// We're not already in zombie mode.
		{
			player.zombifyFX = 1;
			player thread zombie_monitor(clientNum);	// thread a monitor on it.
			println("Zombie effect on");
		}
	}
	else if(newState == "0")
	{
		if(isdefined(player.zombifyFX))		// We're already in zombie mode.
		{
				player.zombifyFX = undefined;
				self notify("zombie_off");	// kill the monitor thread
				println("Zombie effect off");
		}
	}
}

trap_fx_monitor(name,side)
{
	
	while(1)
	{
		level waittill(name);

		fire_points = getstructarray(name,"targetname");

		for(i=0;i<fire_points.size;i++)
		{
			fire_points[i] thread electric_trap_fx(name,side);		
		}

	}
	
}

electric_trap_fx(name,side)
{
	
	ang = self.angles;
	forward = anglestoforward(ang);
	up = anglestoup(ang);
	
	if ( isdefined( self.loopFX ) )
	{
		for(i = 0; i < self.loopFX.size; i ++)
		{
			self.loopFX[i] delete();
		}
		
		self.loopFX = [];
	}

	if(!isdefined(self.loopFX))
	{
		self.loopFX = [];
	}	
	
	players = getlocalplayers();
	
	for(i = 0; i < players.size; i++)
	{
		self.loopFX[i] = SpawnFx( i, level._effect["zapper"], self.origin, 0,forward,up);
		triggerfx(self.loopFX[i]);
	}
	
	level waittill(side + "off");
	//wait(30 );

	for(i = 0; i < self.loopFX.size; i ++)
	{
		self.loopFX[i] delete();
	}
	
	self.loopFX = [];

/*	if(isDefined(self.script_sound))
	{
		self.tag_origin playsound("elec_start");
		self.tag_origin playloopsound("elec_loop");
		self thread play_electrical_sound();
	}
	wait(30);
	wait(randomfloat(2));
	if(isDefined(self.script_sound))
	{
		self.tag_origin stoploopsound();
	}
	self.tag_origin delete();
	wait(2);
	notify_ent notify("elec_done");
	level notify ("arc_done"); */
		
}

// borrowed this func from asylum
perk_wire_fx(notify_wait, init_targetname, done_notify )
{
	level waittill(notify_wait);
	
	players = getlocalplayers();
	for(i = 0; i < players.size;i++)
	{
		players[i] thread perk_wire_fx_client( i, init_targetname, done_notify );
	}
}


//
//	Actually Plays the FX along the wire
perk_wire_fx_client( clientnum, init_targetname, done_notify )
{
	println( "perk_wire_fx_client for client #"+clientnum );
	targ = getstruct(init_targetname,"targetname");
	if ( !IsDefined( targ ) )
	{
		return;
	}
	
	mover = Spawn( clientnum, targ.origin, "script_model" );
	mover SetModel( "tag_origin" );	
	fx = PlayFxOnTag( clientnum, level._effect["wire_spark"], mover, "tag_origin" );
	
	fake_ent = spawnfakeent(0);
	setfakeentorg(0, fake_ent, mover.origin);
	playsound( 0, "tele_spark_hit", mover.origin );
	playloopsound( 0, fake_ent, "tele_spark_loop");
	mover thread tele_spark_audio_mover(fake_ent);

	while(isDefined(targ))
	{
		if(isDefined(targ.target))
		{
			println( "perk_wire_fx_client#"+clientnum+" next target: "+targ.target );
			target = getstruct(targ.target,"targetname");
			
//			PlayFx( clientnum, level._effect["wire_spark"], mover.origin );
			mover MoveTo( target.origin, 0.1 );
			wait( 0.1 );

			targ = target;
		}
		else
		{
			break;
		}		
	}
	level notify( "spark_done" );
	mover Delete();
	deletefakeent(0,fake_ent);

	// Link complete, light is green
	level notify( done_notify );
}

tele_spark_audio_mover(fake_ent)
{
	level endon( "spark_done" );

	while (1)
	{
		realwait(0.05);
		setfakeentorg(0, fake_ent, self.origin);
	}
}

//
// Pulls the fog in
dog_start_monitor()
{
	while( 1 )
	{
		level waittill( "dog_start" );
		//SetVolFog( 75.0, 80.0, 380, -40.0, 0.16, 0.204, 0.274, 7 );
		//SetVolFog( 229.0, 400.0, 115.0, 200.0, 0.16, 0.204, 0.274, 7 );
		SetVolFog( 229.0, 200.0, 380.0, 200.0, 0.16, 0.204, 0.274, 7 );
		//VisionSetNaked(0, "zombie_sumpf_dogs", 7 );
		
	}
}


//
// Pulls the fog in
dog_stop_monitor()
{
	while( 1 )
	{
		level waittill( "dog_stop" );
		SetVolFog( 404.39, 1543.52, 460.33, -244.014, 0.65, 0.84, 0.79, 6 );
		//VisionSetNaked(0, "zombie_sumpf", 4 );
		
	}
}


//
//  Replace the light models when the lights turn on and off
light_model_swap( name, model )
{
// 	while (1)
// 	{
		level waittill( "pl1" );	// Power lights on

		players = getlocalplayers();
		for ( p=0; p<players.size; p++ )
		{
			lamps = GetEntArray( p, name, "targetname" );
			for ( i=0; i<lamps.size; i++ )
			{
				lamps[i] SetModel( model );
			}
		}
}


//
//	This is some crap to get around my inability to get usable angles from a model in a prefab
get_guide_struct_angles( ent )
{
	guide_structs = GetStructArray( "map_fx_guide_struct", "targetname" );
	if ( guide_structs.size > 0 )
	{
		guide = guide_structs[0];
		dist = DistanceSquared(ent.origin, guide.origin);
		for ( i=1; i<guide_structs.size; i++ )
		{
			new_dist = DistanceSquared(ent.origin, guide_structs[i].origin);
			if ( new_dist < dist )
			{
				guide = guide_structs[i];
				dist = new_dist;
			}
		}
		
		return guide.angles;
	}

	return (0, 0, 0);
}


//
//	Controls the lights on the teleporters
//		client-sided in case we do any flashing/blinking
teleporter_map_light( light_name, on_msg )
{
	level waittill( "pl1" );	// power lights on

	players = getlocalplayers();
	for ( p=0; p<players.size; p++ )
	{
		lamps = GetEntArray( p, light_name, "targetname" );
		for ( i=0; i<lamps.size; i++ )
		{ 
			lamps[i] SetModel( "zombie_zapper_cagelight_red" );
			if(isDefined(lamps[i].fx))
			{
				lamps[i].fx delete();
			}
//			lamps[i].fx = spawn(p, lamps[i].origin, "script_model" );
//			lamps[i].fx setmodel("tag_origin");
//			lamps[i].fx.angles = lamps[i].angles+(-90,0,0);
//			lamps[i].fx.angles = (45,0,0);
angles = lamps[i].angles;
println( light_name + "- model angles : "+angles[0]+", "+angles[1]+", "+angles[2] );
//			playfxontag(p, level._effect["zapper_light_notready"],lamps[i].fx,"tag_origin");

			angles = get_guide_struct_angles( lamps[i] );			
			lamps[i].fx = SpawnFx( p, level._effect["zapper_light_notready"], lamps[i].origin, 0, AnglesToForward( angles ) );
			TriggerFX(lamps[i].fx);
		}
	}
	
	// wait until it is linked
	level waittill( on_msg );

	players = getlocalplayers();
	for ( p=0; p<players.size; p++ )
	{
		lamps = GetEntArray( p, light_name, "targetname" );
		for ( i=0; i<lamps.size; i++ )
		{
			lamps[i] SetModel( "zombie_zapper_cagelight_green" );
			if(isDefined(lamps[i].fx))
			{
				lamps[i].fx delete();
			}
			angles = get_guide_struct_angles( lamps[i] );			
			lamps[i].fx = SpawnFx( p, level._effect["zapper_light_ready"], lamps[i].origin, 0, AnglesToForward( angles ) );
			TriggerFX(lamps[i].fx);
		}
	}
}

//
//	The map light for the receiver is special.  It acts differently than the teleporter lights
//
teleporter_map_light_receiver()
{
	level waittill( "pl1" );	// power lights on

	level thread teleporter_map_light_receiver_flash();
	
	players = getlocalplayers();
	for ( p=0; p<players.size; p++ )
	{
		lamps = GetEntArray( p, "sm_light_tp_r", "targetname" );
		for ( i=0; i<lamps.size; i++ )
		{
			lamps[i] SetModel( "zombie_zapper_cagelight_red" );
			if(isDefined(lamps[i].fx))
			{
				lamps[i].fx delete();
			}
			angles = get_guide_struct_angles( lamps[i] );
			lamps[i].fx = SpawnFx( p, level._effect["zapper_light_notready"], lamps[i].origin, 0, AnglesToForward( angles ) );
			TriggerFX(lamps[i].fx);
		}
	}

	level waittill( "pap1" );	// Pack-a-Punch On
	wait( 1.5 );	// dramatic pause
	
	level.map_light_receiver_on = true;
	players = getlocalplayers();
	for ( p=0; p<players.size; p++ )
	{
		lamps = GetEntArray( p, "sm_light_tp_r", "targetname" );
		for ( i=0; i<lamps.size; i++ )
		{
			lamps[i] SetModel( "zombie_zapper_cagelight_green" );
			if(isDefined(lamps[i].fx))
			{
				lamps[i].fx delete();
			}
			angles = get_guide_struct_angles( lamps[i] );			
			lamps[i].fx = SpawnFx( p, level._effect["zapper_light_ready"], lamps[i].origin, 0, AnglesToForward( angles ) );
			TriggerFX(lamps[i].fx);
		}
	}
}


//
//	When the players try to link teleporters, we need to flash the light
//
teleporter_map_light_receiver_flash()
{
	level endon( "pap1" );	// Pack-A-Punch machine is on
	level waittill( "TRf" );	// Teleporter Receiver map light flash
	
	// After you have started, then you can end when you get a stop command.
	//	Putting it after you start prevents premature stopping 
	level endon( "TRs" );		// Teleporter receiver map light stop 
	level thread teleporter_map_light_receiver_stop();
	
	while (1)
	{
		players = getlocalplayers();
		for ( p=0; p<players.size; p++ )
		{
			lamps = GetEntArray( p, "sm_light_tp_r", "targetname" );
			for ( i=0; i<lamps.size; i++ )
			{
				lamps[i] SetModel( "zombie_zapper_cagelight_red" );
				if(isDefined(lamps[i].fx))
				{
					lamps[i].fx delete();
				}
				angles = get_guide_struct_angles( lamps[i] );
				lamps[i].fx = SpawnFx( p, level._effect["zapper_light_notready"], lamps[i].origin, 0, AnglesToForward( angles ) );
				TriggerFX(lamps[i].fx);
			}
		}
		wait( 0.5 );

		players = getlocalplayers();
		for ( p=0; p<players.size; p++ )
		{
			lamps = GetEntArray( p, "sm_light_tp_r", "targetname" );
			for ( i=0; i<lamps.size; i++ )
			{
				lamps[i] SetModel( "zombie_zapper_cagelight" );
				if(isDefined(lamps[i].fx))
				{
					lamps[i].fx delete();
				}
			}
		}
		wait( 0.5 );
	}
}


//
//	When you stop flashing, put the correct model back on
teleporter_map_light_receiver_stop()
{
	level endon( "pap1" );	// Pack-A-Punch machine is on

	level waittill( "TRs" );	// teleporter receiver light stop 

	players = getlocalplayers();
	for ( p=0; p<players.size; p++ )
	{
		lamps = GetEntArray( p, "sm_light_tp_r", "targetname" );
		for ( i=0; i<lamps.size; i++ )
		{
			lamps[i] SetModel( "zombie_zapper_cagelight_red" );
			if(isDefined(lamps[i].fx))
			{
				lamps[i].fx delete();
			}
			angles = get_guide_struct_angles( lamps[i] );
			lamps[i].fx = SpawnFx( p, level._effect["zapper_light_notready"], lamps[i].origin, 0, AnglesToForward( angles ) );
			TriggerFX(lamps[i].fx);
		}
	}

	// listen for another flash message
	level thread teleporter_map_light_receiver_flash();
}