import scripts.CommonVars.makeShaped as makeShaped;
import scripts.CommonVars.makeExtremeRecipe5 as makeExtremeRecipe5;

//XU2 Machine Block
recipes.removeByRecipeName("extrautils2:machine_base");
makeShaped("of_machine_block", <extrautils2:machine>,
    ["PPP",
     "PQP",
     "PPP"],
    { P : <gregtech:meta_item_1:12184>, //Steel Plate
      Q : <actuallyadditions:item_misc:5> //Black Quartz
      });

//XU2 Generators
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));	


//Furnace Generator
makeShaped("of_furnace_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
    ["WWW",
     "WFW",
     "RRR"],
    { W : <gregtech:meta_item_1:12197>, //Wrought Iron Plate
      F : <minecraft:furnace>, //Furnace
      R : <gregtech:meta_item_1:12237> //Red Alloy Plate
      });

//Survivalist Generator
makeShaped("of_survivalist_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
    ["CCC",
     "CBC",
     "RGR"],
    { C : <minecraft:cobblestone>, //Cobblestone
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator"}) //Furnace Gen
      });

//Survivalist Generator
makeShaped("of_culinary_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <minecraft:potato>, //Potato
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}) //Slime Gen
      });
	
//Magmatic Generator
makeShaped("of_lava_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
    ["LPL",
     "PBP",
     "RGR"],
    { P : <gregtech:meta_item_1:12026>, //Gold Plate
      L : <minecraft:lava_bucket:*>, //Lava Bucket
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator"}) //Furnace Gen
      });

//Heated Redstone Generator
makeShaped("of_redstone_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}),
    ["RCR",
     "RBR",
     "RGR"],
    { C : <gregtech:compressed_11>, //Cobalt Brass Block
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}) //Magmatic Gen
      });

//Ender Generator
makeShaped("of_ender_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <gregtech:meta_item_1:12218>, //Enderpearl Plate
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator"}) //Furnace Gen
      });

//Potion Generator
makeShaped("of_potion_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <minecraft:brewing_stand:*>, //Brewing Stand
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator"}) //Furnace Gen
      });

//Pink Generator
makeShaped("of_pink_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <ore:dyePink>, //Brewing Stand
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}) //Potion Gen
      });

//Overclocked Generator
makeShaped("of_overclocked_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <extrautils2:redstoneclock>, //Redstone Clock
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}) //TNT Gen
      });

//Explosive Generator
makeShaped("of_explosive_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}),
    ["PCP",
     "PBP",
     "RGR"],
    { P : <gregtech:meta_item_1:12701>, //Energetic Alloy Plate
      C : <gregtech:compressed_14:14>, //Block Of Paper
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator"}) //Furnace Gen
      });

//Slimey Generator
makeShaped("of_slimey_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <minecraft:slime>, //Slime Block
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator"}) //Furnace Gen
      });

//Death Generator
makeShaped("of_death_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
    ["PFP",
     "PBP",
     "RGR"],
    { P : <gregtech:meta_item_1:12712>, //End Steel Plate
      F : <enderio:item_material:42>, //Frank'N'Zombie
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}) //Frosty Gen
      });

//Disenchantment Generator
makeShaped("of_disenchant_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <minecraft:enchanting_table:*>, //Enchanting Table
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}) //Potion Gen
      });

//Halitosis Generator
makeShaped("of_halitosis_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}),
    ["PFP",
     "PBP",
     "RGR"],
    { P : <minecraft:purpur_block:*>, //Purpur Block
      F : <minecraft:end_rod:*>, //End Rod
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}) //Explosive Gen
      });

//Frosty Generator
makeShaped("of_frosty_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <minecraft:ice:*>, //Ice
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237>, //Red Alloy Plate
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator"}) //Furnace Gen
      });

//Draconic Generator
makeShaped("of_generator", <draconicevolution:generator>,
    ["PPP",
     "PBP",
     "RGR"],
    { P : <draconicevolution:draconium_ingot>, //Draconium Ingot
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:compressed_11>, //Block of Cobalt Brass
      G : <extrautils2:machine>.withTag({Type: "extrautils2:generator"}) //Furnace Gen
      });

//Netherstar Generator
makeShaped("of_netherstar_gen", <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}),
    ["PPP",
     "PBP",
     "RGR"],
    { P : <gregtech:meta_item_1:12331>, //Nether Star Plate
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:compressed_11>, //Block of Cobalt Brass
      G : <draconicevolution:generator> //Generator
      });

//Resonator
recipes.remove(<extrautils2:resonator>);
makeShaped("of_resonator", <extrautils2:resonator>,
    ["CRC",
     "RBR",
     "CRC"],
    { C : <extrautils2:ingredients>, //Resonating Redstone Crystal
      B : <extrautils2:machine>, //Machine Block
      R : <gregtech:meta_item_1:12237> //Red Alloy Plate
      });

recipes.remove(<extrautils2:passivegenerator>); 
recipes.remove(<extrautils2:passivegenerator:1>); 
recipes.remove(<extrautils2:passivegenerator:2>); 
recipes.remove(<extrautils2:passivegenerator:3>); 
recipes.remove(<extrautils2:passivegenerator:4>); 
recipes.remove(<extrautils2:passivegenerator:5>); 
recipes.remove(<extrautils2:passivegenerator:8>); 
recipes.remove(<extrautils2:chunkloader>);  

//GP Solar
makeShaped("of_gp_solar", <extrautils2:passivegenerator>,
    ["   ",
     " S ",
     "PCP"],
    { S : <solarflux:solar_panel_1>, //Solar Panel 1
      P : <extrautils2:decorativesolid:2>, //Polished Stone
      C : <extrautils2:ingredients> //Resonating Redstone Crystal
      });

//GP Lunar
makeShaped("of_gp_lunar", <extrautils2:passivegenerator:1>,
    [" L ",
     "LSL",
     " L "],
    { S : <extrautils2:passivegenerator>, //GP Solar Panel
      L : <extrautils2:ingredients:3> //Lunar Reactive Dust
      });
  
//Lava Mill
makeShaped("of_lava_mill", <extrautils2:passivegenerator:2>,
    ["SGS",
     "CHC",
     "SLS"],
    { S : <extrautils2:decorativesolid:3>, //Stoneburnt
      G : <extrautils2:ingredients:1>, //Redstone Gear
      C : <extrautils2:ingredients>, //Resonating Redstone Crystal
      H : <gregtech:machine:502>, //MV Machine Hull
      L : <armorplus:block_infused_lava_crystal> //Lava Crystal Block
      });
  
//Water Mill
makeShaped("of_water_mill", <extrautils2:passivegenerator:3>,
    ["SGS",
     "PHP",
     "SGS"],
    { S : <extrautils2:decorativesolid:3>, //Stoneburnt
      G : <extrautils2:ingredients:1>, //Redstone Gear
      P : <gregtech:meta_item_1:32611>, //MV Pump
      H : <gregtech:machine:502> //MV Machine Hull
      });
  
//Wind Mill 
makeShaped("of_wind_mill", <extrautils2:passivegenerator:4>,
    ["SCS",
     "RGH",
     "SCS"],
    { S : <extrautils2:decorativesolid:3>, //Stoneburnt
      C : <extrautils2:ingredients>, //Resonating Redstone Crystal
      R : <gregtech:meta_item_2:18184>, //Steel Rotor
      H : <gregtech:machine:502>, //MV Machine Hull
      G : <extrautils2:ingredients:1> //Redstone Gear
      });
  
//Fire Mill
makeShaped("of_fire_mill", <extrautils2:passivegenerator:5>,
    ["SGS",
     "CHC",
     "SWS"],
    { S : <extrautils2:decorativesolid:3>, //Stoneburnt
      C : <extrautils2:ingredients>, //Resonating Redstone Crystal
      W : <extrautils2:ingredients:13>, //Wireless RF Heating Coil
      H : <gregtech:machine:502>, //MV Machine Hull
      G : <extrautils2:ingredients:1> //Redstone Gear
      });
  
//Chunk Loader
makeShaped("of_extra_utils_chunk_load", <extrautils2:chunkloader>,
    ["RER",
     "RBR",
     " B "],
    { R : <gregtech:meta_item_1:14701>, //Energetic Alloy Rod
      B : <enderio:block_alloy:1>, //Energetic Alloy Block
      E : <extrautils2:ingredients:2> //Eye of Redstone
      });

//Dragon Mill
makeShaped("of_dragon_mill", <extrautils2:passivegenerator:8>,
    ["TTT",
     "RNR",
     "SRS"],
    { S : <extrautils2:decorativesolid:3>, //Stoneburnt
      T : <gregtech:compressed_3:10>, //Titanium Block
      R : <extrautils2:ingredients:2>, //Eye of Redstone
      N : <extendedcrafting:storage:2> //Nether Star Block
      });
  
//Iron Drum
recipes.removeByRecipeName("extrautils2:drum_256");
makeShaped("of_iron_drum", <extrautils2:drum:1>,
    ["WPW",
     "WCW",
     "WPW"],
    { W : <gregtech:meta_item_1:12197>, //Wrought Iron Plate
      C : <minecraft:cauldron:*>, //Cauldron
      R : <minecraft:heavy_weighted_pressure_plate:*> //Iron Pressure Plate
      });
  
//Reinforced Drum
recipes.removeByRecipeName("extrautils2:drum_4096");
makeShaped("of_reinforced_drum", <extrautils2:drum:1>,
    ["VSV",
     "VDV",
     "VSV"],
    { V : <gregtech:meta_item_1:12702>, //Vibrant Alloy Plate
      S : <gregtech:machine:2198>, //Stainless Steel Drum
      D : <extrautils2:drum:1> //Iron Drum
      });
  
//Demonic Drum
recipes.removeByRecipeName("extrautils2:drum_65536");
makeExtremeRecipe5(<extrautils2:drum:3>,
    ["BPPPB",
     "BTTTB",
     "BTDTB",
     "BTTTB",
     "BPPPB"],
    { B : <extrautils2:simpledecorative:1>, //Demon Metal Block
      P : <moreplates:demon_plate>, //Demon Metal Plate
      T : <gregtech:machine:2199>, //Titanium Drum
      D : <extrautils2:drum:2> //Reinforced Drum
      });   
