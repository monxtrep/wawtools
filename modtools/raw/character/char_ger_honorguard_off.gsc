// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	self setModel("char_ger_honorgd_body1_2");
	self.headModel = "char_ger_honorgd_head4_4";
	self attach(self.headModel, "", true);
	self.hatModel = "char_ger_waffen_officercap1";
	self attach(self.hatModel);
	self.gearModel = "char_ger_honorgd_gear1";
	self attach(self.gearModel);
	self.voice = "german";
	self.torsoDmg1 = "char_ger_honorgd_body1_2_g_upclean";
	self.torsoDmg2 = codescripts\character::randomElement(xmodelalias\char_ger_hnrgrd_body1_2_g_rarmoffalias::main());
	self.torsoDmg3 = codescripts\character::randomElement(xmodelalias\char_ger_hnrgrd_body1_2_g_larmoffalias::main());
	self.torsoDmg4 = codescripts\character::randomElement(xmodelalias\char_ger_hnrgrd_body1_2_g_torsoalias::main());
	self.torsoDmg5 = "char_ger_honorgd_body1_2_g_behead";
	self.legDmg1 = "char_ger_honorgd_body1_2_g_lowclean";
	self.legDmg2 = codescripts\character::randomElement(xmodelalias\char_ger_hnrgrd_body1_2_g_rlegoffalias::main());
	self.legDmg3 = codescripts\character::randomElement(xmodelalias\char_ger_hnrgrd_body1_2_g_llegoffalias::main());
	self.legDmg4 = codescripts\character::randomElement(xmodelalias\char_ger_hnrgrd_body1_2_g_legsoffalias::main());
	self.gibSpawn1 = "char_ger_honorgd_body1_g_rarmspawn";
	self.gibSpawnTag1 = "J_Elbow_RI";
	self.gibSpawn2 = "char_ger_honorgd_body1_g_larmspawn";
	self.gibSpawnTag2 = "J_Elbow_LE";
	self.gibSpawn3 = "char_ger_honorgd_body1_g_rlegspawn";
	self.gibSpawnTag3 = "J_Knee_RI";
	self.gibSpawn4 = "char_ger_honorgd_body1_g_llegspawn";
	self.gibSpawnTag4 = "J_Knee_LE";
}

precache()
{
	precacheModel("char_ger_honorgd_body1_2");
	precacheModel("char_ger_honorgd_head4_4");
	precacheModel("char_ger_waffen_officercap1");
	precacheModel("char_ger_honorgd_gear1");
	precacheModel("char_ger_honorgd_body1_2_g_upclean");
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_rarmoffalias::main());
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_larmoffalias::main());
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_torsoalias::main());
	precacheModel("char_ger_honorgd_body1_2_g_behead");
	precacheModel("char_ger_honorgd_body1_2_g_lowclean");
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_rlegoffalias::main());
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_llegoffalias::main());
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_legsoffalias::main());
	precacheModel("char_ger_honorgd_body1_g_rarmspawn");
	precacheModel("char_ger_honorgd_body1_g_larmspawn");
	precacheModel("char_ger_honorgd_body1_g_rlegspawn");
	precacheModel("char_ger_honorgd_body1_g_llegspawn");
	precacheModel("char_ger_honorgd_body1_2_g_upclean");
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_rarmoffalias::main());
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_larmoffalias::main());
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_torsoalias::main());
	precacheModel("char_ger_honorgd_body1_2_g_behead");
	precacheModel("char_ger_honorgd_body1_2_g_lowclean");
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_rlegoffalias::main());
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_llegoffalias::main());
	codescripts\character::precacheModelArray(xmodelalias\char_ger_hnrgrd_body1_2_g_legsoffalias::main());
	precacheModel("char_ger_honorgd_body1_g_rarmspawn");
	precacheModel("char_ger_honorgd_body1_g_larmspawn");
	precacheModel("char_ger_honorgd_body1_g_rlegspawn");
	precacheModel("char_ger_honorgd_body1_g_llegspawn");
}
