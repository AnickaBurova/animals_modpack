local version = "0.0.17"


local cow_groups = {
						not_in_creative_inventory=1
					}

local selectionbox_cow = {-1.5, -1.5, -0.75, 1.5, 0.6, 0.75}
local selectionbox_steer = {-1.5*1.1, -1.5*1.1, -0.75*1.1, 1.5*1.1, 0.6*1.1, 0.75*1.1}
local selectionbox_baby_calf = {-0.8, -0.8, -0.5, 0.8, 0.8, 0.5}

local modpath = minetest.get_modpath("animal_cow")

cow_prototype = {   
		name="cow",
		modname="animal_cow",
	
		generic = {
					description="Cow",
					base_health=40,
					kill_result="animalmaterials:meat_beef 5",
					armor_groups= {
						fleshy=2,
					},
					groups = cow_groups,
					envid = "meadow"
				},				
		movement =  {
					default_gen="none",
					min_accel=0.05,
					max_accel=0.1,
					max_speed=0.3,
					min_speed=0.025,
					pattern="stop_and_go",
					canfly=false,
					},		
		harvest = {	
					tool="vessels:drinking_glass",
					tool_consumed=true,
					result="animalmaterials:milk", 
					transforms_to="",
					min_delay=60,
				  	},
		catching = {
					tool="animalmaterials:lasso",
					consumed=true,
					},
		spawning = {
					rate=0.001,
					density=200,
					algorithm="big_willow_mapgen",
					height=2
					},
		sound = {
					random = {
								name="Mudchute_cow_1",
								min_delta = 30,
								chance = 0.5,
								gain = 1,
								max_hear_distance = 10,
								},
					},
		states = {
				{ 
				name = "walking",
				movgen = "probab_mov_gen",
				typical_state_time = 180,
				chance = 0.50,
				animation = "walk",
				},
				{
				name = "eating",
				movgen = "none",
				typical_state_time = 45,
				chance = 0.25,
				animation = "eat",
				},
				{
				name = "default",
				movgen = "none",
				typical_state_time = 45,
				chance = 0.25,
				animation = "stand",
				graphics = {
					sprite_scale={x=4,y=4},
					sprite_div = {x=6,y=1},
					visible_height = 2,
				},
				graphics_3d = {
					visual = "mesh",
					mesh = "animal_cow.b3d",
					textures = {"cow_mesh.png"},
					collisionbox = selectionbox_cow,
					visual_size= {x=1,y=1,z=1},
					},
				},
			},
		animation = {
				walk = {
					start_frame = 170,
					end_frame   = 250,
					},
				stand = {
					start_frame = 0,
					end_frame   = 80,
					},
				eat = {
					start_frame = 81,
					end_frame   = 169,
					},
			}
		}
		
steer_prototype = {   
        name="steer",
        modname="animal_cow",
    
        generic = {
                    description="Steer",
                    base_health=40,
                    kill_result="animalmaterials:meat_beef 5",
                    armor_groups= {
                        fleshy=2,
                    },
                    groups = cow_groups,
                    envid = "meadow"
                },              
        movement =  {
                    default_gen="probab_mov_gen",
                    min_accel=0.05,
                    max_accel=0.1,
                    max_speed=0.3,
                    min_speed=0.025,
                    pattern="stop_and_go",
                    canfly=false,
                    },      
        harvest = nil,
        catching = {
                    tool="animalmaterials:lasso",
                    consumed=true,
                    },
        spawning = {
                    rate=0.001,
                    density=200,
                    algorithm="big_willow_mapgen",
                    height=2
                    },
        sound = {
                    random = {
                                name="Mudchute_cow_1",
                                min_delta = 30,
                                chance = 0.5,
                                gain = 1,
                                max_hear_distance = 10,
                                },
                    },
        states = {
				{ 
				name = "walking",
				movgen = "probab_mov_gen",
				typical_state_time = 180,
				chance = 0.50,
				animation = "walk",
				},
				{
				name = "eating",
				movgen = "none",
				typical_state_time = 45,
				chance = 0.25,
				animation = "eat",
				},
				{
				name = "default",
				movgen = "none",
				typical_state_time = 45,
				chance = 0.25,
				animation = "stand",
				graphics = {
					sprite_scale={x=4,y=4},
					sprite_div = {x=6,y=1},
					visible_height = 2,
				},
				graphics_3d = {
					visual = "mesh",
					mesh = "animal_steer.b3d",
					textures = {"steer_mesh.png"},
					collisionbox = selectionbox_cow,
					visual_size= {x=1,y=1,z=1},
					},
				},
			},
		animation = {
				walk = {
					start_frame = 170,
					end_frame   = 250,
					},
				stand = {
					start_frame = 0,
					end_frame   = 80,
					},
				eat = {
					start_frame = 81,
					end_frame   = 169,
					},
			}
        }
        
baby_calf_f_prototype = {   
        name="baby_calf_f",
        modname="animal_cow",
    
        generic = {
                    description="Baby Calf female",
                    base_health=40,
                    kill_result="animalmaterials:meat_beef 2",
                    armor_groups= {
                        fleshy=2,
                    },
                    groups = cow_groups,
                    envid = "meadow"
                },              
        movement =  {
                    default_gen="probab_mov_gen",
                    min_accel=0.025,
                    max_accel=0.15,
                    max_speed=0.2,
                    min_speed=0.025,
                    pattern="stop_and_go",
                    canfly=false,
                    },      
        catching = {
                    tool="animalmaterials:lasso",
                    consumed=true,
                    },
        auto_transform = {
                    result="animal_cow:cow__default",
                    delay=7200,
                    },
        combat         = nil,
    
        spawning = {
                    rate=0.001,
                    density=200,
                    algorithm="none",
                    height=2
                    },
        sound = {
                    random = {
                                name="Mudchute_cow_1",
                                min_delta = 30,
                                chance = 0.5,
                                gain = 1,
                                max_hear_distance = 10,
                                },
                    },
        animation = {
				walk = {
					start_frame = 1,
					end_frame   = 40,
					},
				stand = {
					start_frame = 41,
					end_frame   = 80,
					},
			},
		states = {
				{ 
				name = "walking",
				movgen = "probab_mov_gen",
				typical_state_time = 180,
				chance = 0.50,
				animation = "walk",
				},
				{
				name = "default",
				movgen = "none",
				typical_state_time = 45,
				chance = 0.0,
				animation = "stand",
				graphics = {
					sprite_scale={x=2,y=2},
					sprite_div = {x=6,y=1},
					visible_height = 1,
					},
				graphics_3d = {
					visual = "mesh",
					mesh = "animal_calf.b3d",
					textures = {"animal_calf_mesh.png"},
					collisionbox = selectionbox_baby_calf,
					visual_size= {x=1,y=1,z=1},
					},
				},
			},
        }
        
baby_calf_m_prototype = {   
        name="baby_calf_m",
        modname="animal_cow",
    
        generic = {
                    description="Baby Calf male",
                    base_health=40,
                    kill_result="animalmaterials:meat_beef 2",
                    armor_groups= {
                        fleshy=2,
                    },
                    groups = cow_groups,
                    envid = "meadow"
                },              
        movement =  {
                    min_accel=0.025,
                    max_accel=0.15,
                    max_speed=0.2,
                    min_speed=0.025,
                    pattern="stop_and_go",
                    canfly=false,
                    },      
        harvest = nil,
        catching = {
                    tool="animalmaterials:lasso",
                    consumed=true,
                    },
        auto_transform = {
                    result="animal_cow:steer__default",
                    delay=7200,
                    },
        spawning = {
                    rate=0.001,
                    density=200,
                    algorithm="none",
                    height=2
                    },
        sound = {
                    random = {
                                name="Mudchute_cow_1",
                                min_delta = 30,
                                chance = 0.5,
                                gain = 1,
                                max_hear_distance = 10,
                                },
                    },
		animation = {
				walk = {
					start_frame = 1,
					end_frame   = 40,
					},
				stand = {
					start_frame = 41,
					end_frame   = 80,
					},
			},
		states = {
				{ 
				name = "walking",
				movgen = "probab_mov_gen",
				typical_state_time = 180,
				chance = 0.50,
				animation = "walk",
				},
				{
				name = "default",
				movgen = "none",
				typical_state_time = 45,
				chance = 0.0,
				animation = "stand",
				graphics = {
					sprite_scale={x=2,y=2},
					sprite_div = {x=6,y=1},
					visible_height = 1,
					},
				graphics_3d = {
					visual = "mesh",
					mesh = "animal_calf.b3d",
					textures = {"animal_calf_mesh.png"},
					collisionbox = selectionbox_baby_calf,
					visual_size= {x=1,y=1,z=1},
					},
				},
			},
        }

--register with animals mod
print ("Adding "..baby_calf_f_prototype.name)
animals_add_animal(baby_calf_f_prototype)
print ("Adding "..baby_calf_m_prototype.name)
animals_add_animal(baby_calf_m_prototype)
print ("Adding "..cow_prototype.name)
animals_add_animal(cow_prototype)
print ("Adding "..steer_prototype.name)
animals_add_animal(steer_prototype)
print ("animal_cow mod version " .. version .. " loaded")