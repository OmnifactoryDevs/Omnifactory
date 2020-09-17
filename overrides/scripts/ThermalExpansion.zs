import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Fluid;

import mods.gregtech.recipe.RecipeMap;

/*
[[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>]]); */

//////////////////////////////////////////////////////////////
/////////////       Thermal Expansion       //////////////////
//////////////////////////////////////////////////////////////

//mods.jei.JEI.removeAndHide(<thermalfoundation:storage_resource:1>);
//mods.jei.JEI.removeAndHide(<thermalfoundation:material:802>);
//mods.jei.JEI.removeAndHide(<thermalexpansion:augment:288>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:256>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:257>);
//mods.jei.JEI.removeAndHide(<thermalexpansion:augment:258>);
//mods.jei.JEI.removeAndHide(<thermalexpansion:augment:273>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:303>);
//mods.jei.JEI.removeAndHide(<thermalexpansion:augment:304>);
//mods.jei.JEI.removeAndHide(<thermalexpansion:augment:336>);
//mods.jei.JEI.removeAndHide(<thermalexpansion:augment:369>);
//mods.jei.JEI.removeAndHide(<thermalexpansion:augment:324>);
//mods.jei.JEI.removeAndHide(<extendedcrafting:material:128>);
recipes.removeByRecipeName("extendedcrafting:diamond_nugget_to");
mods.jei.JEI.removeAndHide(<extendedcrafting:material:129>);
recipes.removeByRecipeName("extendedcrafting:emerald_nugget_to");
recipes.removeByRecipeName("actuallyadditions:recipes146");

//Redstone Servo
recipes.addShaped(<thermalfoundation:material:512>, [
	[<extrautils2:ingredients>,<gregtech:meta_item_1:12705>, <extrautils2:ingredients>],
	[null,<gregtech:meta_item_1:12705>, null],
	[<extrautils2:ingredients>,<gregtech:meta_item_1:12705>, <extrautils2:ingredients>]]);

// remove the wonky 2-tag version from JEI
mods.jei.JEI.removeAndHide(<thermalexpansion:tank>);

// replace tank recipe with 3-tag version
recipes.remove(<thermalexpansion:tank>);
recipes.addShaped(basictank, [
	[<gregtech:meta_item_1:12018>, <ore:blockGlassHardened>, <gregtech:meta_item_1:12018>],
	[<ore:blockGlassHardened>,null,<ore:blockGlassHardened>],
	[<gregtech:meta_item_1:12018>, <thermalfoundation:material:512>, <gregtech:meta_item_1:12018>]]);

recipes.addShaped(hardenedtank, [
	[<actuallyadditions:item_crystal:1>, <gregtech:meta_item_1:12126>, <actuallyadditions:item_crystal:1>],
	[<gregtech:meta_item_1:12126>,basictank.marked("tank"),<gregtech:meta_item_1:12126>],
	[<actuallyadditions:item_crystal:1>, <gregtech:meta_item_1:12126>, <actuallyadditions:item_crystal:1>]],
	function(out, ins, cInfo){
		return ins.tank.updateTag({Level: 1 as byte});
	} as crafttweaker.recipes.IRecipeFunction
	);

recipes.addShaped(reinforcedtank, [
	[<thermalfoundation:material:1026>, <gregtech:meta_item_1:12112>, <thermalfoundation:material:1026>],
	[<gregtech:meta_item_1:12112>,hardenedtank.marked("tank"),<gregtech:meta_item_1:12112>],
	[<thermalfoundation:material:1026>, <gregtech:meta_item_1:12112>, <thermalfoundation:material:1026>]],
	function(out, ins, cInfo) {
		return ins.tank.updateTag({Level: 2 as byte});
	} as crafttweaker.recipes.IRecipeFunction
	);

recipes.addShaped(signalumtank, [
	[<thermalfoundation:material:1027>, <thermalfoundation:material:357>, <thermalfoundation:material:1027>],
	[<thermalfoundation:material:357>,reinforcedtank.marked("tank"),<thermalfoundation:material:357>],
	[<thermalfoundation:material:1027>, <thermalfoundation:material:357>, <thermalfoundation:material:1027>]],
	function(out, ins, cInfo){
		return ins.tank.updateTag({Level: 3 as byte});
	} as crafttweaker.recipes.IRecipeFunction
	);

recipes.addShaped(resonanttank, [
	[<thermalfoundation:material:1024>, <thermalfoundation:material:359>, <thermalfoundation:material:1024>],
	[<thermalfoundation:material:359>,signalumtank.marked("tank"),<thermalfoundation:material:359>],
	[<thermalfoundation:material:1024>, <thermalfoundation:material:359>, <thermalfoundation:material:1024>]],
	function(out, ins, cInfo){
		return ins.tank.updateTag({Level: 4 as byte});
	} as crafttweaker.recipes.IRecipeFunction
	);


mods.jei.JEI.addItem(basictank);
mods.jei.JEI.addItem(hardenedtank);
mods.jei.JEI.addItem(reinforcedtank);
mods.jei.JEI.addItem(signalumtank);
mods.jei.JEI.addItem(resonanttank);

mods.jei.JEI.addItem(<gregtech:meta_tool:7>.withTag({RandomKey: -9206505693458694257 as long, CreatorMost: -5567380206174582019 as long, CraftingComponents: [{id: "gregtech:meta_item_1", Count: 1 as byte, Damage: 10152 as short}, {id: "gregtech:meta_item_1", Count: 1 as byte, Damage: 10152 as short}, {id: "gregtech:meta_item_1", Count: 1 as byte, Damage: 10152 as short}, {id: "gregtech:meta_item_1", Count: 1 as byte, Damage: 10152 as short}, {id: "minecraft:stick", Count: 1 as byte, Damage: 0 as short}, {id: "gregtech:meta_item_1", Count: 1 as byte, Damage: 10152 as short}, {id: "gregtech:meta_item_1", Count: 1 as byte, Damage: 10152 as short}], "GT.ToolStats": {PrimaryMaterial: "rubber", HandleMaterial: "wood"}, CreatorLeast: -6837252790035570724 as long}));

//Steam Dynamo
recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped(<thermalexpansion:dynamo>, [
	[null, <contenttweaker:excitationcoil>, null],
	[<ore:plateCopper>, <morefurnaces:furnaceblock>, <ore:plateCopper>],
	[<gregtech:meta_item_2:26197>, <thermalfoundation:material:514>, <gregtech:meta_item_2:26197>]]);

//Magmatic Dynamo
recipes.remove(<thermalexpansion:dynamo:1>);
recipes.addShaped(<thermalexpansion:dynamo:1>, [
	[null, <contenttweaker:excitationcoil>, null],
	[<gregtech:meta_item_1:12704>, <morefurnaces:furnaceblock:5>, <gregtech:meta_item_1:12704>],
	[<enderio:item_material:73>, <thermalfoundation:material:514>, <enderio:item_material:73>]]);

//Reactant Dynamo
recipes.remove(<thermalexpansion:dynamo:3>);
recipes.addShaped(<thermalexpansion:dynamo:3>, [
	[null, <contenttweaker:excitationcoil>, null],
	[<gregtech:meta_item_1:12701>, <morefurnaces:furnaceblock:1>, <gregtech:meta_item_1:12701>],
	[<enderio:item_material:12>, <thermalfoundation:material:514>, <enderio:item_material:12>]]);

//Numismatic Dynamo
recipes.remove(<thermalexpansion:dynamo:5>);
recipes.addShaped(<thermalexpansion:dynamo:5>, [
	[null, <contenttweaker:excitationcoil>, null],
	[<gregtech:meta_item_1:12702>, <morefurnaces:furnaceblock:2>, <gregtech:meta_item_1:12702>],
	[<enderio:item_material:13>, <thermalfoundation:material:514>, <enderio:item_material:13>]]);

//Hardened Upgrade Kit
recipes.remove(<thermalfoundation:upgrade>);
recipes.addShaped(<thermalfoundation:upgrade>, [
	[<gregtech:meta_item_2:26126>, <gregtech:meta_item_1:12126>, <gregtech:meta_item_2:26126>],
	[<gregtech:meta_item_1:12126>, <enderio:block_alloy>, <gregtech:meta_item_1:12126>],
	[<gregtech:meta_item_2:26126>, <gregtech:meta_item_1:12126>, <gregtech:meta_item_2:26126>]]);

//Reinforced Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped(<thermalfoundation:upgrade:1>, [
	[<gregtech:meta_item_2:26112>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_2:26112>],
	[<gregtech:meta_item_1:12112>, <gregtech:compressed_0>, <gregtech:meta_item_1:12112>],
	[<gregtech:meta_item_2:26112>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_2:26112>]]);

//Signalum Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.addShaped(<thermalfoundation:upgrade:2>, [
	[<moreplates:restonia_gear>, <thermalfoundation:material:357>, <moreplates:restonia_gear>],
	[<thermalfoundation:material:357>, <thermalfoundation:storage_alloy:6>, <thermalfoundation:material:357>],
	[<moreplates:restonia_gear>, <thermalfoundation:material:357>, <moreplates:restonia_gear>]]);

//Resonant Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.addShaped(<thermalfoundation:upgrade:3>, [
	[<moreplates:emeradic_gear>, <thermalfoundation:material:359>, <moreplates:emeradic_gear>],
	[<thermalfoundation:material:359>, <draconicevolution:draconic_core>, <thermalfoundation:material:359>],
	[<moreplates:emeradic_gear>, <thermalfoundation:material:359>, <moreplates:emeradic_gear>]]);

//Silver Transmission Coil
recipes.remove(<thermalfoundation:material:514>);
recipes.addShaped(<thermalfoundation:material:514>, [
	[null, <minecraft:redstone>, <gregtech:meta_item_1:14062>],
	[<minecraft:redstone>, <gregtech:meta_item_1:14062>, <minecraft:redstone>],
	[<gregtech:meta_item_1:14062>, <minecraft:redstone>, null]]);

//Gold Reception Coil
recipes.remove(<thermalfoundation:material:513>);
recipes.addShaped(<thermalfoundation:material:513>, [
	[null, <minecraft:redstone>, <gregtech:meta_item_1:14112>],
	[<minecraft:redstone>, <gregtech:meta_item_1:14112>, <minecraft:redstone>],
	[<gregtech:meta_item_1:14112>, <minecraft:redstone>, null]]);

//Electrum Conductance Coil
recipes.addShaped(<thermalfoundation:material:515>, [
	[<gregtech:meta_item_1:14026>, <minecraft:redstone>, null],
	[<minecraft:redstone>, <gregtech:meta_item_1:14026>, <minecraft:redstone>],
	[null, <minecraft:redstone>, <gregtech:meta_item_1:14026>]]);
	
//Auxiliary Transmission Coil
recipes.remove(<thermalexpansion:augment:512>);
recipes.addShaped(<thermalexpansion:augment:512>, [
	[<gregtech:meta_item_1:10227>, <enderio:item_alloy_ingot:1>, <enderio:block_alloy:4>],
	[<enderio:item_alloy_ingot:1>, <thermalfoundation:material:514>, <enderio:item_alloy_ingot:1>],
	[<enderio:block_alloy:4>, <enderio:item_alloy_ingot:1>, <gregtech:meta_item_1:10227>]]);

//Auxiliary Reception Coil
recipes.remove(<thermalexpansion:augment:128>);
recipes.addShaped(<thermalexpansion:augment:128>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <thermalfoundation:material:513>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Auxiliary Sieve
recipes.remove(<thermalexpansion:augment:129>);
recipes.addShaped(<thermalexpansion:augment:129>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <thermalfoundation:material:512>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Nullification Chamber
recipes.remove(<thermalexpansion:augment:130>);
recipes.addShaped(<thermalexpansion:augment:130>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <extrautils2:trashcan>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Nutrient Recovery
recipes.remove(<thermalexpansion:augment:320>);
recipes.addShaped(<thermalexpansion:augment:320>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <thermalfoundation:fertilizer:1>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Monoculture Cycle
recipes.remove(<thermalexpansion:augment:324>);
recipes.addShaped(<thermalexpansion:augment:324>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <thermalfoundation:fertilizer:2>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Sapling Infuser
recipes.remove(<thermalexpansion:augment:323>);
recipes.addShaped(<thermalexpansion:augment:323>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <ore:treeSapling>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Gearworking Die
recipes.remove(<thermalexpansion:augment:337>);
recipes.addShaped(<thermalexpansion:augment:337>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <gregtech:meta_item_2:26111>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);


//Pyroconvective Loop
recipes.remove(<thermalexpansion:augment:352>);
recipes.addShaped(<thermalexpansion:augment:352>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <minecraft:lava_bucket>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Flux Linkage Concentrator
recipes.remove(<thermalexpansion:augment:400>);
recipes.addShaped(<thermalexpansion:augment:400>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <appliedenergistics2:charger>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Flux Reconstruction
recipes.remove(<thermalexpansion:augment:401>);
recipes.addShaped(<thermalexpansion:augment:401>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <actuallyadditions:item_solidified_experience>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Transmission Coil Ducting
recipes.remove(<thermalexpansion:augment:514>);
recipes.addShaped(<thermalexpansion:augment:514>, [
	[<minecraft:iron_ingot>, <gregtech:meta_item_1:12033>, <minecraft:iron_ingot>],
	[<gregtech:meta_item_1:12033>, <minecraft:hopper>, <gregtech:meta_item_1:12033>],
	[<minecraft:iron_ingot>, <gregtech:meta_item_1:12033>, <minecraft:iron_ingot>]]);

//Reagent Recovery
recipes.remove(<thermalexpansion:augment:448>);
recipes.addShaped(<thermalexpansion:augment:448>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <minecraft:dye:4>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Isentropic Reservoir
recipes.remove(<thermalexpansion:augment:656>);
recipes.addShaped(<thermalexpansion:augment:656>, [
	[<enderio:item_alloy_ingot:6>, <gregtech:meta_item_1:12704>, <enderio:item_alloy_ingot:6>],
	[<gregtech:meta_item_1:12704>, <thermalfoundation:material:1024>, <gregtech:meta_item_1:12704>],
	[<enderio:item_alloy_ingot:6>, <gregtech:meta_item_1:12704>, <enderio:item_alloy_ingot:6>]]);

//Pyroclastic Injection
recipes.remove(<thermalexpansion:augment:496>);
recipes.addShaped(<thermalexpansion:augment:496>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <minecraft:water_bucket>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Elemental Catalyzer
recipes.remove(<thermalexpansion:augment:688>);
recipes.addShaped(<thermalexpansion:augment:688>, [
	[<redstonearsenal:material:128>, <redstonearsenal:material:128>, <redstonearsenal:material:128>],
	[<redstonearsenal:material:128>, <thermalfoundation:material:1028>, <redstonearsenal:material:128>],
	[<redstonearsenal:material:128>, <redstonearsenal:material:128>, <redstonearsenal:material:128>]]);

//Parabolic Flux Coupling
recipes.remove(<thermalexpansion:augment:402>);
recipes.addShaped(<thermalexpansion:augment:402>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <thermalexpansion:capacitor>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Fuel Catalyzer
recipes.remove(<thermalexpansion:augment:513>);
recipes.addShaped(<thermalexpansion:augment:513>, [
	[<ore:ingotWroughtIron>, <ore:plateWroughtIron>, <ore:ingotWroughtIron>],
	[<ore:plateWroughtIron>, <thermalfoundation:material:515>, <ore:plateWroughtIron>],
	[<ore:ingotWroughtIron>, <ore:plateWroughtIron>, <ore:ingotWroughtIron>]]);

//Excitation Field Limiter
recipes.remove(<thermalexpansion:augment:515>);
recipes.addShaped(<thermalexpansion:augment:515>, [
	[<minecraft:iron_ingot>, <gregtech:meta_item_1:12033>, <minecraft:iron_ingot>],
	[<gregtech:meta_item_1:12033>, <contenttweaker:excitationcoil>, <gregtech:meta_item_1:12033>],
	[<minecraft:iron_ingot>, <gregtech:meta_item_1:12033>, <minecraft:iron_ingot>]]);

//Lapidary Calibration
recipes.remove(<thermalexpansion:augment:720>);
recipes.addShaped(<thermalexpansion:augment:720>, [
	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
	[<ore:plateDiamond>, <minecraft:emerald>, <ore:plateDiamond>],
	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]]);

//Clastic Deposition
recipes.remove(<thermalexpansion:augment:497>);
recipes.addShaped(<thermalexpansion:augment:497>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <minecraft:cobblestone>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Excitation Coil
recipes.addShaped(<contenttweaker:excitationcoil>, [
	[null, <gregtech:meta_item_1:12237>, null],
	[<gregtech:meta_item_1:12237>, <thermalfoundation:material:515>, <gregtech:meta_item_1:12237>],
	[<gregtech:meta_item_1:12237>, <thermalfoundation:material:515>, <gregtech:meta_item_1:12237>]]);

<contenttweaker:excitationcoil>.addTooltip(format.darkGray(format.italic("Crafting component only.")));

//Remove Disjunctive Extraction
recipes.remove(<thermalexpansion:augment:704>);

//Numismatic Press
recipes.remove(<thermalexpansion:augment:336>);
recipes.addShaped(<thermalexpansion:augment:336>, [
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>],
	[<thermalfoundation:material:328>, <minecraft:gold_block>, <thermalfoundation:material:328>],
	[<thermalfoundation:material:136>, <thermalfoundation:material:328>, <thermalfoundation:material:136>]]);

//Trash Can (Items)
recipes.remove(<extrautils2:trashcan>);
recipes.addShaped(<extrautils2:trashcan>, [
	[null, <minecraft:iron_trapdoor>, null],
	[<gregtech:meta_item_1:12033>, <minecraft:chest>, <gregtech:meta_item_1:12033>],
	[null, <gregtech:meta_item_1:12033>, null]]);

//Trash Can (Fluid)
recipes.remove(<extrautils2:trashcanfluid>);
recipes.addShaped(<extrautils2:trashcanfluid>, [
	[null, <minecraft:iron_trapdoor>, null],
	[<gregtech:meta_item_1:12033>, <minecraft:bucket>, <gregtech:meta_item_1:12033>],
	[null, <gregtech:meta_item_1:12033>, null]]);

//Trash Can (Energy)
recipes.remove(<extrautils2:trashcanenergy>);
recipes.addShaped(<extrautils2:trashcanenergy>, [
	[null, <minecraft:iron_trapdoor>, null],
	[<gregtech:meta_item_1:12033>, <minecraft:redstone_block>, <gregtech:meta_item_1:12033>],
	[null, <gregtech:meta_item_1:12033>, null]]);

//Mana Powder
recipes.addShaped(<thermalfoundation:material:1028> * 4,[
	[<thermalfoundation:material:1026>, <thermalfoundation:material:1026>, <thermalfoundation:material:1024>],
	[<thermalfoundation:material:1025>, <gregtech:meta_item_1:2111>, <thermalfoundation:material:1024>],
	[<thermalfoundation:material:1025>, <thermalfoundation:material:1027>, <thermalfoundation:material:1027>]]);

<thermalfoundation:material:72>.displayName = "Mana Infused Metal Dust";
blast_furnace.recipeBuilder().inputs([<thermalfoundation:material:72>]).fluidInputs(<liquid:mana> * 250).outputs(<thermalfoundation:material:136>).property("temperature", 2141).duration(400).EUt(400).buildAndRegister();

recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [
[<gregtech:meta_item_1:12183>,<gregtech:meta_item_1:12183>,<gregtech:meta_item_1:12183>],
[<gregtech:meta_item_1:12183>,<thermalexpansion:frame:64>,<gregtech:meta_item_1:12183>],
[<gregtech:meta_item_1:12183>,<gregtech:meta_item_1:12183>,<gregtech:meta_item_1:12183>]]);
<thermalexpansion:frame:64>.displayName = "Thermal Machine Casing";

recipes.remove(<thermalexpansion:frame:64>);
recipes.remove(<nuclearcraft:compound:2>);
recipes.addShaped(<thermalexpansion:frame:64>, [
	[<thermalfoundation:material:136>,<thermalfoundation:material:136>,<thermalfoundation:material:136>],
	[<thermalfoundation:material:136>, null, <thermalfoundation:material:136>],
	[<thermalfoundation:material:136>,<thermalfoundation:material:136>,<thermalfoundation:material:136>]]);
<thermalexpansion:frame:64>.displayName = "Thermal Device Casing";


//Add Black Lotus to Phytogenic Insolator for black dye
mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_black_lotus>*3,<actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:0>, 4800);
mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_black_lotus>*6,<actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:1>, 7200);
mods.thermalexpansion.Insolator.addRecipe(<actuallyadditions:block_black_lotus>*9,<actuallyadditions:block_black_lotus>, <thermalfoundation:fertilizer:2>, 9600);

//Ensure Proper Enderium/Lumium/Signalum Ingots


val liquidMap as IItemStack[][ILiquidStack] = {
    <liquid:signalum> : [<thermalfoundation:material:165>, <thermalfoundation:storage_alloy:5>, <thermalfoundation:material:229>],
    <liquid:lumium>   : [<thermalfoundation:material:166>, <thermalfoundation:storage_alloy:6>, <thermalfoundation:material:230>],
    <liquid:enderium> : [<thermalfoundation:material:167>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:material:231>]
};


//ingot, block, nugget

for liquid,items in liquidMap {
	
	//Ingots
	solidifier.findRecipe(8, [<gregtech:meta_item_1:32306>], [liquid * 144]).remove();
	solidifier.recipeBuilder()
		.fluidInputs(liquid * 144)
		.notConsumable(<gregtech:meta_item_1:32306>)
		.outputs(items[0])
		.duration(20).EUt(8).buildAndRegister();

	//Blocks
	solidifier.findRecipe(8, [<gregtech:meta_item_1:32308>], [liquid * 1296]).remove();
	solidifier.recipeBuilder()
		.fluidInputs(liquid * 1296)
		.notConsumable(<gregtech:meta_item_1:32308>)
		.outputs(items[1])
		.duration(98).EUt(8).buildAndRegister();

	//Nuggets
	solidifier.findRecipe(8, [<gregtech:meta_item_1:32309>], [liquid * 144]).remove();
	solidifier.recipeBuilder()
		.fluidInputs(liquid * 144)
		.notConsumable(<gregtech:meta_item_1:32309>)
		.outputs(items[2] * 9)
		.duration(98).EUt(8).buildAndRegister();
}

//Correct Packager Recipes

val packagerArray2 = [

	[<thermalfoundation:material:231>, <thermalfoundation:material:167>],
	[<thermalfoundation:material:230>, <thermalfoundation:material:166>],
	[<thermalfoundation:material:229>, <thermalfoundation:material:165>]

] as IItemStack[][];

for nuggets in packagerArray2 {
	
	packager.findRecipe(12, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1, not_consumed: 1 as byte}), nuggets[0] * 9], [null]).remove();

	packager.recipeBuilder()
		.inputs(nuggets[0] * 9)
        .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
        .outputs(nuggets[1])
        .duration(10).EUt(12).buildAndRegister();
        
}

//Furnace Recipes
//Enderium
furnace.remove(<gregtech:meta_item_1:10708>, <gregtech:meta_item_1:2708>);
furnace.addRecipe(<thermalfoundation:material:167>, <gregtech:meta_item_1:2708>);

//Signalum
furnace.remove(<gregtech:meta_item_1:10707>, <gregtech:meta_item_1:2707>);
furnace.addRecipe(<thermalfoundation:material:165>, <gregtech:meta_item_1:2707>);

//Lumium
furnace.remove(<gregtech:meta_item_1:10706>, <gregtech:meta_item_1:2706>);
furnace.addRecipe(<thermalfoundation:material:166>, <gregtech:meta_item_1:2706>);

//Mana Infused
mixer.recipeBuilder()
    .outputs(<thermalfoundation:material:72> * 2)
    .inputs([<thermalfoundation:material:1028>, <gregtech:meta_item_1:2072>])
    .duration(200).EUt(30).buildAndRegister();

//Remove Unobtainable Satchel and Void Satchel Recipe

//Remove Rockwool smelting recipe
furnace.remove(<thermalfoundation:rockwool:7>, <thermalfoundation:material:864>);

//Satchel Removal
recipes.removeByRecipeName("thermalexpansion:satchel_1");
recipes.removeByRecipeName("thermalexpansion:satchel_7");

//Pure Certus
mods.thermalexpansion.Insolator.addRecipe(<appliedenergistics2:material:10>, <appliedenergistics2:crystal_seed>.withTag({progress: 0}), <minecraft:glowstone_dust>, 40000);

//Pure Nether Quartz
mods.thermalexpansion.Insolator.addRecipe(<appliedenergistics2:material:11>, <appliedenergistics2:crystal_seed:600>.withTag({progress: 600}), <minecraft:glowstone_dust>, 40000);

//Pure Fluix
mods.thermalexpansion.Insolator.addRecipe(<appliedenergistics2:material:12>, <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200}), <minecraft:glowstone_dust>, 40000);

mods.jei.JEI.addDescription(<appliedenergistics2:material:10>, "Made in the Crystal Growth Chamber or in a Phytogenic Insolator. If made in the Phytogenic Insolator, make sure to unlock the Fertilizer slot. Augments do not work for this craft.");
mods.jei.JEI.addDescription(<appliedenergistics2:material:11>, "Made in the Crystal Growth Chamber or in a Phytogenic Insolator. If made in the Phytogenic Insolator, make sure to unlock the Fertilizer slot. Augments do not work for this craft.");
mods.jei.JEI.addDescription(<appliedenergistics2:material:12>, "Made in the Crystal Growth Chamber or in a Phytogenic Insolator. If made in the Phytogenic Insolator, make sure to unlock the Fertilizer slot. Augments do not work for this craft."); 