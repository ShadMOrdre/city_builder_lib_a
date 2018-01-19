--[[
	{ -- example entry:
		-- the filename of the schematic
		scm="npc_house_level_3_1_180",
		-- title, description and level will be used instead of the filename in order to describe the building for the player
		title="Small house",
		descr="Founding a family",
		-- filename of what this building can be upgraded to;
		-- the upgrade building ought to have...
		-- ...the same dimensions
		-- ...provide exactly the same as this building (see provide-entry)
		-- ...have a level of exactly 1 higher (the first building starts at level 0)
		upgrade_to="npc_house_level_4_1_180",
		-- what this building provides (=single string)
		provides="housing",
		-- ..and the level at which it is provided (note: start at level 0);
		-- buildings at level 0 can be placed and built directly; all others need to be achieved through upgrading
		level=3,
		-- each building may require what other buildings provide at a certain level; in order to be allowed to build this
		-- particular building, you need one building that provides "lumberjack" at level 1 (or higher), another one that
		-- provides "pub" at level 1 (or higher), another one which provides "mine" at level 1, a "church" at at least
		-- level 2, and so on;
		requires={ lumberjack = 1, pub = 1, mine = 1, church = 2, farm = 0, mill = 0},
		-- this house holds beds for 3 inhabitants and can house that many npc (not used yet)
		inh=3,
		-- 2 of the npc living in this house can work elsewhere (not used yet)
		worker=2,
		-- 1 of them is a child (not used yet)
		children=1,
		-- how many npc need to work here in order for the building to function? (not used yet)
		needs_worker=1,
		-- which job does the building provide? (not used yet)
		job="houseowner"
	},
--]]

local citybuilder_structures_lib_a = {
	{scm="mgs_house_01", title="Alternate Housing 1",    descr="This will do pig.",  upgrade_to=nil,
		-- we need to get started somehow
		requires=nil,
		provides="housing", level=0, inh=1, worker=1, children=0},


	-- very tiny wooden cabin
	{scm="mgs_house_02", title="Alternate Housing 2",    descr="This is not the house you are living in.",             upgrade_to=nil,
		-- we need to get started somehow
		requires=nil,
		provides="housing", level=0, inh=1, worker=1, children=0},


	{scm="mgs_bldg_mansion_large_01_0_270", title="Large Mansion 01",    descr="Movin' on up.",  upgrade_to=nil,
		-- we need to get started somehow
		requires=nil,
		provides="housing", level=0, inh=1, worker=1, children=0},


	-- very tiny wooden cabin
	{scm="mgs_chapel_01_0_270", title="Chapel 01",    descr="Let us pray.",             upgrade_to=nil,
		-- we need to get started somehow
		requires=nil,
		provides="housing", level=0, inh=1, worker=1, children=0},


	};


local path = minetest.get_modpath( minetest.get_current_modname()).."/schems/";

for i,v in ipairs( citybuilder_structures_lib_a ) do
        citybuilder.add_blueprint( path, v, "citybuilder_structures_lib_a" );
end
