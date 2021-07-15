#modloaded minecraft refinedstorage

import scripts.CommonVars.makeShaped as makeShaped;

// Removals
<ore:itemSilicon>.remove(<refinedstorage:silicon>);
mods.jei.JEI.removeAndHide(<refinedstorage:silicon>);
mods.jei.JEI.removeAndHide(<refinedstorage:silicon>);

recipes.removeByRecipeName("refinedstorage:1k_storage_disk_from_storage_housing");
recipes.removeByRecipeName("refinedstorage:4k_storage_disk_from_storage_housing");
recipes.removeByRecipeName("refinedstorage:16k_storage_disk_from_storage_housing");
recipes.removeByRecipeName("refinedstorage:64k_storage_disk_from_storage_housing");
recipes.removeByRecipeName("refinedstorage:1k_storage_disk");
recipes.removeByRecipeName("refinedstorage:4k_storage_disk");
recipes.removeByRecipeName("refinedstorage:16k_storage_disk");
recipes.removeByRecipeName("refinedstorage:64k_storage_disk");
recipes.removeByRecipeName("refinedstorage:1k_storage_part");
recipes.removeByRecipeName("refinedstorage:4k_storage_part");
recipes.removeByRecipeName("refinedstorage:16k_storage_part");
recipes.removeByRecipeName("refinedstorage:64k_storage_part");

recipes.removeByRecipeName("refinedstorage:64k_fluid_storage_disk_from_storage_housing");
recipes.removeByRecipeName("refinedstorage:64k_fluid_storage_disk");
recipes.removeByRecipeName("refinedstorage:64k_fluid_storage_part");
recipes.removeByRecipeName("refinedstorage:64k_fluid_storage_block");
recipes.removeByRecipeName("refinedstorage:256k_fluid_storage_disk_from_storage_housing");
recipes.removeByRecipeName("refinedstorage:256k_fluid_storage_disk");
recipes.removeByRecipeName("refinedstorage:256k_fluid_storage_part");
recipes.removeByRecipeName("refinedstorage:256k_fluid_storage_block");
recipes.removeByRecipeName("refinedstorage:1024k_fluid_storage_disk_from_storage_housing");
recipes.removeByRecipeName("refinedstorage:1024k_fluid_storage_disk");
recipes.removeByRecipeName("refinedstorage:1024k_fluid_storage_part");
recipes.removeByRecipeName("refinedstorage:1024k_fluid_storage_block");
recipes.removeByRecipeName("refinedstorage:4096k_fluid_storage_disk_from_storage_housing");
recipes.removeByRecipeName("refinedstorage:4096k_fluid_storage_disk");
recipes.removeByRecipeName("refinedstorage:4096k_fluid_storage_part");
recipes.removeByRecipeName("refinedstorage:4096k_fluid_storage_block");

mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage:4>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_part>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_part:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_part:2>);

mods.jei.JEI.removeAndHide(<refinedstorage:processor>);
mods.jei.JEI.removeAndHide(<refinedstorage:processor:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:processor:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:processor_binding>);

furnace.remove(<refinedstorage:processor:3>);
furnace.remove(<refinedstorage:processor:4>);
furnace.remove(<refinedstorage:processor:5>);

/*
  Devices
 */

// Importer
recipes.remove(<refinedstorage:importer>);
makeShaped("rs_compat_importer",
	<refinedstorage:importer>, [
		"   ",
		" C ",
		"LPL",
	], {
		C: <refinedstorage:core:1>,
		P: <metaitem:electric.piston.mv>,
		L: <ore:plateLapis>,
	});

// Exporter
recipes.remove(<refinedstorage:exporter>);
makeShaped("rs_compat_exporter",
	<refinedstorage:exporter>, [
		"   ",
		" C ",
		"LPL",
	], {
		C: <refinedstorage:core>,
		P: <metaitem:electric.piston.mv>,
		L: <ore:plateLapis>,
	});

// Reader
recipes.remove(<refinedstorage:reader>);
recipes.addShapeless(<refinedstorage:reader>, [
	<refinedstorage:importer>, <metaitem:electric.piston.mv>
]);

// Writer
recipes.remove(<refinedstorage:writer>);
recipes.addShapeless(<refinedstorage:writer>, [
	<refinedstorage:exporter>, <metaitem:electric.piston.mv>
]);

// Constructor
recipes.remove(<refinedstorage:constructor>);
recipes.addShapeless(<refinedstorage:constructor>, [
	<refinedstorage:importer>, <refinedstorage:core:1>
]);

// Destructor
recipes.remove(<refinedstorage:destructor>);
recipes.addShapeless(<refinedstorage:destructor>, [
	<refinedstorage:exporter>, <refinedstorage:core>
]);

// External Storage
recipes.remove(<refinedstorage:constructor>);
recipes.addShapeless(<refinedstorage:constructor>, [
	<refinedstorage:importer>, <refinedstorage:core>, <refinedstorage:core:1>
]);

// Crafter (Interface)
recipes.remove(<refinedstorage:crafter>);
makeShaped("rs_compat_crafter",
	<refinedstorage:crafter>, [
		"PPP",
		"CHD",
		"PRP",
	], {
		P: <ore:plateAluminium>,
		C: <refinedstorage:core>, 
		D: <refinedstorage:core:1>,
		R: <metaitem:robot.arm.mv>
	});

// Grid
recipes.remove(<refinedstorage:grid>);
makeShaped("rs_compat_grid",
	<refinedstorage:grid>, [
		" C ",
		"III",
		"GGG",
	], {
		C: <ore:circuitBasic>, 
		I: <refinedstorage:quartz_enriched_iron>, 
		G: <appliedenergistics2:quartz_glass>, 
	});

/*
  Storage Components
 */

// Fluid
makeShaped("rs_compat_1k_storage_component",
	<refinedstorage:fluid_storage_part:3> * 2, [
		"CLC",
		"LPL",
		"CLC",
	], {
		G: <minecraft:glass>,
		R: <ore:plateRedAlloy>,
		C: <ore:circuitBasic>
	});

// Item
makeShaped("rs_compat_1k_storage_component",
	<refinedstorage:storage_part>, [
		"RGR",
		"GCG",
		"RGR",
	], {
		G: <minecraft:glass>,
		R: <ore:plateRedAlloy>,
		C: <ore:circuitBasic>
	});

makeShaped("rs_compat_4k_storage_component",
	<refinedstorage:storage_part:1>, [
		"GXG",
		"SCS",
		"GSG",
	], {
		G: <minecraft:glass>,
		S: <refinedstorage:storage_part>, // 1k
		X: <ore:circuitBasic>,
		C: <ore:circuitGood>
	});

makeShaped("rs_compat_16k_storage_component",
	<refinedstorage:storage_part:2>, [
		"GXG",
		"SCS",
		"GSG",
	], {
		G: <minecraft:glass>,
		S: <refinedstorage:storage_part:1>, // 4k
		X: <ore:circuitBasic>,
		C: <ore:circuitAdvanced>
	});

makeShaped("rs_compat_64k_storage_component",
	<refinedstorage:storage_part:3>, [
		"GXG",
		"SCS",
		"GSG",
	], {
		G: <minecraft:glass>,
		S: <refinedstorage:storage_part:2>, // 16k
		X: <ore:circuitBasic>,
		C: <ore:circuitExtreme>
	});

/*
  Crafting Ingredients
 */

// Quartz-Enriched Iron
recipes.removeByRecipeName("refinedstorage:quartz_enriched_iron");
alloy.recipeBuilder()
	.inputs([<ore:ingotIron>, <ore:gemCertusQuartz>])
	.outputs([<refinedstorage:quartz_enriched_iron>])
	.duration(240).EUt(16).buildAndRegister();

alloy.recipeBuilder()
	.inputs([<ore:ingotIron>, <ore:crystalCertusQuartz>])
	.outputs([<refinedstorage:quartz_enriched_iron>])
	.duration(240).EUt(16).buildAndRegister();

// Basic Processor
engraver.recipeBuilder()
	.inputs([<ore:circuitBasic>])
	.notConsumable(<ore:lensEnderEye>)
	.outputs([<refinedstorage:processor:3>])
	.duration(200).EUt(120).buildAndRegister();

// Advanced Processor
engraver.recipeBuilder()
	.inputs([<ore:circuitGood>])
	.notConsumable(<ore:lensEnderEye>)
	.outputs([<refinedstorage:processor:5>])
	.duration(400).EUt(120).buildAndRegister();

// Pattern
recipes.remove(<refinedstorage:pattern>);
makeShaped("rs_compat_pattern",
	<refinedstorage:pattern>, [
		"PPP",
		"PCP",
		"WWW",
	], {
		P: <ore:platePlastic>,
		S: <ore:wireFineSilver>,
		C: <ore:circuitAdvanced>
	});

/*
  Storeg
 */

// Pattern
recipes.remove(<refinedstorage:pattern>);
makeShaped("rs_compat_pattern",
	<refinedstorage:pattern>, [
		"PPP",
		"PCP",
		"WWW",
	], {
		P: <ore:platePlastic>,
		S: <ore:wireFineSilver>,
		C: <ore:circuitAdvanced>
	});

// Disk Drive
recipes.remove(<refinedstorage:disk_drive>);
makeShaped("rs_compat_disk_drive",
	<refinedstorage:disk_drive>, [
		"PEP",
		"C C",
		"PSP",
	], {
		P: <ore:plateAluminium>,
		E: <metaitem:emitter.mv>,
		S: <metaitem:sensor.mv>,
		C: <ore:circuitBasic>
	});