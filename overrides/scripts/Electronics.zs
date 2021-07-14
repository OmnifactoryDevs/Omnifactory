import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import scripts.CommonVars.makeShaped as makeShaped;

/////////////////   Tier One Circuits | Basic Tier   ///////////////////////	


//Primitive Circuit
recipes.remove(<metaitem:circuit.basic>);
recipes.addShaped(<metaitem:circuit.basic>, [
	[<metaitem:component.resistor>, <ore:plateWroughtIron>, <metaitem:component.resistor>], 
	[<metaitem:circuit.vacuum_tube>, <metaitem:board.coated>, <metaitem:circuit.vacuum_tube>], 
	[<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>]]);


<gregtech:meta_item_2:32487>.addTooltip(format.aqua(format.italic("This is the first Tier One circuit.")));
	
	
	
//Primitive Circuit Board
recipes.remove(<metaitem:board.coated>);
recipes.addShaped(<metaitem:board.coated> * 3, [
	[null,<metaitem:rubber_drop>,null],
	[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
	[null,<metaitem:rubber_drop>,null]]);
	
	
	
//Glass Tube
recipes.addShaped(<metaitem:component.glass.tube>, [
	[null, <minecraft:glass_pane>, null],
	[<minecraft:glass_pane>, null, <minecraft:glass_pane>],
	[null, <minecraft:glass_pane>, null]]);

	
	
//Electronic Circuit
<metaitem:circuit.basic_electronic>.addTooltip(format.aqua(format.italic("This is the second Tier One circuit.")));

assembler.findRecipe(8, [<metaitem:plate.integrated_logic_circuit>, <metaitem:component.resistor> * 2, <metaitem:component.capacitor>, <metaitem:board.phenolic>, <ore:wireFineCopper>.firstItem], [<liquid:tin> * 144]).remove();
assembler.findRecipe(8, [<metaitem:plate.integrated_logic_circuit>, <metaitem:component.resistor> * 2, <metaitem:component.capacitor>, <metaitem:board.phenolic>, <ore:wireFineCopper>.firstItem], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(8, [<metaitem:plate.integrated_logic_circuit>, <metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor>, <metaitem:board.phenolic>, <ore:wireFineCopper>.firstItem], [<liquid:tin> * 144]).remove();
assembler.findRecipe(8, [<metaitem:plate.integrated_logic_circuit>, <metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor>, <metaitem:board.phenolic>, <ore:wireFineCopper>.firstItem], [<liquid:soldering_alloy> * 72]).remove();

assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 2, <metaitem:board.phenolic>, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.basic_electronic>]).duration(100).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 2, <metaitem:board.phenolic>, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.basic_electronic>]).duration(100).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 4, <metaitem:component.smd.capacitor> * 2, <metaitem:board.phenolic>, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.basic_electronic>]).duration(100).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 4, <metaitem:component.smd.capacitor> * 2, <metaitem:board.phenolic>, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.basic_electronic>]).duration(100).EUt(16).buildAndRegister();



//Refined Circuit

<contenttweaker:refinedcircuit>.addTooltip(format.aqua(format.italic("This is the third and final Tier One circuit.")));

assembler.findRecipe(60, [<metaitem:plate.central_processing_unit> * 4, <metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 4, <metaitem:component.transistor> * 4, <ore:wireFineCopper>.firstItem * 2, <metaitem:board.plastic>], [<liquid:tin> * 144]).remove();
assembler.findRecipe(60, [<metaitem:plate.central_processing_unit> * 4, <metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 4, <metaitem:component.transistor> * 4, <metaitem:board.plastic>, <ore:wireFineCopper>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(60, [<metaitem:plate.central_processing_unit> * 4, <metaitem:component.smd.resistor>* 4, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 4, <metaitem:board.plastic>, <ore:wireFineCopper>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(60, [<metaitem:plate.central_processing_unit> * 4, <metaitem:component.smd.resistor>* 4, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 4, <metaitem:board.plastic>, <ore:wireFineCopper>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(600, [<metaitem:plate.system_on_chip>, <metaitem:board.plastic>, <ore:wireFineCopper>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(600, [<metaitem:plate.system_on_chip>, <metaitem:board.plastic>, <ore:wireFineCopper>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();

assembler.recipeBuilder().inputs([<metaitem:plate.central_processing_unit>, <metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 4, <metaitem:component.transistor> * 4, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedcircuit> * 4]).duration(200).EUt(60).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.central_processing_unit>, <metaitem:component.resistor> * 4, <metaitem:component.capacitor> * 4, <metaitem:component.transistor> * 4, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedcircuit> * 4]).duration(200).EUt(60).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.central_processing_unit>, <metaitem:component.smd.resistor> * 4, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 4, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedcircuit> * 4]).duration(200).EUt(60).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.central_processing_unit>, <metaitem:component.smd.resistor> * 4, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 4, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedcircuit> * 4]).duration(200).EUt(60).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.system_on_chip>, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedcircuit> * 8]).duration(50).EUt(600).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.system_on_chip>, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedcircuit> * 8]).duration(50).EUt(600).buildAndRegister();



//Assembling Machines

recipes.remove(<gregtech:machine:100>);
recipes.remove(<gregtech:machine:101>);
recipes.remove(<gregtech:machine:102>);
recipes.remove(<gregtech:machine:103>);
recipes.remove(<gregtech:machine:104>);
recipes.remove(<gregtech:machine:2037>);
recipes.remove(<gregtech:machine:2038>);
recipes.remove(<gregtech:machine:2039>);

recipes.addShaped(<gregtech:machine:100>, [
	[<gregtech:meta_item_1:32650>, <ore:circuitGood>, <gregtech:meta_item_1:32650>], 
	[<gregtech:meta_item_1:32630>, <gregtech:machine:501>, <gregtech:meta_item_1:32630>], 
	[<ore:cableGtSingleTin>, <ore:circuitGood>, <ore:cableGtSingleTin>]]);

recipes.addShaped(<gregtech:machine:101>, [
	[<gregtech:meta_item_1:32651>, <ore:circuitAdvanced>, <gregtech:meta_item_1:32651>], 
	[<gregtech:meta_item_1:32631>, <gregtech:machine:502>, <gregtech:meta_item_1:32631>], 
	[<ore:cableGtSingleCopper>, <ore:circuitAdvanced>, <ore:cableGtSingleCopper>]]);

recipes.addShaped(<gregtech:machine:102>, [
	[<gregtech:meta_item_1:32652>, <ore:circuitExtreme>, <gregtech:meta_item_1:32652>], 
	[<gregtech:meta_item_1:32632>, <gregtech:machine:503>, <gregtech:meta_item_1:32632>], 
	[<ore:cableGtSingleGold>, <ore:circuitExtreme>, <ore:cableGtSingleGold>]]);
	
recipes.addShaped(<gregtech:machine:103>, [
	[<gregtech:meta_item_1:32653>, <ore:circuitElite>, <gregtech:meta_item_1:32653>], 
	[<gregtech:meta_item_1:32633>, <gregtech:machine:504>, <gregtech:meta_item_1:32633>], 
	[<ore:cableGtSingleAluminium>, <ore:circuitElite>, <ore:cableGtSingleAluminium>]]);
	
recipes.addShaped(<gregtech:machine:104>, [
	[<gregtech:meta_item_1:32654>, <ore:circuitMaster>, <gregtech:meta_item_1:32654>], 
	[<gregtech:meta_item_1:32634>, <gregtech:machine:505>, <gregtech:meta_item_1:32634>], 
	[<ore:cableGtSinglePlatinum>, <ore:circuitMaster>, <ore:cableGtSinglePlatinum>]]);	
	
recipes.addShaped(<gregtech:machine:2037>, [
	[<gregtech:meta_item_1:32655>, <ore:circuitUltimate>, <gregtech:meta_item_1:32655>], 
	[<gregtech:meta_item_1:32635>, <gregtech:machine:506>, <gregtech:meta_item_1:32635>], 
	[<ore:cableGtSingleNiobiumTitanium>, <ore:circuitUltimate>, <ore:cableGtSingleNiobiumTitanium>]]);

recipes.addShaped(<gregtech:machine:2038>, [
	[<gregtech:meta_item_1:32656>, <ore:circuitSuperconductor>, <gregtech:meta_item_1:32656>], 
	[<gregtech:meta_item_1:32636>, <gregtech:machine:507>, <gregtech:meta_item_1:32636>], 
	[<ore:cableGtSingleNaquadah>, <ore:circuitSuperconductor>, <ore:cableGtSingleNaquadah>]]);

recipes.addShaped(<gregtech:machine:2039>, [
	[<gregtech:meta_item_1:32657>, <gregtech:meta_item_2:32501>, <gregtech:meta_item_1:32657>], 
	[<gregtech:meta_item_1:32637>, <gregtech:machine:508>, <gregtech:meta_item_1:32637>], 
	[<ore:wireGtQuadrupleNaquadahAlloy>, <gregtech:meta_item_2:32501>, <ore:wireGtQuadrupleNaquadahAlloy>]]);



	


/////////////////   Tier Two Circuits | Good Tier   ///////////////////////	



//Primitive Processor

<contenttweaker:combinationcircuit>.addTooltip(format.aqua(format.italic("This is the first Tier Two circuit.")));

recipes.remove(<metaitem:circuit.good>);
recipes.addShaped(<contenttweaker:combinationcircuit>, [
	[<ore:plateWroughtIron>, <metaitem:circuit.basic>, <ore:cableGtSingleRedAlloy>], 
	[<metaitem:circuit.basic>, <metaitem:component.diode>, <metaitem:circuit.basic>], 
	[<ore:cableGtSingleRedAlloy>, <metaitem:circuit.basic>, <ore:plateWroughtIron>]]);

//Diode
assembler.findRecipe(48, [<gregtech:meta_item_2:16087> * 4, <gregtech:meta_item_1:1025>], [<liquid:plastic> * 288]).remove();
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:16189> *4, <gregtech:meta_item_1:1025>]).outputs([<gregtech:meta_item_2:32451> * 16]).duration(40).EUt(256).buildAndRegister();

//Electronic Processor	

<contenttweaker:electronicprocessor>.addTooltip(format.aqua(format.italic("This is the second Tier Two circuit.")));
mods.jei.JEI.removeAndHide(<gregtech:meta_item_2:32489>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_2:32490>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_2:32507>);

assembler.findRecipe(16, [<metaitem:component.resistor> * 4, <metaitem:circuit.basic_electronic> * 3, <metaitem:board.phenolic>, <ore:wireFineElectrum>.firstItem * 8], [<liquid:tin> * 144]).remove();
assembler.findRecipe(16, [<metaitem:component.resistor> * 4, <metaitem:circuit.basic_electronic> * 3, <metaitem:board.phenolic>, <ore:wireFineElectrum>.firstItem * 8], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(16, [<metaitem:component.smd.resistor> * 4, <metaitem:circuit.basic_electronic> * 3, <metaitem:board.phenolic>, <ore:wireFineElectrum>.firstItem * 8], [<liquid:tin> * 144]).remove();
assembler.findRecipe(16, [<metaitem:component.smd.resistor> * 4, <metaitem:circuit.basic_electronic> * 3, <metaitem:board.phenolic>, <ore:wireFineElectrum>.firstItem * 8], [<liquid:soldering_alloy> * 72]).remove();


assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 4, <metaitem:component.transistor>, <metaitem:circuit.basic_electronic> * 3, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:electronicprocessor>]).duration(200).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 4, <metaitem:component.transistor>, <metaitem:circuit.basic_electronic> * 3, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:electronicprocessor>]).duration(200).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 4, <metaitem:component.smd.transistor>, <metaitem:circuit.basic_electronic> * 3, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:electronicprocessor>]).duration(200).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 4, <metaitem:component.smd.transistor>, <metaitem:circuit.basic_electronic> * 3, <ore:wireFineCopper> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:electronicprocessor>]).duration(200).EUt(16).buildAndRegister();



//Refined Processor	

<contenttweaker:refinedprocessor>.addTooltip(format.aqua(format.italic("This is the third Tier Two circuit.")));

assembler.findRecipe(60, [<metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:component.transistor> * 2, <metaitem:board.plastic>, <metaitem:plate.central_processing_unit>, <ore:wireFineRedAlloy>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(60, [<metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:component.transistor> * 2, <metaitem:board.plastic>, <metaitem:plate.central_processing_unit>, <ore:wireFineRedAlloy>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(60, [<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <metaitem:board.plastic>, <metaitem:plate.central_processing_unit>, <ore:wireFineRedAlloy>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(60, [<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <metaitem:board.plastic>, <metaitem:plate.central_processing_unit>, <ore:wireFineRedAlloy>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(2400, [<metaitem:plate.system_on_chip>, <metaitem:board.plastic>, <ore:wireFineRedAlloy>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(2400, [<metaitem:plate.system_on_chip>, <metaitem:board.plastic>, <ore:wireFineRedAlloy>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();


assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:component.transistor> * 2, <contenttweaker:refinedcircuit> * 3, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedprocessor>]).duration(100).EUt(60).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:component.transistor> * 2, <contenttweaker:refinedcircuit> * 3, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedprocessor>]).duration(100).EUt(60).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <contenttweaker:refinedcircuit> * 3, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedprocessor>]).duration(100).EUt(60).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <contenttweaker:refinedcircuit> * 3, <metaitem:board.plastic>, <ore:wireFineTinAlloy> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedprocessor>]).duration(100).EUt(60).buildAndRegister();



//Microcircuit

<contenttweaker:microcircuit>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Two circuit.")));

assembler.recipeBuilder().inputs([<metaitem:plate.central_processing_unit> * 2, <metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:component.transistor> * 2, <metaitem:board.epoxy>, <ore:wireFineRedAlloy> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:microcircuit> * 4]).duration(100).EUt(400).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.central_processing_unit> * 2, <metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:component.transistor> * 2, <metaitem:board.epoxy>, <ore:wireFineRedAlloy> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:microcircuit> * 4]).duration(100).EUt(400).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.central_processing_unit> * 2, <metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <metaitem:board.epoxy>, <ore:wireFineRedAlloy> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:microcircuit> * 4]).duration(100).EUt(400).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.central_processing_unit> * 2, <metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <metaitem:board.epoxy>, <ore:wireFineRedAlloy> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:microcircuit> * 4]).duration(100).EUt(400).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.system_on_chip>, <metaitem:board.epoxy>, <ore:wireFineRedAlloy> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:microcircuit> * 8]).duration(50).EUt(2400).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:plate.system_on_chip>, <metaitem:board.epoxy>, <ore:wireFineRedAlloy> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:microcircuit> * 8]).duration(50).EUt(2400).buildAndRegister();




/////////////////   Tier Three Circuits | Advanced Tier   ///////////////////////	

//Electronic Processor Array

<contenttweaker:electronicprocessorarray>.addTooltip(format.aqua(format.italic("This is the first Tier Three circuit.")));

assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:plate.integrated_logic_circuit> * 2, <contenttweaker:electronicprocessor> * 4, <ore:plateAluminium> * 2, <ore:wireFineElectrum> * 16]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:electronicprocessorarray>]).duration(200).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:component.capacitor> * 2, <metaitem:plate.integrated_logic_circuit> * 2, <contenttweaker:electronicprocessor> * 4, <ore:plateAluminium> * 2, <ore:wireFineElectrum> * 16]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:electronicprocessorarray>]).duration(200).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:plate.integrated_logic_circuit> * 2, <contenttweaker:electronicprocessor> * 4, <ore:plateAluminium> * 2, <ore:wireFineElectrum> * 16]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:electronicprocessorarray>]).duration(200).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 2, <metaitem:plate.integrated_logic_circuit> * 2, <contenttweaker:electronicprocessor> * 4, <ore:plateAluminium> * 2, <ore:wireFineElectrum> * 16]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:electronicprocessorarray>]).duration(200).EUt(16).buildAndRegister();



//Refined Processor Array

<contenttweaker:refinedprocessorarray>.addTooltip(format.aqua(format.italic("This is the second Tier Three circuit.")));

assembler.findRecipe(4, [<ore:circuitGood>.firstItem * 4, <ore:plateStainlessSteel>.firstItem * 2], [null]).remove();
assembler.recipeBuilder().inputs([<ore:circuitGood> * 4, <ore:ingotStainlessSteel> * 2]).outputs([<gtadditions:ga_meta_item:32131>]).duration(20).EUt(4).buildAndRegister(); //deconflicting blank schematic

assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:component.transistor> * 2, <contenttweaker:refinedprocessor> * 4, <metaitem:board.plastic>, <ore:plateStainlessSteel> * 2, <ore:wireGtSingleVibrantAlloy> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedprocessorarray>]).duration(200).EUt(90).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.resistor> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:component.transistor> * 2, <contenttweaker:refinedprocessor> * 4, <metaitem:board.plastic>, <ore:plateStainlessSteel> * 2, <ore:wireGtSingleVibrantAlloy> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedprocessorarray>]).duration(200).EUt(90).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:component.smd.transistor> * 2, <contenttweaker:refinedprocessor> * 4, <metaitem:board.plastic>, <ore:plateStainlessSteel> * 2, <ore:wireGtSingleVibrantAlloy> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedprocessorarray>]).duration(200).EUt(90).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:plate.random_access_memory> * 4, <metaitem:component.smd.transistor> * 2, <contenttweaker:refinedprocessor> * 4, <metaitem:board.plastic>, <ore:plateStainlessSteel> * 2, <ore:wireGtSingleVibrantAlloy> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedprocessorarray>]).duration(200).EUt(90).buildAndRegister();



//Microprocessor
<metaitem:circuit.processor_assembly>.addTooltip(format.aqua(format.italic("This is the third Tier Three circuit.")));

assembler.findRecipe(90, [<metaitem:circuit.advanced> * 2, <metaitem:component.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.plastic>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineRedAlloy>.firstItem * 12], [<liquid:tin> * 288]).remove();
assembler.findRecipe(90, [<metaitem:circuit.advanced> * 2, <metaitem:component.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.plastic>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineRedAlloy>.firstItem * 12], [<liquid:soldering_alloy> * 144]).remove();
assembler.findRecipe(90, [<metaitem:circuit.advanced> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.plastic>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineRedAlloy>.firstItem * 12], [<liquid:tin> * 288]).remove();
assembler.findRecipe(90, [<metaitem:circuit.advanced> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.plastic>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineRedAlloy>.firstItem * 12], [<liquid:soldering_alloy> * 144]).remove();

assembler.recipeBuilder().inputs([<contenttweaker:microcircuit> * 3, <metaitem:plate.random_access_memory> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.epoxy>, <metaitem:component.capacitor> * 4, <ore:wireFineRedAlloy> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.processor_assembly>]).duration(100).EUt(360).buildAndRegister();
assembler.recipeBuilder().inputs([<contenttweaker:microcircuit> * 3, <metaitem:plate.random_access_memory> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.epoxy>, <metaitem:component.capacitor> * 4, <ore:wireFineRedAlloy> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.processor_assembly>]).duration(100).EUt(360).buildAndRegister();
assembler.recipeBuilder().inputs([<contenttweaker:microcircuit> * 3, <metaitem:plate.random_access_memory> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.epoxy>, <metaitem:component.smd.capacitor> * 4, <ore:wireFineRedAlloy> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.processor_assembly>]).duration(100).EUt(360).buildAndRegister();
assembler.recipeBuilder().inputs([<contenttweaker:microcircuit> * 3, <metaitem:plate.random_access_memory> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.epoxy>, <metaitem:component.smd.capacitor> * 4, <ore:wireFineRedAlloy> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.processor_assembly>]).duration(100).EUt(360).buildAndRegister();



//Nanocircuit
<metaitem:circuit.nano_processor>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Three circuit.")));

assembler.findRecipe(480, [<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.epoxy>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineElectrum>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(480, [<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.epoxy>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineElectrum>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(9600, [<metaitem:board.epoxy>, <metaitem:plate.system_on_chip>, <ore:wireFineElectrum>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(9600, [<metaitem:board.epoxy>, <metaitem:plate.system_on_chip>, <ore:wireFineElectrum>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();

assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.fiber_reinforced>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineAluminium> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.nano_processor> * 4]).duration(100).EUt(2000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 2, <metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.fiber_reinforced>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineAluminium> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.nano_processor> * 4]).duration(100).EUt(2000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:board.fiber_reinforced>, <metaitem:plate.system_on_chip>, <ore:wireFineAluminium> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.nano_processor> * 8]).duration(100).EUt(9600).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:board.fiber_reinforced>, <metaitem:plate.system_on_chip>, <ore:wireFineAluminium> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.nano_processor> * 8]).duration(100).EUt(9600).buildAndRegister();






/////////////////   Tier Four Circuits | Extreme Tier   ///////////////////////


//Refined Processor Mainframe

<contenttweaker:refinedprocessormainframe>.addTooltip(format.aqua(format.italic("This is the first Tier Four circuit.")));

assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:component.smd.transistor> * 6, <metaitem:component.smd.capacitor> * 8, <metaitem:component.smd.diode> * 4, <contenttweaker:refinedprocessorarray> * 2, <gregtech:frame_stainless_steel> * 4, <ore:wireGtSingleVibrantAlloy> * 8]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:refinedprocessormainframe>]).duration(500).EUt(110).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 16, <metaitem:plate.random_access_memory> * 4, <metaitem:component.smd.transistor> * 6, <metaitem:component.smd.capacitor> * 8, <metaitem:component.smd.diode> * 4, <contenttweaker:refinedprocessorarray> * 2, <gregtech:frame_stainless_steel> * 4, <ore:wireGtSingleVibrantAlloy> * 8]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:refinedprocessormainframe>]).duration(500).EUt(110).buildAndRegister();



//Microprocessor Array

<contenttweaker:microprocessorarray>.addTooltip(format.aqua(format.italic("This is the second Tier Four circuit.")));

assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 4, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:circuit.processor_assembly> * 4, <metaitem:board.epoxy>, <ore:plateTitanium> * 2, <ore:wireGtSingleEndSteel> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:microprocessorarray>]).duration(200).EUt(360).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 4, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:circuit.processor_assembly> * 4, <metaitem:board.epoxy>, <ore:plateTitanium> * 2, <ore:wireGtSingleEndSteel> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:microprocessorarray>]).duration(200).EUt(360).buildAndRegister();



//Nanoprocessor
<metaitem:circuit.nano_processor_assembly>.addTooltip(format.aqua(format.italic("This is the third Tier Four circuit.")));

assembler.findRecipe(480, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:circuit.nano_processor> * 2, <metaitem:board.epoxy>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineElectrum>.firstItem * 6], [<liquid:tin> * 288]).remove();
assembler.findRecipe(480, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:circuit.nano_processor> * 2, <metaitem:board.epoxy>, <metaitem:plate.random_access_memory> * 4, <ore:wireFineElectrum>.firstItem * 6], [<liquid:soldering_alloy> * 144]).remove();

assembler.recipeBuilder().inputs([<metaitem:circuit.nano_processor> * 3, <metaitem:plate.nano_central_processing_unit> * 2, <metaitem:component.small_coil> * 4, <metaitem:board.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFineAluminium> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.nano_processor_assembly>]).duration(100).EUt(2000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:circuit.nano_processor> * 3, <metaitem:plate.nano_central_processing_unit> * 2, <metaitem:component.small_coil> * 4, <metaitem:board.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFineAluminium> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.nano_processor_assembly>]).duration(100).EUt(2000).buildAndRegister();



//Quantum Circuit
<metaitem:circuit.quantum_processor>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Four circuit.")));

assembler.findRecipe(1960, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.fiber_reinforced>, <metaitem:plate.nano_central_processing_unit>, <metaitem:plate.qbit_central_processing_unit>, <ore:wireFinePlatinum>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(1960, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.fiber_reinforced>, <metaitem:plate.nano_central_processing_unit>, <metaitem:plate.qbit_central_processing_unit>, <ore:wireFinePlatinum>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(32000, [<metaitem:board.fiber_reinforced>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(32000, [<metaitem:board.fiber_reinforced>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();

assembler.recipeBuilder().inputs([<metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFinePlatinum> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.quantum_processor> * 4]).duration(200).EUt(3000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.capacitor> * 4, <metaitem:component.smd.transistor> * 2, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFinePlatinum> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.quantum_processor> * 4]).duration(200).EUt(3000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.quantum_processor> * 8]).duration(100).EUt(36000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.advanced_system_on_chip>, <ore:wireFinePlatinum> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.quantum_processor> * 8]).duration(100).EUt(36000).buildAndRegister();




/////////////////   Tier Five Circuits | Elite Tier   ///////////////////////


//Microprocessor Mainframe

<contenttweaker:microprocessormainframe>.addTooltip(format.aqua(format.italic("This is the first Tier Five circuit.")));

assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 20, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 12, <metaitem:component.smd.capacitor> * 16, <metaitem:component.smd.diode> * 8, <contenttweaker:microprocessorarray> * 2, <gregtech:frame_titanium> * 4, <ore:wireGtSingleEndSteel> * 8]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:microprocessormainframe>]).duration(500).EUt(500).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 20, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 12, <metaitem:component.smd.capacitor> * 16, <metaitem:component.smd.diode> * 8, <contenttweaker:microprocessorarray> * 2, <gregtech:frame_titanium> * 4, <ore:wireGtSingleEndSteel> * 8]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:microprocessormainframe>]).duration(500).EUt(500).buildAndRegister();



//Nanoprocessor Array

<contenttweaker:nanoprocessorarray>.addTooltip(format.aqua(format.italic("This is the second Tier Five circuit.")));

assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 4, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:circuit.nano_processor_assembly> * 4, <metaitem:board.fiber_reinforced>, <ore:plateTungstenSteel> * 2, <ore:wireGtSingleLumium> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:nanoprocessorarray>]).duration(200).EUt(2000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 4, <metaitem:plate.random_access_memory> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:circuit.nano_processor_assembly> * 4, <metaitem:board.fiber_reinforced>, <ore:plateTungstenSteel> * 2, <ore:wireGtSingleLumium> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:nanoprocessorarray>]).duration(200).EUt(2000).buildAndRegister();


//Quantum Processor

<contenttweaker:quantumprocessor>.addTooltip(format.aqua(format.italic("This is the third Tier Five circuit.")));

assembler.findRecipe(1960, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.fiber_reinforced>, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.quantum_processor> * 2, <ore:wireFinePlatinum>.firstItem * 6], [<liquid:tin> * 288]).remove();
assembler.findRecipe(1960, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.fiber_reinforced>, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.quantum_processor> * 2, <ore:wireFinePlatinum>.firstItem * 6], [<liquid:soldering_alloy> * 144]).remove();

assembler.recipeBuilder().inputs([<metaitem:component.smd.transistor> * 4, <metaitem:circuit.quantum_processor> * 3, <metaitem:plate.qbit_central_processing_unit> * 2, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFinePlatinum> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:quantumprocessor>]).duration(100).EUt(4000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.transistor> * 4, <metaitem:circuit.quantum_processor> * 3, <metaitem:plate.qbit_central_processing_unit> * 2, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFinePlatinum> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:quantumprocessor>]).duration(100).EUt(4000).buildAndRegister();

recipes.addShapeless(<contenttweaker:quantumprocessor>, [<gregtech:meta_item_2:32495>]);	


//Crystal Circuit

<contenttweaker:crystalcircuit>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Five circuit.")));

assembler.findRecipe(7600, [<metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineNiobiumTitanium>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(7600, [<metaitem:component.smd.capacitor> * 2, <metaitem:component.smd.transistor> * 2, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineNiobiumTitanium>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();
assembler.findRecipe(31900, [<metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.system_on_chip>, <ore:wireFineNiobiumTitanium>.firstItem * 2], [<liquid:tin> * 144]).remove();
assembler.findRecipe(31900, [<metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.system_on_chip>, <ore:wireFineNiobiumTitanium>.firstItem * 2], [<liquid:soldering_alloy> * 72]).remove();

assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineNiobiumTitanium> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:crystalcircuit> * 4]).duration(200).EUt(10000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 8, <metaitem:component.smd.transistor> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.central_processing_unit>, <metaitem:plate.nano_central_processing_unit>, <ore:wireFineNiobiumTitanium> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:crystalcircuit> * 4]).duration(200).EUt(10000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.system_on_chip>, <ore:wireFineNiobiumTitanium> * 2]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:crystalcircuit> * 8]).duration(100).EUt(86000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:board.multilayer.fiber_reinforced>, <metaitem:crystal.system_on_chip>, <ore:wireFineNiobiumTitanium> * 2]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:crystalcircuit> * 8]).duration(100).EUt(86000).buildAndRegister();



/////////////////   Tier Six Circuits | Master Tier   ///////////////////////


//Nanoprocessor Mainframe

<contenttweaker:nanoprocessormainframe>.addTooltip(format.aqua(format.italic("This is the first Tier Six circuit.")));

assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 24, <metaitem:plate.random_access_memory> * 12, <metaitem:component.smd.transistor> * 16, <metaitem:component.smd.capacitor> * 20, <metaitem:component.smd.diode> * 12, <contenttweaker:nanoprocessorarray> * 2, <gregtech:frame_tungsten_steel> * 4, <ore:wireGtSingleLumium> * 8]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:nanoprocessormainframe>]).duration(500).EUt(2000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 24, <metaitem:plate.random_access_memory> * 12, <metaitem:component.smd.transistor> * 16, <metaitem:component.smd.capacitor> * 20, <metaitem:component.smd.diode> * 12, <contenttweaker:nanoprocessorarray> * 2, <gregtech:frame_tungsten_steel> * 4, <ore:wireGtSingleLumium> * 8]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:nanoprocessormainframe>]).duration(500).EUt(2000).buildAndRegister();


//Quantum Processor Array

<contenttweaker:quantumprocessorarray>.addTooltip(format.aqua(format.italic("This is the second Tier Six circuit.")));

assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 8, <metaitem:plate.power_integrated_circuit> * 4, <metaitem:component.smd.transistor> * 8, <contenttweaker:quantumprocessor> * 4, <metaitem:board.multilayer.fiber_reinforced>, <gregtech:meta_item_1:32724>, <ore:plateChrome> * 2, <ore:wireGtSingleSignalum> * 4]).fluidInputs(<liquid:tin> * 144).outputs([<contenttweaker:quantumprocessorarray>]).duration(200).EUt(6000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.diode> * 8, <metaitem:plate.power_integrated_circuit> * 4, <metaitem:component.smd.transistor> * 8, <contenttweaker:quantumprocessor> * 4, <metaitem:board.multilayer.fiber_reinforced>, <gregtech:meta_item_1:32724>, <ore:plateChrome> * 2, <ore:wireGtSingleSignalum> * 4]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<contenttweaker:quantumprocessorarray>]).duration(200).EUt(6000).buildAndRegister();


//Crystal Processor
<metaitem:circuit.energy_flow>.addTooltip(format.aqua(format.italic("This is the third Tier Six circuit.")));

assembler.findRecipe(7600, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.crystal_processor> * 2, <ore:wireFineNiobiumTitanium>.firstItem * 6], [<liquid:tin> * 288]).remove();
assembler.findRecipe(7600, [<metaitem:component.smd.capacitor> * 4, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:plate.random_access_memory> * 4, <metaitem:circuit.crystal_processor> * 2, <ore:wireFineNiobiumTitanium>.firstItem * 6], [<liquid:soldering_alloy> * 144]).remove();

assembler.recipeBuilder().inputs([<metaitem:component.smd.capacitor> * 4, <contenttweaker:crystalcircuit> * 3, <metaitem:crystal.central_processing_unit>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFineNiobiumTitanium> * 6]).fluidInputs(<liquid:tin> * 144).outputs([<metaitem:circuit.energy_flow>]).duration(100).EUt(20000).buildAndRegister();
assembler.recipeBuilder().inputs([<metaitem:component.smd.capacitor> * 4, <contenttweaker:crystalcircuit> * 3, <metaitem:crystal.central_processing_unit>, <metaitem:plate.qbit_central_processing_unit>, <metaitem:component.small_coil> * 4, <metaitem:board.multilayer.fiber_reinforced>, <metaitem:component.smd.diode> * 4, <ore:wireFineNiobiumTitanium> * 6]).fluidInputs(<liquid:soldering_alloy> * 72).outputs([<metaitem:circuit.energy_flow>]).duration(100).EUt(20000).buildAndRegister();



//Wetware Circuit
<metaitem:circuit.wetware_processor>.addTooltip(format.aqua(format.italic("This is the fourth and final Tier Six circuit.")));

assembler.recipeBuilder().inputs([<gregtech:meta_item_2:32476> * 4, <gregtech:cable:308> * 4, <gregtech:meta_item_2:32449>]).fluidInputs(<liquid:sterilized_growth_medium> * 1000).outputs([<metaitem:circuit.wetware_processor> * 4]).duration(200).EUt(120000).buildAndRegister();





/////////////////   Tier Seven Circuits | Ultimate Tier   ///////////////////////


//Quantum Processor Mainframe

<contenttweaker:quantumprocessormainframe>.addTooltip(format.aqua(format.italic("This is the first Tier Seven circuit.")));

assembly_line.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 32, <metaitem:plate.power_integrated_circuit> * 8, <metaitem:component.smd.transistor> * 24, <metaitem:component.smd.capacitor> * 28, <metaitem:component.smd.diode> * 16, <gregtech:meta_item_1:32725>, <contenttweaker:quantumprocessorarray> * 2, <gregtech:frame_hssg> * 4, <ore:wireGtSingleSignalum> * 8]).fluidInputs(<liquid:soldering_alloy> * 1440).outputs([<contenttweaker:quantumprocessormainframe>]).duration(500).EUt(8000).buildAndRegister();


//Crystal Processor Array

<contenttweaker:crystalprocessorarray>.addTooltip(format.aqua(format.italic("This is the second Tier Seven circuit.")));

assembly_line.recipeBuilder().inputs([<metaitem:component.smd.diode> * 8, <metaitem:plate.high_power_integrated_circuit>, <metaitem:component.smd.transistor> * 8, <metaitem:circuit.energy_flow> * 4, <metaitem:board.multilayer.fiber_reinforced>, <gregtech:meta_item_1:32724>, <ore:plateDraconium> * 2, <ore:wireGtSingleEnderium> * 4]).fluidInputs(<liquid:soldering_alloy> * 720).outputs([<contenttweaker:crystalprocessorarray>]).duration(300).EUt(30000).buildAndRegister();


//Wetware Processor
<metaitem:circuit.wetware_assembly>.addTooltip(format.aqua(format.italic("This is the third and final Tier Seven circuit.")));

assembly_line.recipeBuilder().inputs(<gregtech:meta_item_2:32459> * 16, <gregtech:meta_item_1:19391> * 16, <gregtech:meta_item_2:32460> * 16, <gregtech:meta_item_2:32458> * 8, <gregtech:meta_item_2:32457> * 8, <gregtech:meta_item_2:32498> * 2, <gregtech:meta_item_2:32449>, <enderio:item_material:42> * 2, <gregtech:meta_item_2:32485> * 4, <gregtech:cable:710> * 6).fluidInputs(<liquid:sterilized_growth_medium> * 2000).outputs(<gregtech:meta_item_2:32499>).duration(400).EUt(120000).buildAndRegister();



/////////////////   Tier Eight Circuits | Superconductor Tier   ///////////////////////
 
//Crystal Processor Mainframe

<contenttweaker:crystalprocessormainframe>.addTooltip(format.aqua(format.italic("This is the first Tier Eight circuit.")));

assembly_line.recipeBuilder().inputs([<metaitem:component.smd.resistor> * 48, <gregtech:meta_item_2:32479>, <metaitem:component.smd.transistor> * 36, <metaitem:component.smd.capacitor> * 32, <metaitem:component.smd.diode> * 24, <enderio:item_material:19> * 4, <extendedcrafting:material:18> * 8, <contenttweaker:crystalprocessorarray> * 2, <gregtech:frame_hsse> * 4, <ore:wireGtSingleEnderium> * 8]).fluidInputs(<liquid:soldering_alloy> * 1440).outputs([<contenttweaker:crystalprocessormainframe>]).duration(500).EUt(30000).buildAndRegister();
 
 
//Wetware Processor Array 
<metaitem:circuit.wetware_super_computer>.addTooltip(format.aqua(format.italic("This is the second and final Tier Eight circuit.")));

assembly_line.recipeBuilder().inputs(<gregtech:meta_item_2:32459> * 32, <gregtech:meta_item_1:19391> * 32, <gregtech:meta_item_2:32460> * 32, <gregtech:meta_item_2:32458> * 16, <gregtech:meta_item_2:32457> * 16, <gregtech:meta_item_1:12022> * 4, <gregtech:cable:354> * 8, <gregtech:meta_item_2:32499> * 2, <enderio:item_material:44> * 8).fluidInputs(<liquid:soldering_alloy> * 1152).outputs(<gregtech:meta_item_2:32500>).duration(600).EUt(122880).buildAndRegister();



/////////////////   Tier Nine Circuits | Infinite Tier   ///////////////////////



<metaitem:circuit.wetware_mainframe>.addTooltip(format.aqua(format.italic("This is the first and only Tier Nine circuit.")));
















<enderio:item_basic_capacitor>.displayName = "Basic RF Capacitor";
<enderio:item_basic_capacitor:1>.displayName = "Double-Layer RF Capacitor";
<enderio:item_basic_capacitor:2>.displayName = "Octadic RF Capacitor";


	
//Cables By Hand
recipes.removeByRecipeName("gregtech:tin_cable_1");
recipes.removeByRecipeName("gregtech:red_alloy_cable_1");
recipes.addShapeless(<gregtech:cable:5071>, [<gregtech:cable:71>,<gregtech:meta_item_1:12152>]);		//tin
recipes.addShapeless(<gregtech:cable:5237>, [<gregtech:cable:237>,<gregtech:meta_item_1:12152>]);		//red alloy
recipes.addShapeless(<gregtech:cable:5018>, [<gregtech:cable:18>,<gregtech:meta_item_1:12152>]);		//copper

//Rubber by hand
recipes.addShaped(<gregtech:meta_item_1:12152>,[[<gregtech:meta_tool:6>],[<gregtech:meta_item_1:32627>],[<gregtech:meta_item_1:32627>]]);	

//Resonant Clathrate
furnace.remove(<minecraft:ender_pearl>);
furnace.addRecipe(<contenttweaker:pulsatingdust>, <thermalfoundation:material:895>, 0.0);

//EnderIO Conduits
recipes.remove(<enderio:item_power_conduit>);
recipes.remove(<enderio:item_power_conduit:1>);
recipes.remove(<enderio:item_power_conduit:2>);
recipes.remove(<enderio:item_item_conduit>);
recipes.remove(<enderio:item_endergy_conduit:2>);
recipes.remove(<enderio:item_endergy_conduit:5>);
recipes.remove(<enderio:item_redstone_conduit>);
recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.remove(<enderio:item_endergy_conduit:8>);
recipes.remove(<enderio:item_endergy_conduit:9>);
recipes.remove(<enderio:item_endergy_conduit:10>);
recipes.remove(<enderio:item_endergy_conduit:11>);
recipes.remove(<enderio:item_endergy_conduit:1>);
recipes.remove(<enderio:item_endergy_conduit:6>);
recipes.remove(<enderio:item_endergy_conduit>);
recipes.remove(<enderio:item_endergy_conduit:4>);

//LV Tier - Conductive Iron

recipes.remove(<gregtech:machine:10660>);
recipes.remove(<gregtech:machine:10661>);
recipes.remove(<gregtech:machine:10664>);
recipes.remove(<gregtech:machine:10665>);
recipes.addShaped(<enderio:item_power_conduit> * 3, [									//Conductive Iron Conduit
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:700>,<gregtech:cable:700>,<gregtech:cable:700>],
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_power_conduit>.displayName = "Conductive Iron Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:700> * 3, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_power_conduit> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 LV ceu
recipes.addShaped(<gregtech:machine:10660>, [[<ore:wireGtQuadrupleConductiveIron>, <ore:circuitBasic>, <ore:wireGtQuadrupleConductiveIron>], [<enderio:item_power_conduit>, <gregtech:machine:501>, <enderio:item_power_conduit>], [<ore:wireGtQuadrupleConductiveIron>, <ore:chestWood>, <ore:wireGtQuadrupleConductiveIron>]]);
//x4 LV cef
recipes.addShaped(<gregtech:machine:10661>, [[<enderio:item_power_conduit>, <ore:circuitBasic>, <enderio:item_power_conduit>], [<ore:wireGtQuadrupleConductiveIron>, <gregtech:machine:501>, <ore:wireGtQuadrupleConductiveIron>], [<enderio:item_power_conduit>, <ore:chestWood>, <enderio:item_power_conduit>]]);
//x16 LV ceu
recipes.addShaped(<gregtech:machine:10664>, [[<ore:wireGtHexConductiveIron>, <ore:circuitBasic>, <ore:wireGtHexConductiveIron>], [<enderio:item_power_conduit>, <gregtech:machine:501>, <enderio:item_power_conduit>], [<ore:wireGtHexConductiveIron>, <ore:chestWood>, <ore:wireGtHexConductiveIron>]]);
//x16 LV cef
recipes.addShaped(<gregtech:machine:10665>, [[<enderio:item_power_conduit>, <ore:circuitBasic>, <enderio:item_power_conduit>], [<ore:wireGtHexConductiveIron>, <gregtech:machine:501>, <ore:wireGtHexConductiveIron>], [<enderio:item_power_conduit>, <ore:chestWood>, <enderio:item_power_conduit>]]);


//MV Tier - Energetic Alloy

recipes.remove(<gregtech:machine:10668>);
recipes.remove(<gregtech:machine:10669>);
recipes.remove(<gregtech:machine:10672>);
recipes.remove(<gregtech:machine:10673>);
recipes.addShaped(<enderio:item_power_conduit:1> * 3, [									//Energetic Alloy Conduit
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:701>,<enderio:item_power_conduit>,<gregtech:cable:701>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_power_conduit:1>.displayName = "Energetic Alloy Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:701> * 2, <enderio:item_power_conduit>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_power_conduit:1> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 MV ceu
recipes.addShaped(<gregtech:machine:10668>, [[<ore:wireGtQuadrupleEnergeticAlloy>, <ore:circuitGood>, <ore:wireGtQuadrupleEnergeticAlloy>], [<enderio:item_power_conduit:1>, <gregtech:machine:502>,<enderio:item_power_conduit:1>], [<ore:wireGtQuadrupleEnergeticAlloy>, <ore:chestWood>, <ore:wireGtQuadrupleEnergeticAlloy>]]);
//x4 MV cef
recipes.addShaped(<gregtech:machine:10669>, [[<enderio:item_power_conduit:1>, <ore:circuitGood>, <enderio:item_power_conduit:1>], [<ore:wireGtQuadrupleEnergeticAlloy>, <gregtech:machine:502>, <ore:wireGtQuadrupleEnergeticAlloy>], [<enderio:item_power_conduit:1>, <ore:chestWood>, <enderio:item_power_conduit:1>]]);
//x16 MV ceu
recipes.addShaped(<gregtech:machine:10672>, [[<ore:wireGtHexEnergeticAlloy>, <ore:circuitGood>, <ore:wireGtHexEnergeticAlloy>], [<enderio:item_power_conduit:1>, <gregtech:machine:502>, <enderio:item_power_conduit:1>], [<ore:wireGtHexEnergeticAlloy>, <ore:chestWood>, <ore:wireGtHexEnergeticAlloy>]]);
//x16 MV cef
recipes.addShaped(<gregtech:machine:10673>, [[<enderio:item_power_conduit:1>, <ore:circuitGood>, <enderio:item_power_conduit:1>], [<ore:wireGtHexEnergeticAlloy>, <gregtech:machine:502>, <ore:wireGtHexEnergeticAlloy>], [<enderio:item_power_conduit:1>, <ore:chestWood>, <enderio:item_power_conduit:1>]]);


//HV Tier - Vibrant Alloy 

recipes.remove(<gregtech:machine:10676>);
recipes.remove(<gregtech:machine:10677>);
recipes.remove(<gregtech:machine:10680>);
recipes.remove(<gregtech:machine:10681>);
recipes.addShaped(<enderio:item_power_conduit:2> * 3, [									//vibrant alloy conduit
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:702>,<enderio:item_power_conduit:1>,<gregtech:cable:702>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_power_conduit:2>.displayName = "Vibrant Alloy Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:702> * 2, <enderio:item_power_conduit:1>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_power_conduit:2> * 4]).duration(80).EUt(16).buildAndRegister();	
//x4 HV ceu
recipes.addShaped(<gregtech:machine:10676>, [[<ore:wireGtQuadrupleVibrantAlloy>, <ore:circuitAdvanced>, <ore:wireGtQuadrupleVibrantAlloy>], [<enderio:item_power_conduit:2>, <gregtech:machine:503>, <enderio:item_power_conduit:2>], [<ore:wireGtQuadrupleVibrantAlloy>, <ore:chestWood>, <ore:wireGtQuadrupleVibrantAlloy>]]);
//x4 HV cef
recipes.addShaped(<gregtech:machine:10677>, [[<enderio:item_power_conduit:2>, <ore:circuitAdvanced>, <enderio:item_power_conduit:2>], [<ore:wireGtQuadrupleVibrantAlloy>, <gregtech:machine:503>, <ore:wireGtQuadrupleVibrantAlloy>], [<enderio:item_power_conduit:2>, <ore:chestWood>, <enderio:item_power_conduit:2>]]);
//x16 HV ceu
recipes.addShaped(<gregtech:machine:10680>, [[<ore:wireGtHexVibrantAlloy>, <ore:circuitAdvanced>, <ore:wireGtHexVibrantAlloy>], [<enderio:item_power_conduit:2>, <gregtech:machine:503>, <enderio:item_power_conduit:2>], [<ore:wireGtHexVibrantAlloy>, <ore:chestWood>, <ore:wireGtHexVibrantAlloy>]]);
//x16 HV cef
recipes.addShaped(<gregtech:machine:10681>, [[<enderio:item_power_conduit:2>, <ore:circuitAdvanced>, <enderio:item_power_conduit:2>], [<ore:wireGtHexVibrantAlloy>, <gregtech:machine:503>, <ore:wireGtHexVibrantAlloy>], [<enderio:item_power_conduit:2>, <ore:chestWood>, <enderio:item_power_conduit:2>]]);



//EV Tier - End Steel Conduit

recipes.remove(<gregtech:machine:10684>);
recipes.remove(<gregtech:machine:10685>);
recipes.remove(<gregtech:machine:10688>);
recipes.remove(<gregtech:machine:10689>);
recipes.addShaped(<enderio:item_endergy_conduit:1> * 3, [									//End Steel Conduit
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:712>,<enderio:item_power_conduit:2>,<gregtech:cable:712>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:1>.displayName = "End Steel Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:712> * 2, <enderio:item_power_conduit:2>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:1> * 4]).duration(80).EUt(16).buildAndRegister();	
//x4 EV ceu
recipes.addShaped(<gregtech:machine:10684>, [[<ore:wireGtQuadrupleEndSteel>, <ore:circuitExtreme>, <ore:wireGtQuadrupleEndSteel>], [<enderio:item_endergy_conduit:1>, <gregtech:machine:504>, <enderio:item_endergy_conduit:1>], [<ore:wireGtQuadrupleEndSteel>, <ore:chestWood>, <ore:wireGtQuadrupleEndSteel>]]);
//x4 EV cef
recipes.addShaped(<gregtech:machine:10685>, [[<enderio:item_endergy_conduit:1>, <ore:circuitExtreme>, <enderio:item_endergy_conduit:1>], [<ore:wireGtQuadrupleEndSteel>, <gregtech:machine:504>, <ore:wireGtQuadrupleEndSteel>], [<enderio:item_endergy_conduit:1>, <ore:chestWood>,<enderio:item_endergy_conduit:1>]]);
//x16 EV ceu
recipes.addShaped(<gregtech:machine:10688>, [[<ore:wireGtHexEndSteel>, <ore:circuitExtreme>, <ore:wireGtHexEndSteel>], [<enderio:item_endergy_conduit:1>, <gregtech:machine:504>, <enderio:item_endergy_conduit:1>], [<ore:wireGtHexEndSteel>, <ore:chestWood>, <ore:wireGtHexEndSteel>]]);
//x16 EV cef
recipes.addShaped(<gregtech:machine:10689>, [[<enderio:item_endergy_conduit:1>, <ore:circuitExtreme>, <enderio:item_endergy_conduit:1>], [<ore:wireGtHexEndSteel>, <gregtech:machine:504>, <ore:wireGtHexEndSteel>], [<enderio:item_endergy_conduit:1>, <ore:chestWood>, <enderio:item_endergy_conduit:1>]]);

	
//IV Tier - Lumium Conduit

recipes.remove(<gregtech:machine:10692>);
recipes.remove(<gregtech:machine:10693>);
recipes.remove(<gregtech:machine:10696>);
recipes.remove(<gregtech:machine:10697>);	
recipes.addShaped(<enderio:item_endergy_conduit:6> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:706>,<enderio:item_endergy_conduit:1> ,<gregtech:cable:706>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:6>.displayName = "Lumium Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:706> * 2, <enderio:item_endergy_conduit:1> , <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:6> * 4]).duration(80).EUt(16).buildAndRegister();

//x4 IV ceu
recipes.addShaped(<gregtech:machine:10692>, [[<ore:wireGtQuadrupleLumium>, <ore:circuitElite>, <ore:wireGtQuadrupleLumium>], [<enderio:item_endergy_conduit:6>, <gregtech:machine:505>, <enderio:item_endergy_conduit:6>], [<ore:wireGtQuadrupleLumium>, <ore:chestWood>, <ore:wireGtQuadrupleLumium>]]);
//x4 IV cef
recipes.addShaped(<gregtech:machine:10693>, [[<enderio:item_endergy_conduit:6>, <ore:circuitElite>, <enderio:item_endergy_conduit:6>], [<ore:wireGtQuadrupleLumium>, <gregtech:machine:505>, <ore:wireGtQuadrupleLumium>], [<enderio:item_endergy_conduit:6>, <ore:chestWood>,<enderio:item_endergy_conduit:6>]]);
//x16 IV ceu
recipes.addShaped(<gregtech:machine:10696>, [[<ore:wireGtHexLumium>, <ore:circuitElite>, <ore:wireGtHexLumium>], [<enderio:item_endergy_conduit:6>, <gregtech:machine:505>, <enderio:item_endergy_conduit:6>], [<ore:wireGtHexLumium>, <ore:chestWood>, <ore:wireGtHexLumium>]]);
//x16 IV cef
recipes.addShaped(<gregtech:machine:10697>, [[<enderio:item_endergy_conduit:6>, <ore:circuitElite>, <enderio:item_endergy_conduit:6>], [<ore:wireGtHexLumium>, <gregtech:machine:505>, <ore:wireGtHexLumium>], [<enderio:item_endergy_conduit:6>, <ore:chestWood>, <enderio:item_endergy_conduit:6>]]);



//LUV Tier - Signalum Conduit

recipes.remove(<gregtech:machine:10700>);
recipes.remove(<gregtech:machine:10701>);
recipes.remove(<gregtech:machine:10704>);
recipes.remove(<gregtech:machine:10705>);
recipes.addShaped(<enderio:item_endergy_conduit:4> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:707>,<enderio:item_endergy_conduit:6>,<gregtech:cable:707>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:4>.displayName = "Signalum Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:707> * 2, <enderio:item_endergy_conduit:6>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:4> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 LUV ceu
recipes.addShaped(<gregtech:machine:10700>, [[<ore:wireGtQuadrupleSignalum>, <ore:circuitMaster>, <ore:wireGtQuadrupleSignalum>], [<enderio:item_endergy_conduit:4>, <gregtech:machine:506>, <enderio:item_endergy_conduit:4>], [<ore:wireGtQuadrupleSignalum>, <ore:chestWood>, <ore:wireGtQuadrupleSignalum>]]);
//x4 LUV cef
recipes.addShaped(<gregtech:machine:10701>, [[<enderio:item_endergy_conduit:4>, <ore:circuitMaster>, <enderio:item_endergy_conduit:4>], [<ore:wireGtQuadrupleSignalum>, <gregtech:machine:506>, <ore:wireGtQuadrupleSignalum>], [<enderio:item_endergy_conduit:4>, <ore:chestWood>,<enderio:item_endergy_conduit:4>]]);
//x16 LUV ceu
recipes.addShaped(<gregtech:machine:10704>, [[<ore:wireGtHexSignalum>, <ore:circuitMaster>, <ore:wireGtHexSignalum>], [<enderio:item_endergy_conduit:4>, <gregtech:machine:506>, <enderio:item_endergy_conduit:4>], [<ore:wireGtHexSignalum>, <ore:chestWood>, <ore:wireGtHexSignalum>]]);
//x16 LUV cef
recipes.addShaped(<gregtech:machine:10705>, [[<enderio:item_endergy_conduit:4>, <ore:circuitMaster>, <enderio:item_endergy_conduit:4>], [<ore:wireGtHexSignalum>, <gregtech:machine:506>, <ore:wireGtHexSignalum>], [<enderio:item_endergy_conduit:4>, <ore:chestWood>, <enderio:item_endergy_conduit:4>]]);



//ZPM Tier - Enderium Conduit	

recipes.remove(<gregtech:machine:10708>);
recipes.remove(<gregtech:machine:10709>);
recipes.remove(<gregtech:machine:10712>);
recipes.remove(<gregtech:machine:10713>);
recipes.addShaped(<enderio:item_endergy_conduit> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:708>,<enderio:item_endergy_conduit:4>,<gregtech:cable:708>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit>.displayName = "Enderium Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:708>* 2, <enderio:item_endergy_conduit:4>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 ZPM ceu
recipes.addShaped(<gregtech:machine:10708>, [[<ore:wireGtQuadrupleEnderium>, <ore:circuitUltimate>, <ore:wireGtQuadrupleEnderium>], [<enderio:item_endergy_conduit>, <gregtech:machine:507>, <enderio:item_endergy_conduit>], [<ore:wireGtQuadrupleEnderium>, <ore:chestWood>, <ore:wireGtQuadrupleEnderium>]]);
//x4 ZPM cef
recipes.addShaped(<gregtech:machine:10709>, [[<enderio:item_endergy_conduit>, <ore:circuitUltimate>, <enderio:item_endergy_conduit>], [<ore:wireGtQuadrupleEnderium>, <gregtech:machine:507>, <ore:wireGtQuadrupleEnderium>], [<enderio:item_endergy_conduit>, <ore:chestWood>,<enderio:item_endergy_conduit>]]);
//x16 ZPM ceu
recipes.addShaped(<gregtech:machine:10712>, [[<ore:wireGtHexEnderium>, <ore:circuitUltimate>, <ore:wireGtHexEnderium>], [<enderio:item_endergy_conduit>, <gregtech:machine:507>, <enderio:item_endergy_conduit>], [<ore:wireGtHexEnderium>, <ore:chestWood>, <ore:wireGtHexEnderium>]]);
//x16 ZPM cef
recipes.addShaped(<gregtech:machine:10713>, [[<enderio:item_endergy_conduit>, <ore:circuitUltimate>, <enderio:item_endergy_conduit>], [<ore:wireGtHexEnderium>, <gregtech:machine:507>, <ore:wireGtHexEnderium>], [<enderio:item_endergy_conduit>, <ore:chestWood>, <enderio:item_endergy_conduit>]]);


//UV Tier - Draconium Conduit

recipes.remove(<gregtech:machine:10716>);
recipes.remove(<gregtech:machine:10717>);
recipes.remove(<gregtech:machine:10720>);
recipes.remove(<gregtech:machine:10721>);
recipes.addShaped(<enderio:item_endergy_conduit:10> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:710>,<enderio:item_endergy_conduit>,<gregtech:cable:710>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:10>.displayName = "Draconium Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:710>* 2, <enderio:item_endergy_conduit>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:10> * 4]).duration(80).EUt(16).buildAndRegister();
//x4 UV ceu
recipes.addShaped(<gregtech:machine:10716>, [[<ore:wireGtQuadrupleDraconium>, <ore:circuitSuperconductor>, <ore:wireGtQuadrupleDraconium>], [<enderio:item_endergy_conduit:10>, <gregtech:machine:508>, <enderio:item_endergy_conduit:10>], [<ore:wireGtQuadrupleDraconium>, <ore:chestWood>, <ore:wireGtQuadrupleDraconium>]]);
//x4 UV cef
recipes.addShaped(<gregtech:machine:10717>, [[<enderio:item_endergy_conduit:10>, <ore:circuitSuperconductor>, <enderio:item_endergy_conduit:10>], [<ore:wireGtQuadrupleDraconium>, <gregtech:machine:508>, <ore:wireGtQuadrupleDraconium>], [<enderio:item_endergy_conduit:10>, <ore:chestWood>,<enderio:item_endergy_conduit:10>]]);
//x16 UV ceu
recipes.addShaped(<gregtech:machine:10720>, [[<ore:wireGtHexDraconium>, <ore:circuitSuperconductor>, <ore:wireGtHexDraconium>], [<enderio:item_endergy_conduit:10>, <gregtech:machine:508>, <enderio:item_endergy_conduit:10>], [<ore:wireGtHexDraconium>, <ore:chestWood>, <ore:wireGtHexDraconium>]]);
//x16 UV cef
recipes.addShaped(<gregtech:machine:10721>, [[<enderio:item_endergy_conduit:10>, <ore:circuitSuperconductor>, <enderio:item_endergy_conduit:10>], [<ore:wireGtHexDraconium>, <gregtech:machine:508>, <ore:wireGtHexDraconium>], [<enderio:item_endergy_conduit:10>, <ore:chestWood>, <enderio:item_endergy_conduit:10>]]);


//MAX Tier - Superconductor
recipes.addShaped(<enderio:item_endergy_conduit:11> * 3, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:354>,<enderio:item_endergy_conduit:10>,<gregtech:cable:354>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
<enderio:item_endergy_conduit:11>.displayName = "Superconductor Energy Conduit";
assembler.recipeBuilder().inputs([<gregtech:cable:354>* 2, <enderio:item_endergy_conduit:10>, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_endergy_conduit:11> * 4]).duration(80).EUt(16).buildAndRegister();
	
//removing bad field generator assembling recipes
assembler.findRecipe(30, [<ore:circuitBasic>.firstItem * 4, <ore:dustEnderPearl>.firstItem], [<liquid:osmium> * 288]).remove();
assembler.findRecipe(30, [<ore:circuitBasic>.firstItem * 4, <ore:dustEnderPearl>.firstItem], [<liquid:osmium> * 288]).remove();
assembler.findRecipe(120, [<ore:circuitGood>.firstItem * 4, <ore:dustEnderEye>.firstItem], [<liquid:osmium> * 576]).remove();
assembler.findRecipe(120, [<ore:circuitGood>.firstItem * 4, <ore:dustEnderEye>.firstItem], [<liquid:osmium> * 576]).remove();
assembler.findRecipe(480, [<ore:circuitAdvanced>.firstItem * 4, <gregtech:meta_item_1:32724>], [<liquid:osmium> * 1152]).remove();
assembler.findRecipe(480, [<ore:circuitAdvanced>.firstItem * 4, <gregtech:meta_item_1:32724>], [<liquid:osmium> * 1152]).remove();
assembler.findRecipe(1920, [<ore:circuitExtreme>.firstItem * 4, <gregtech:meta_item_1:2331>], [<liquid:osmium> * 2304]).remove();
assembler.findRecipe(1920, [<ore:circuitElite>.firstItem * 4, <gregtech:meta_item_1:2331>], [<liquid:osmium> * 2304]).remove();
assembler.findRecipe(7680, [<ore:circuitMaster>.firstItem * 4, <gregtech:meta_item_1:32725>], [<liquid:osmium> * 4608]).remove();
assembler.findRecipe(7680, [<ore:circuitElite>.firstItem * 4, <gregtech:meta_item_1:32725>], [<liquid:osmium> * 4608]).remove();

//Item conduit - by hand
recipes.addShaped(<enderio:item_item_conduit> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtSinglePulsatingIron>,<ore:wireGtSinglePulsatingIron>,<ore:wireGtSinglePulsatingIron>],
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//redstone conduit - by hand
recipes.addShaped(<enderio:item_redstone_conduit> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:237>,<gregtech:cable:237>,<gregtech:cable:237>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//me conduit - by hand
recipes.addShaped(<enderio:item_me_conduit> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<appliedenergistics2:part:36>,<appliedenergistics2:part:36>,<appliedenergistics2:part:36>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//ender fluid conduit - by hand
recipes.addShaped(<enderio:item_liquid_conduit:2> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:cable:702>,<enderio:item_liquid_conduit:1>,<gregtech:cable:702>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

//redstone conduit - assembler
assembler.recipeBuilder()
    .inputs([<gregtech:cable:237> * 3, <ore:itemConduitBinder> * 6])
    .outputs([<enderio:item_redstone_conduit> * 8])
    .duration(80).EUt(16).buildAndRegister();

//item conduit - assembler
assembler.recipeBuilder()
    .inputs([<ore:wireGtSinglePulsatingIron> * 3, <ore:itemConduitBinder> * 6])
    .outputs([<enderio:item_item_conduit> * 8])
    .duration(80).EUt(16).buildAndRegister();

//ender fluid conduit - assembler
assembler.recipeBuilder()
    .inputs([<gregtech:cable:702> * 2, <enderio:item_liquid_conduit:1>, <ore:itemConduitBinder> * 6])
    .outputs([<enderio:item_liquid_conduit:2> * 8])
    .duration(80).EUt(16).buildAndRegister();

mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:2>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:3>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:5>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:7>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:8>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:9>);


//Ender Pearls
alloy.recipeBuilder().inputs([<minecraft:diamond>,<ore:dustPulsating>]).outputs([<minecraft:ender_pearl>]).duration(300).EUt(16).buildAndRegister();

//Wrought Iron
furnace.remove(<gregtech:meta_item_1:9197>);
furnace.addRecipe(<gregtech:meta_item_1:10197>, <minecraft:iron_ingot>, 0.0);
	
//LV Casing
recipes.removeByRecipeName("gregtech:casing_lv");

// remove the steel plate assembler recipe for LV casing
assembler.findRecipe(16, [<gregtech:meta_item_1:12184> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], [null]).remove();

// use wrought iron instead
assembler.recipeBuilder()
    .inputs(<ore:plateWroughtIron> * 8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs([<gregtech:machine_casing:1>])
    .duration(30).EUt(16).buildAndRegister();

// Buckets from iron plates
assembler.recipeBuilder()
    .inputs(<ore:plateIron> * 3)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .outputs([<minecraft:bucket>])
    .duration(30).EUt(16).buildAndRegister();

	
//LV Hull
recipes.remove(<gregtech:machine:501>);	
recipes.addShaped(<gregtech:machine:501>, [
	[<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], 
	[<ore:cableGtSingleTin>, <gregtech:machine_casing:1>, <ore:cableGtSingleTin>]]);	
assembler.findRecipe(16, [<gregtech:cable:5071> * 2, <gregtech:machine_casing:1>], [<liquid:plastic> * 288]).remove();	

//LV Motor - with Fine Copper Wires
recipes.addShaped(<gregtech:meta_item_1:32600>, [
	[<ore:cableGtSingleTin>, <gregtech:meta_item_2:16018>, <ore:stickIron>], 
	[<gregtech:meta_item_2:16018>, <ore:stickIronMagnetic>, <gregtech:meta_item_2:16018>],
	[<ore:stickIron>, <gregtech:meta_item_2:16018>, <ore:cableGtSingleTin>]]);

//LV Motor - Assembler (iron parts)
assembler.findRecipe(10,
    [<ore:cableGtSingleTin>.firstItem * 2,
     <ore:stickIron>.firstItem * 2,
     <ore:stickIronMagnetic>.firstItem],
    [<liquid:copper> * 288]).remove();

assembler.recipeBuilder()
    .outputs(<gregtech:meta_item_1:32600>)
    .inputs(<ore:cableGtSingleTin> * 2,
            <ore:stickIron> * 2,
            <ore:stickIronMagnetic>)
    .fluidInputs(<liquid:copper> * 144)
    .duration(600).EUt(10).buildAndRegister();

//LV Motor - Assembler (steel parts)
assembler.findRecipe(10,
    [<ore:cableGtSingleTin>.firstItem * 2,
     <ore:stickSteel>.firstItem * 2,
     <ore:stickSteelMagnetic>.firstItem],
    [<liquid:copper> * 288]).remove();

assembler.recipeBuilder()
    .outputs(<gregtech:meta_item_1:32600>)
    .inputs(<ore:cableGtSingleTin> * 2,
            <ore:stickSteel> * 2,
            <ore:stickSteelMagnetic>)
    .fluidInputs(<liquid:copper> * 144)
    .duration(600).EUt(10).buildAndRegister();

//Diode
recipes.remove(<metaitem:component.diode>);
recipes.addShaped(<metaitem:component.diode> * 4, [[null, <minecraft:glass_pane>, null], [<gregtech:meta_item_2:16071>, <ore:dustTinyGallium>, <gregtech:meta_item_2:16071>], [null, <minecraft:glass_pane>, null]]);	
	
//Wood Pulp
recipes.addShapeless(<gregtech:meta_item_1:2196> * 4,[<ore:logWood>,<gregtech:meta_tool:12>]);	

//Charcoal
furnace.addRecipe(<minecraft:coal:1>, <minecraft:log>, 0.0);

//Red Alloy Dust
recipes.addShapeless(<gregtech:meta_item_1:2237>, [<gregtech:meta_item_1:2018>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]);

//Scannable
recipes.remove(<scannable:module_blank>);
recipes.addShaped(<scannable:module_blank>, [
	[<metaitem:board.coated>,<metaitem:board.coated>,<metaitem:board.coated>],
	[<metaitem:board.coated>,<metaitem:board.coated>,<metaitem:board.coated>],
	[<gregtech:cable:26>,<gregtech:cable:26>,<gregtech:cable:26>]]);

recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>, [
	[<gregtech:meta_item_1:32680>,null,<gregtech:meta_item_1:32680>],
	[<gregtech:meta_item_1:12033>,<ore:circuitBasic>,<gregtech:meta_item_1:12033>],
	[<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:32518>,<gregtech:meta_item_1:12033>]]);
	
recipes.addShapeless(<extrautils2:endershard> * 2,[<enderio:item_material:62>]);
recipes.addShapeless(<enderio:item_material:62>,[<extrautils2:endershard>,<extrautils2:endershard>]);
recipes.removeByRecipeName("enderio:ender_defragmentation");
recipes.addShaped(<minecraft:ender_pearl>,[[<enderio:item_material:62>,<enderio:item_material:62>],[<enderio:item_material:62>,<enderio:item_material:62>]]);

autoclave.findRecipe(120, [<gregtech:meta_item_2:32572> * 9], [<liquid:water> * 1800]).remove();	


	
//Pyrolyse Oven
recipes.remove(<gregtech:machine:514>);	
recipes.addShaped(<gregtech:machine:514>, [
	[<gregtech:meta_item_1:32640>, <ore:circuitGood>, <ore:wireGtQuadrupleCupronickel>], 
	[<ore:circuitGood>, <gregtech:machine:500>, <ore:circuitGood>], 
	[<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:32610>, <ore:wireGtQuadrupleCupronickel>]]);
	

val wrench = <ore:gtceWrenches>;


// ULV Machine Casing
recipes.remove(<gregtech:machine_casing>);
makeShaped("of_ulv_casing", <gregtech:machine_casing>,
	["PPP",
	 "PWP",
	 "PPP"],
	{ P : <ore:plateIron>,  //Iron Plate
	  W : wrench});

// LV Machine Casing
makeShaped("of_lv_casing", <gregtech:machine_casing:1>,
	["PPP",
	 "PWP",
	 "PPP"],
	{ P : <ore:plateWroughtIron>,  //Wrought Iron Plate
	  W : wrench});

// Microversium Machine Casing
makeShaped("of_microverse_casing", <contenttweaker:microverse_casing> * 2,
	["PPP",
	 "PWP",
	 "PPP"],
	{ P : <ore:ingotMicroversium>,  //Microversium Ingot
	  W : wrench});

// LuV Machine Casing
makeShaped("of_luv_casing", <gregtech:machine_casing:6>,
	["PPP",
	 "PWP",
	 "PPP"],
	{ P : <ore:plateLumium>,  //Lumium Plate
	  W : wrench});



assembler.findRecipe(16,[<gregtech:meta_item_1:12197> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], [null]).remove();	
assembler.findRecipe(4, [<gregtech:meta_item_1:12197> * 2, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [null]).remove();	
assembler.findRecipe(4, [<gregtech:meta_item_1:12033> * 2, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [null]).remove();	
assembler.findRecipe(4, [<gregtech:meta_item_1:12197> * 6, <gregtech:meta_item_1:32766>.withTag({Configuration: 6})], [null]).remove();	
assembler.findRecipe(4, [<gregtech:meta_item_1:12033> * 6, <gregtech:meta_item_1:32766>.withTag({Configuration: 6})], [null]).remove();	
assembler.findRecipe(4, [<gregtech:meta_item_1:12197> * 7, <gregtech:meta_item_1:32766>.withTag({Configuration: 7})], [null]).remove();	
assembler.findRecipe(4, [<gregtech:meta_item_1:12033> * 7, <gregtech:meta_item_1:32766>.withTag({Configuration: 7})], [null]).remove();	
assembler.findRecipe(2, [<gregtech:meta_item_1:12197> * 5, <minecraft:chest>], [null]).remove();	
assembler.findRecipe(2, [<gregtech:meta_item_1:12033> * 5, <minecraft:chest>], [null]).remove();	
assembler.findRecipe(4, [<gregtech:meta_item_1:12197> * 4, <minecraft:redstone>], [null]).remove();	
assembler.findRecipe(4, [<gregtech:meta_item_1:12033> * 4, <minecraft:redstone>], [null]).remove();	
assembler.recipeBuilder().inputs(<ore:plateIron> * 8).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8})).outputs([<gregtech:machine_casing>]).duration(30).EUt(16).buildAndRegister();
assembler.findRecipe(16, [<gregtech:cable:5035> * 2, <gregtech:machine_casing>], [<liquid:plastic> * 288]).remove();	
assembler.recipeBuilder().inputs(<ore:plateIron> * 3,<gregtech:machine_casing>,<gregtech:cable:5237> * 2).outputs([<gregtech:machine:500>]).duration(30).EUt(16).buildAndRegister();

//ULV Hull
recipes.remove(<gregtech:machine:500>);	
recipes.addShaped(<gregtech:machine:500>, [
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
	[<ore:cableGtSingleRedAlloy>, <gregtech:machine_casing>, <ore:cableGtSingleRedAlloy>]]);	
	
//Pyrolyse Oven

//Remove SoG Recipes
pyro.findRecipe(96, [<minecraft:sugar> * 23, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(64, [<minecraft:sugar> * 23, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [null]).remove();

//Remove GTCE Recipes
pyro.findRecipe(96, [<ore:gemCoal>.firstItem * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [null]).remove();
pyro.findRecipe(64, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [null]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(192, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [null]).remove();	
pyro.findRecipe(64, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 3})], [null]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 4})], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(64, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 5})], [null]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 6})], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(64, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 7})], [null]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], [<liquid:nitrogen> * 400]).remove();	
pyro.findRecipe(96, [<minecraft:log> * 16, <gregtech:meta_item_1:32766>.withTag({Configuration: 9})], [<liquid:nitrogen> * 400]).remove();

//Creosote and Charcoal
pyro.recipeBuilder()
	.inputs([<ore:logWood> * 16])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.fluidInputs([<liquid:steam> * 4000])
	.outputs([<minecraft:coal:1> * 20])
	.fluidOutputs([<liquid:creosote> * 4000])
	.duration(600).EUt(30).buildAndRegister();

//Wood Vinegar and Charcoal
pyro.recipeBuilder()
	.inputs([<ore:logWood> * 16])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:steam> * 4000])
	.outputs([<minecraft:coal:1> * 20])
	.fluidOutputs([<liquid:wood_vinegar> * 3000])
	.duration(600).EUt(30).buildAndRegister();

//Wood Gas and Charcoal
pyro.recipeBuilder()
	.inputs([<ore:logWood> * 16])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
	.fluidInputs([<liquid:steam> * 4000])
	.outputs([<minecraft:coal:1> * 20])
	.fluidOutputs([<liquid:wood_gas> * 1500])
	.duration(600).EUt(30).buildAndRegister();

//Wood Tar and Charcoal
pyro.recipeBuilder()
	.inputs([<ore:logWood> * 16])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
	.fluidInputs([<liquid:steam> * 4000])
	.outputs([<minecraft:coal:1> * 20])
	.fluidOutputs([<liquid:wood_tar> * 1500])
	.duration(600).EUt(30).buildAndRegister();

//Charcoal Byproducts and Charcoal
pyro.recipeBuilder()
	.inputs([<ore:logWood> * 16])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.fluidInputs([<liquid:steam> * 4000])
	.outputs([<minecraft:coal:1> * 20])
	.fluidOutputs([<liquid:charcoal_byproducts> * 4000])
	.duration(600).EUt(30).buildAndRegister();

//Phenol and Coke
pyro.recipeBuilder()
	.inputs([<minecraft:coal> * 16])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:steam> * 4000])
	.outputs([<gregtech:meta_item_1:8357> * 20])
	.fluidOutputs([<liquid:phenol> * 1000])
	.duration(600).EUt(30).buildAndRegister();

//Phenol and Coke dust
pyro.recipeBuilder()
	.inputs([<gregtech:meta_item_1:2106> * 16])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs([<liquid:steam> * 4000])
	.outputs([<gregtech:meta_item_1:2357> * 20])
	.fluidOutputs([<liquid:phenol> * 1000])
	.duration(600).EUt(30).buildAndRegister();

reactor.recipeBuilder().inputs(<metaitem:board.coated>).fluidInputs([<liquid:phenol> * 100]).outputs([<metaitem:board.phenolic>]).duration(100).EUt(8).buildAndRegister();

assembler.findRecipe(8, [<ore:dustWood>.firstItem, <gregtech:meta_item_1:32301>], [<liquid:glue> * 100]).remove();	
assembler.findRecipe(8, [<ore:dustWood>.firstItem, <gregtech:meta_item_1:32301>], [<liquid:bisphenol_a> * 100]).remove();	

recipes.removeByRecipeName("gregtech:small_coil_annealed_copper_steel");
recipes.removeByRecipeName("gregtech:small_coil_copper_ferrite");
recipes.removeByRecipeName("gregtech:small_coil_annealed_copper_ferrite");
