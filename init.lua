minetest.register_tool("admintools:mastersword", {
	privs = {admintools = true},
	description = "Master sword",
	inventory_image = "tool_mastersword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=1000},
	},
})

minetest.register_tool("admintools:multitool", {
	description = "Multitool",
	privs = {admintools = true},
	range = 20000,
	inventory_image = "tool_masterpick.png",
	tool_capabilities = {
		full_punch_interval = 100,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=100.0, [2]=100.0, [3]=100, [4]=100.0, [5]=100.0, [6]=100, [7]=100.0, [8]=100.0, [9]=100, [10]=100.0, [11]=100.0, [0]=100}, uses=500, maxlevel=70000},
			snappy = {times={[1]=100.0, [2]=100.0, [3]=100, [4]=100.0, [5]=100.0, [6]=100, [7]=100.0, [8]=100.0, [9]=100, [10]=100.0, [11]=100.0, [0]=100}, uses=500, maxlevel=70000},
			crumbly={maxlevel=20000, uses=2000, times={[1]=160, [2]=120, [3]=180}},
			dig_immediate = {times={[1]=100.0, [2]=100.0, [3]=100, [4]=100.0, [5]=100.0, [6]=100, [7]=100.0, [8]=100.0, [9]=100, [10]=100.0, [11]=100.0, [0]=100}, uses=500, maxlevel=70000},
		},
		groups = {dig_immediate = 200, mesecon = 2, tnt = 1, flammable = 1},
		damage_groups = {fleshy=5},
	},
})

minetest.register_privilege("admintools", "admintools")
