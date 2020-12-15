import scripts.CommonVars.makeShaped as makeShaped;

print("--- loading ActuallyAdditions.zs ---");
	
# *======= Empowerer =======*
	
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:1> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:2> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:3> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:4> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:5> * 4);



//Empowered Restonia
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, 
  <actuallyadditions:block_crystal>, 
  <gregtech:meta_item_1:8085>, //Almandine
  <gregtech:meta_item_1:10237>, //Red Alloy Ingot
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "sulfuric_acid", Amount: 1000}}), 
  <extendedcrafting:material:19>, 1000000, 400); //Conflux Component

//Empowered Restonia Gear
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_restonia_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_restonia_gear>, 
  <moreplates:restonia_gear>, 
  <gregtech:compressed_4:1>, //Block of Almandine
  <gregtech:compressed_10:15>, //Block of Red Alloy
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "tritium", Amount: 1000}}), 
  <extendedcrafting:material:13>, 1000000, 400); //Conflux Catalyst

//Empowered Palis 
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, 
  <actuallyadditions:block_crystal:1>, 
  <gregtech:meta_item_1:8157>, //Sapphire
  <thermalfoundation:material:136>, //Mana Infused Ingot
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), 
  <extendedcrafting:material:16>, 1000000, 400); //Elite Component

//Empowered Palis Gear
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_palis_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_palis_gear>, 
  <moreplates:palis_gear>, 
  <gregtech:compressed_7:11>, //Block of Sapphire
  <thermalfoundation:storage:8>, //Block of Mana Infused Metal
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "osmiridium", Amount: 1000}}), 
  <extendedcrafting:material:10>, 1000000, 400); //Elite Catalyst

//Empowered Enori
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, 
  <actuallyadditions:block_crystal:5>, 
  <gregtech:meta_item_1:8226>, //Apatite
  <enderio:item_alloy_ingot:8>, //End Steel
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "helium", Amount: 1000}}), 
  <extendedcrafting:material:14>, 1000000, 400); //Basic Component

//Empowered Enori Gear
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_enori_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_enori_gear>, 
  <moreplates:enori_gear>, 
  <gregtech:compressed_10:5>, //Apatite Block
  <enderio:block_alloy:8>, //End Steel Block
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "helium3", Amount: 1000}}), 
  <extendedcrafting:material:8>, 1000000, 400); //Basic Catalyst

//Empowered Void Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>,
  <actuallyadditions:block_crystal:3>, 
  <actuallyadditions:item_misc:5>, //Black Quartz
  <enderio:item_alloy_ingot:6>, //Dark Steel
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "carbon", Amount: 1000}}), 
  <extendedcrafting:material:15>, 1000000, 400); //Advanced Component

//Empowered Void Crystal Gear
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_void_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_void_gear>, 
  <moreplates:void_gear>, 
  <actuallyadditions:block_misc:2>, //Block of Black Quartz
  <enderio:block_alloy:6>, //Dark Stiel Block
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "naquadria", Amount: 1000}}), 
  <extendedcrafting:material:9>, 1000000, 400); //Advanced Catalyst

//Empowered Diamatine
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>,
  <actuallyadditions:block_crystal:2>, 
  <extendedcrafting:material:40>, //Endest Star
  <extendedcrafting:material:24>, //Crystaltine Ingot
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "nitrogen_dioxide", Amount: 1000}}), 
  <extendedcrafting:material:18>, 1000000, 400); //Crystaltine Component

//Empowered Diamatine Gear
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_diamatine_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_diamatine_gear>, 
  <moreplates:diamatine_gear>, 
  <extendedcrafting:storage:6>, //Block of Endest Stars
  <extendedcrafting:storage:3>, //Block of Crystaltine
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "noble_gases", Amount: 1000}}), 
  <extendedcrafting:material:12>, 1000000, 400); //Crystaltine Catalyst

//Empowered Emerald
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>,
  <actuallyadditions:block_crystal:4>,
  <contenttweaker:stabilizeduranium>,
  <enderio:item_alloy_ingot:2>, //Vibrant Alloy
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "argon", Amount: 1000}}),
  <extendedcrafting:material:17>, 1000000, 400); //Ultimate Component

//Empowered Emerald Gear
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_emeradic_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<moreplates:empowered_emeradic_gear>, 
  <moreplates:emeradic_gear>, 
  <gregtech:compressed_3:12>, // Uranium 238 Block
  <enderio:block_alloy:2>, //Vibrant Alloy Block 
  <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "krypton", Amount: 1000}}),
  <extendedcrafting:material:11>, 1000000, 400); //Ultimate Catalyst
	
//Snad	
recipes.remove(<snad:snad>);
recipes.remove(<snad:snad:1>);
makeShaped("of_snad", <snad:snad>,
    [" S ",
     " S ",
     "   "],
    { S : <extrautils2:compressedsand:1> //Compressed Sand
      });

//Long Range Breaker
recipes.remove(<actuallyadditions:block_directional_breaker>);
makeShaped("of_long_range_breaker", <actuallyadditions:block_directional_breaker>,
    ["PDP",
     "BBB",
     "PEP"],
    { P : <gregtech:meta_item_1:12702>, //Vibrant Alloy Plate
      D : <actuallyadditions:block_crystal:2>, //Diamantine Block
      E : <actuallyadditions:block_crystal:4>, //Emeradic Block
      B : <actuallyadditions:block_breaker> //Auto-Breaker
      });

//AA Ender Pearl Block
recipes.remove(<actuallyadditions:block_misc:6>);

//Phantom Face	
recipes.remove(<actuallyadditions:block_phantomface>);	
makeShaped("of_phantomface", <actuallyadditions:block_phantomface>,
    [" C ",
     "DED",
     " A "],
    { C : <ore:chestWood>, //Chest
      D : <actuallyadditions:item_crystal_empowered:2>, //Empowered Diamantine
      E : <gregtech:compressed_9:14>, //Enderpearl Block
      A : <actuallyadditions:item_misc:8> //Advanced Coil
      });
	
//AA Iron Casing
recipes.remove(<actuallyadditions:block_misc:9>);
makeShaped("of_aluminum_casing", <actuallyadditions:block_misc:9>,
    ["PPP",
     "PQP",
     "PPP"],
    { P : <gregtech:meta_item_1:12001>, //Aluminum Plate
      Q : <actuallyadditions:item_misc:5> //Black Quartz
      });
<actuallyadditions:block_misc:9>.displayName = "Aluminium Casing";

//AA Atomic Reconstructor	
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);	
makeShaped("of_atomic_reconstructor", <actuallyadditions:block_atomic_reconstructor>,
    ["PPE",
     "PCL",
     "PPE"],
    { P : <gregtech:meta_item_1:12035>, //Lead Plate
      C : <actuallyadditions:block_misc:9>, //Aluminum Casing
      E : <gregtech:meta_item_1:32681> //MV Emitter
       });

//Display Stand
recipes.remove(<actuallyadditions:block_display_stand>);	
makeShaped("of_display_stand", <actuallyadditions:block_display_stand>,
    ["RPR",
     "PCP",
     "RPR"],
    { R : <gregtech:meta_item_1:14704>, //Dark Steel Rod
      P : <gregtech:meta_item_1:12702>, //Vibrant Plate
      C : <actuallyadditions:block_misc:9> //Aluminum casing
      });

//Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);	
makeShaped("of_empowerer", <actuallyadditions:block_empowerer>,
    ["PBP",
     "BDB",
     "PBP"],
    { B : <actuallyadditions:block_crystal:5>, //Enori Crystal Block
      D : <actuallyadditions:block_display_stand>, //Display Stand
      P : <gregtech:meta_item_1:12300> //Tungstencarbide Plate
      });

//Basic Coil
recipes.remove(<actuallyadditions:item_misc:7>);	
makeShaped("of_basic_coil", <actuallyadditions:item_misc:7>,
    [" CR",
     "CRC",
     "RC "],
    { R : <actuallyadditions:item_crystal>, //Restonia Crystal
      D : <gregtech:cable:700> //Conductive Iron Wire
      });

//Advanced Coil
recipes.remove(<actuallyadditions:item_misc:8>);	
makeShaped("of_advanced_coil", <actuallyadditions:item_misc:8>,
    ["WWW",
     "WCW",
     "WWW"],
    { W : <gregtech:cable:701>, //Energetic Alloy Wire
      D : <actuallyadditions:item_misc:7> //Basic Coil
      });

//Farmer
recipes.remove(<actuallyadditions:block_farmer>);
makeShaped("of_farmer", <actuallyadditions:block_farmer>,
    ["VSV",
     "DCD",
     "VDV"],
    { V : <actuallyadditions:block_crystal:3>, //Void Crystal Block
      S : <minecraft:wheat_seeds>, //Seeds
      D : <enderio:item_material:73>, //Dark Bimetal Gear
      C : <actuallyadditions:block_misc:9> //Aluminum Casing
      });

//Drill
recipes.remove(<actuallyadditions:item_drill:3>);
makeShaped("of_aa_drill", <actuallyadditions:item_drill:3>,
    ["VDT",
     "GCD",
     "EGV"],
    { V : <actuallyadditions:block_crystal:3>, //Void Crystal Block
      T : <gregtech:meta_item_2:8111>, //Diamond Drill Tip
      D : <actuallyadditions:block_crystal:2>, //Diamantine Block
      C : <actuallyadditions:item_misc:16>, //Drill Core
      G : <gregtech:meta_item_2:26701>, //Energetic Alloy Gear
      E : <enderio:block_alloy:1> //Energetic Alloy Block
      });	
	
//Drill Core
recipes.remove(<actuallyadditions:item_misc:16>);
<actuallyadditions:item_misc:16>.addTooltip(format.red("Acquired by exploration of Lost Cities buildings or vanilla dungeons."));
<actuallyadditions:item_misc:16>.addTooltip(format.red("Also can be purchased for Omnicoins."));

//Vertical Digger	
recipes.remove(<actuallyadditions:block_miner>);
makeShaped("of_vertical_digger", <actuallyadditions:block_miner>,
    ["CGC",
     "VTV",
     "CAC"],
    { V : <actuallyadditions:block_crystal:3>, //Void Crystal Block
      A : <actuallyadditions:item_drill:*>, //AA Drill
      T : <thermalinnovation:drill:2>, //Thermal Drill
      C : <actuallyadditions:block_misc:9>, //Aluminum Casing
      G : <gregtech:meta_tool:23> //GTCE Drill
      });	
	
//Ender Casing
recipes.remove(<actuallyadditions:block_misc:8>);	
makeShaped("of_ender_casing", <actuallyadditions:block_misc:8>,
    ["PVP",
     "VQV",
     "PVP"],
    { V : <gregtech:meta_item_1:12703>, //Vibrant Alloy Plate
      P : <gregtech:meta_item_1:12218>, //Ender Pearl Plate
      Q : <actuallyadditions:block_misc:2> //Block of Black Quartz
      });
	
//Medium Crate
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
makeShaped("of_medium_crate", <actuallyadditions:block_giant_chest_medium>,
    ["DWD",
     "CWC",
     "DWD"],
    { D : <actuallyadditions:block_crystal:2>, //Diamantine Block
      W : <ore:plankWood>, //Wood Plank
      C : <actuallyadditions:block_giant_chest> //Small Crate
      });

//Large Crate
recipes.remove(<actuallyadditions:block_giant_chest_large>);
makeShaped("of_large_crate", <actuallyadditions:block_giant_chest_medium>,
    ["DWD",
     "CCC",
     "DWD"],
    { D : <actuallyadditions:block_crystal_empowered:2>, //Empowered Diamantine Block
      W : <ore:plankWood>, //Wood Plank
      C : <actuallyadditions:block_giant_chest_medium> //Medium Crate
      });
	
	
//Solar
recipes.remove(<actuallyadditions:block_furnace_solar>);
makeShaped("of_aa_solar", <actuallyadditions:block_furnace_solar>,
    ["   ",
     "CSC",
     " B "],
    { C : <extrautils2:ingredients>, //Resonating Redstone Crystal
      S : <solarflux:solar_panel_1>, //Solar Panel 1
      B : <extrautils2:decorativesolid:3> //Stoneburnt
      });
	
	
	
mods.jei.JEI.addDescription(<actuallyadditions:item_misc:13>, "Canola can be turned into Canola Oil via a Canola Press. This is a somewhat slow machine and requres RF to function");
	
	
print("--- ActuallyAdditions.zs initialized ---");