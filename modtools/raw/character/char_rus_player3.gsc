// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	self setModel("char_rus_guard_player_body1_2");
	self.headModel = "char_rus_guard_head3_3";
	self attach(self.headModel, "", true);
	self.hatModel = "char_rus_guard_ushankadown1";
	self attach(self.hatModel);
	self.gearModel = "char_rus_guard_body1_gear1_1";
	self attach(self.gearModel);
	self.voice = "russian";
}

precache()
{
	precacheModel("char_rus_guard_player_body1_2");
	precacheModel("char_rus_guard_head3_3");
	precacheModel("char_rus_guard_ushankadown1");
	precacheModel("char_rus_guard_body1_gear1_1");
}
