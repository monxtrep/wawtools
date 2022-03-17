// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_axis_ger_hol_fall_officer_pistol (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE ENEMYINFO
defaultmdl="char_ger_wrmcht_fullbody1"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
ENEMYINFO -- this AI when spawned will get a snapshot of perfect info about all enemies
*/
main()
{
	self.animTree = "";
	self.team = "axis";
	self.type = "human";
	self.accuracy = 0.2;
	self.health = 150;
	self.weapon = "stg44";
	self.secondaryweapon = "";
	self.sidearm = "walther";
	self.grenadeWeapon = "Stielhandgranate";
	self.grenadeAmmo = 0;

	self setEngagementMinDist( 256.000000, 0.000000 );
	self setEngagementMaxDist( 768.000000, 1024.000000 );

	character\char_ger_wrmcht_off::main();
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\char_ger_wrmcht_off::precache();

	precacheItem("stg44");
	precacheItem("walther");
	precacheItem("Stielhandgranate");
}
