import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import scripts.CommonVars.makeShaped as makeShaped;

<deepmoblearning:glitch_fragment>.addTooltip(format.aqua(format.italic(
    "Obtained by crushing Glitch Hearts against Obsidian.")));

<appliedenergistics2:material:1>.addTooltip(format.aqua(format.italic(
    "Obtained by charging with RF power in the AE2 Charger.")));

//Gravistar
autoclave.findRecipe(7680, [<minecraft:nether_star>], [<liquid:neutronium> * 288]).remove();
autoclave.recipeBuilder()
    .inputs(<minecraft:nether_star>)
    .fluidInputs(<liquid:neutronium> * 36)
    .outputs([<gregtech:meta_item_1:32726>])
    .duration(480).EUt(7680).buildAndRegister();

makeShaped("of_sunnarium_plates", <advsolars:sunnarium_plate> * 4, 
    ["RRR",
     "RSR",
     "RRR"],
    { S : <advsolars:sunnarium>, R : <gregtech:meta_item_2:32435> });

makeShaped("of_enriched_sunnarium", <advsolars:sunnarium_enriched> * 4,
    ["NAN",
     "ASA",
     "NAN"],
    { N : <contenttweaker:stabilizedneptunium>,
      A : <contenttweaker:stabilizedamericium>,
      S : <advsolars:sunnarium> });

makeShaped("of_enriched_sunnarium_plate", <advsolars:sunnarium_enriched_plate>,
    [" E ",
     "EPE",
     " E "],
    { E : <advsolars:sunnarium_enriched>, P : <advsolars:sunnarium_plate> });
	
electrolyzer.recipeBuilder()
    .inputs([<ore:dustSphalerite> * 3])
    .outputs([<gregtech:meta_item_1:2079>,
              <gregtech:meta_item_1:1079> * 2,
              <gregtech:meta_item_1:2065>,
              <gregtech:meta_item_1:1025>])
    .duration(200).EUt(30).buildAndRegister();

//Radon
electrolyzer.recipeBuilder()
    .inputs([<contenttweaker:radiumsalt>])
    .outputs([<gregtech:meta_item_1:2151>])
    .fluidOutputs(<liquid:radon> * 1000)
    .duration(200).EUt(2000).buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs([<minecraft:glass> * 4])
    .outputs([<minecraft:quartz>])
    .duration(100).EUt(20).buildAndRegister();


autoclave.findRecipe(40, [<gregtech:meta_item_1:2012>], [<liquid:platinum> * 1]).remove();

//Gem Sensor
makeShaped("of_gem_sensor", <contenttweaker:gemsensor>,
    [" O ",
     "PSP",
     " P "],
    { O : <advancedrocketry:satelliteprimaryfunction>,
      S : <metaitem:sensor.iv>,
      P : <ore:plateTungstenCarbide> });

//Composition Sensor
recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
makeShaped("of_composition_sensor", <advancedrocketry:satelliteprimaryfunction:1>,
    [" O ",
     "PSP",
     " P "],
    { O : <advancedrocketry:satelliteprimaryfunction>,
      S : <metaitem:sensor.hv>,
      P : <ore:plateStainlessSteel> });

//Wetware Boards
assembler.findRecipe(480,
    [<metaitem:board.multilayer.fiber_reinforced>, <ore:circuitGood>.firstItem],
    [<liquid:polystyrene> * 144]).remove();

reactor.recipeBuilder()
    .inputs([<metaitem:board.multilayer.fiber_reinforced>, <contenttweaker:draconicstemcells> * 8])
    .fluidInputs(<liquid:sterilized_growth_medium> * 4000)
    .outputs([<metaitem:board.wetware>])
    .fluidOutputs(<liquid:raw_growth_medium> * 3000)
    .duration(6000).EUt(3000).buildAndRegister();

reactor.recipeBuilder()
    .inputs([<minecraft:dragon_egg>])
    .fluidInputs(<liquid:sterilized_growth_medium> * 10000)
    .outputs([<contenttweaker:draconicstemcells> * 64])
    .duration(6000).EUt(25000).buildAndRegister();

//Growth Medium
reactor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2938>])
    .fluidInputs(<liquid:distilled_water> * 1000)
    .fluidOutputs([<liquid:raw_growth_medium> * 1000])
    .duration(200).EUt(200).buildAndRegister();

//Neutronium Plating
blast_furnace.recipeBuilder()
    .inputs([<avaritia:resource:2> * 9])
    .fluidInputs([<liquid:xenon> * 250])
    .outputs(<avaritia:resource:3>)
    .property("temperature", 9600)
    .duration(40).EUt(500000).buildAndRegister();

//Superconductor Wires
assembler.findRecipe(512,
    [<gregtech:cable:200> * 3,
     <ore:plateTungstenSteel>.firstItem * 3,
     <metaitem:electric.pump.lv>],
    [<liquid:nitrogen> * 2000]).remove();

assembler.findRecipe(512,
    [<gregtech:cable:135> * 3,
     <ore:plateTungstenSteel>.firstItem * 3,
     <metaitem:electric.pump.lv>],
    [<liquid:nitrogen> * 2000]).remove();

assembler.findRecipe(512,
    [<gregtech:cable:195> * 3,
     <ore:plateTungstenSteel>.firstItem * 3,
     <metaitem:electric.pump.lv>],
    [<liquid:nitrogen> * 2000]).remove();

freezer.recipeBuilder()
    .inputs(<gregtech:cable:710>)
    .fluidInputs([<liquid:moltennetherstar> * 144])
    .outputs(<gregtech:cable:354>)
    .duration(100).EUt(6000).buildAndRegister();

//t6 circuits
val t6c as IIngredient[] = [
    <metaitem:component.smd.capacitor> * 2,
    <metaitem:component.smd.transistor> * 2,
    <gregtech:meta_item_2:16200> * 2,
    <gtadditions:ga_meta_item:32015>,
    <gregtech:meta_item_2:32474>,
    <gregtech:meta_item_2:32481>];

assembler.findRecipe(28000, t6c, [<liquid:tin> * 144]).remove();
assembler.findRecipe(28000, t6c, [<liquid:soldering_alloy> * 72]).remove();

//t7 circuits
val t7c as IIngredient[] = [
    <gregtech:meta_item_2:16200> * 6,
    <gregtech:meta_item_2:32456> * 4,
    <metaitem:component.smd.capacitor> * 4,
    <metaitem:plate.random_access_memory> * 4,
    <metaitem:circuit.wetware_processor> * 2,
    <metaitem:board.wetware>];

assembler.findRecipe(34400, t7c, [<liquid:tin> * 288]).remove();
assembler.findRecipe(34400, t7c, [<liquid:soldering_alloy> * 144]).remove();

//t8 circuits
val t8c as IIngredient[] = [
    <gregtech:meta_item_2:16200> * 6,
    <metaitem:component.smd.diode> * 4,
    <metaitem:plate.nor_memory_chip> * 4,
    <metaitem:plate.random_access_memory> * 4,
    <metaitem:circuit.wetware_assembly> * 3,
    <metaitem:board.wetware> * 2];

assembler.findRecipe(34400, t8c, [<liquid:tin> * 288]).remove();
assembler.findRecipe(34400, t8c, [<liquid:soldering_alloy> * 144]).remove();

recipes.remove(<gregtech:meta_item_2:26708>);
recipes.remove(<gregtech:meta_item_2:26707>);



extractor.findRecipe(512, [<minecraft:egg>], [null]).remove();

extractor.recipeBuilder()
    .inputs(<contenttweaker:impossiblerealmdata>)
    .outputs([<contenttweaker:quantumflux>])
    .duration(100).EUt(3000).buildAndRegister();

recipes.remove(<extrautils2:rainbowgenerator>);
makeShaped("of_rainbow_generator", <extrautils2:rainbowgenerator>,
    ["OTO",
     "OHO",
     "OBO"],
    { O : <extrautils2:opinium:8>,
      H : <contenttweaker:heartofauniverse>,
      T : <extrautils2:rainbowgenerator:2>,
      B : <extrautils2:rainbowgenerator:1> });

recipes.remove(<craftelytra:elytra_wing>);
makeShaped("of_elytra_wing", <craftelytra:elytra_wing>,
    [" PP",
     "PE ",
     "PP "],
    { P : <gregtech:meta_item_1:12049>,
      E : <gregtech:meta_item_2:25113> });

recipes.remove(<minecraft:elytra>);
makeShaped("of_elytra", <minecraft:elytra>,
    ["   ", "WGW", "   "],
    { W : <craftelytra:elytra_wing>,
      G : <enderio:item_material:7> });



fusion_reactor.findRecipe(4096, [null],
    [<liquid:deuterium> * 125, <liquid:tritium> * 125]).remove();	

fusion_reactor.recipeBuilder()
	.fluidInputs([<liquid:berkelium> * 16, <liquid:californium> * 16])
    .fluidOutputs(<liquid:einsteinium> * 16)
    .duration(100)
    .EUt(15360)
    .property("eu_to_start", 400000)
    .buildAndRegister();

// LuV Machine Casing
recipes.remove(<gregtech:machine_casing:6>);

// LuV Machine Hull
recipes.remove(<gregtech:machine:506>);

recipes.addShaped(<gregtech:machine:506>, [
	[<ore:platePlastic>, <ore:plateLumium>, <ore:platePlastic>], 
	[<ore:cableGtSingleVanadiumGallium>, <gregtech:machine_casing:6>, <ore:cableGtSingleVanadiumGallium>]]);

assembler.findRecipe(16,
    [<ore:plateChrome>.firstItem * 8,
     <gregtech:meta_item_1:32766>.withTag({Configuration: 8})],
    [null]).remove();
	
assembler.recipeBuilder()
    .inputs(<ore:plateLumium> * 8)
    .outputs([<gregtech:machine_casing:6>])
    .duration(30).EUt(16).buildAndRegister();

//Rare Earth
centrifuge.findRecipe(24, [<gregtech:meta_item_1:3215>], [null]).remove();
centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:3215>)
    .outputs([<minecraft:redstone>, <gregtech:meta_item_1:326>])
    .duration(900).EUt(24).buildAndRegister();


//Bismuth
centrifuge.findRecipe(24, [<gregtech:meta_item_1:3035>], [null]).remove();
centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:3035>)
    .outputs([<gregtech:meta_item_1:2035>, <gregtech:meta_item_1:8> * 3])
    .duration(900).EUt(24).buildAndRegister();

centrifuge.findRecipe(24, [<gregtech:meta_item_1:3158>], [null]).remove();
centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:3158>)
    .outputs([<gregtech:meta_item_1:2158>, <gregtech:meta_item_1:8> * 3])
    .duration(900).EUt(24).buildAndRegister();


//Nuclear Stuff

centrifuge.findRecipe(320, [<gregtech:meta_item_1:2075>], [null]).remove();

chemical_bath.findRecipe(384, [<minecraft:ender_eye>], [<liquid:plutonium> * 288]).remove();
chemical_bath.recipeBuilder()
    .inputs(<minecraft:ender_eye>)
    .fluidInputs(<liquid:radon> * 500)
    .outputs([<gregtech:meta_item_1:32724>])
    .duration(480).EUt(384).buildAndRegister();

chemical_bath.findRecipe(384, [<minecraft:nether_star>], [<liquid:plutonium> * 1152]).remove();
chemical_bath.recipeBuilder()
    .inputs(<minecraft:nether_star>)
    .fluidInputs(<liquid:radon> * 2000)
    .outputs([<gregtech:meta_item_1:32725>])
    .duration(1920).EUt(384).buildAndRegister();

makeShaped("of_nc_cell_block", <nuclearcraft:cell_block>,
    ["TCT",
     "C C",
     "TCT"],
    { T : <ore:ingotTough>, C : <gtadditions:ga_transparent_casing> });


val trimPattern as string[] = ["N N",
                               " C ",
                               "N N"];

recipes.remove(<extendedcrafting:trimmed>);
makeShaped("of_iron_trimmed_black_steel",
    <extendedcrafting:trimmed>, trimPattern,
    { N : <ore:nuggetIron>, C : <gregtech:meta_block_compressed_14:7> }); // Black Steel Block

recipes.remove(<extendedcrafting:trimmed:1>);
makeShaped("of_gold_trimmed_black_steel",
    <extendedcrafting:trimmed:1>, trimPattern,
    { N : <ore:nuggetGold>, C : <gregtech:meta_block_compressed_14:7> }); //Black Steel Block

recipes.remove(<extendedcrafting:trimmed:2>);
makeShaped("of_diamond_trimmed_black_steel",
    <extendedcrafting:trimmed:2>, trimPattern,
    { N : <ore:nuggetDiamond>, C : <gregtech:meta_block_compressed_14:7> }); //Black Steel Block

recipes.remove(<extendedcrafting:trimmed:3>);
makeShaped("of_emerald_trimmed_black_steel",
    <extendedcrafting:trimmed:3>, trimPattern,
    { N : <ore:nuggetEmerald>, C : <gregtech:meta_block_compressed_14:7> }); //Black Steel Block

recipes.remove(<extendedcrafting:trimmed:4>);
makeShaped("of_crystaltine_trimmed_black_steel",
    <extendedcrafting:trimmed:4>, trimPattern,
    { N : <extendedcrafting:material:25>, C : <gregtech:meta_block_compressed_14:7> }); //Black Steel Block

recipes.remove(<extendedcrafting:trimmed:5>);
makeShaped("of_omnium_trimmed_black_steel",
    <extendedcrafting:trimmed:5>, trimPattern,
    { N : <extendedcrafting:material:33>, C : <gregtech:meta_block_compressed_14:7> }); //Black Steel Block


//Remove hardcoded gtce neutronium recipes and replace with oredicted versions

//Cutting Saw recipes
saw.findRecipe(30, [<avaritia:block_resource>], [<liquid:water> * 1000]).remove();
saw.recipeBuilder()
    .inputs(<avaritia:block_resource:0>)
    .fluidInputs(<liquid:water> * 1000)
    .outputs([<moreplates:neutronium_plate> * 9])
    .duration(80000).EUt(30).buildAndRegister();

saw.findRecipe(30, [<avaritia:block_resource>], [<liquid:distilled_water> * 750]).remove();
saw.recipeBuilder()
    .inputs(<avaritia:block_resource:0>)
    .fluidInputs(<liquid:distilled_water> * 750)
    .outputs([<moreplates:neutronium_plate> * 9])
    .duration(52000).EUt(30).buildAndRegister();

saw.findRecipe(30, [<avaritia:block_resource>], [<liquid:lubricant> * 250]).remove();
saw.recipeBuilder()
    .inputs(<avaritia:block_resource:0>)
    .fluidInputs(<liquid:lubricant> * 250)
    .outputs([<moreplates:neutronium_plate> * 9])
    .duration(20000).EUt(30).buildAndRegister();

//Extruder Recipes
extruder.findRecipe(64,[<avaritia:resource:4>, <gregtech:meta_item_1:32350>], [null]).remove();
extruder.recipeBuilder()
    .inputs(<avaritia:resource:4>)
    .notConsumable(<gregtech:meta_item_1:32350>)
    .outputs(<moreplates:neutronium_plate>)
    .duration(5000).EUt(64).buildAndRegister();

//Alloy Smelter recipes
alloy.findRecipe(16, [<avaritia:resource:4> * 2, <gregtech:meta_item_1:32301>], [null]).remove();
alloy.recipeBuilder()
    .inputs(<ore:ingotNeutronium> * 2)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .outputs(<moreplates:neutronium_plate>)
    .duration(10000).EUt(16).buildAndRegister();

//Unpackager Recipes
unpackager.findRecipe(12, [<ore:ingotNeutronium>.firstItem, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [null]).remove();
unpackager.recipeBuilder()
    .inputs(<ore:ingotNeutronium>.firstItem)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<avaritia:resource:3>)
    .duration(10).EUt(12).buildAndRegister();

//Add conversion recipe
recipes.addShapeless(<avaritia:resource:3>, [<gregtech:meta_item_1:9972>]);


//Remove Data Orbs
assembler.findRecipe(1200,
    [<gregtech:meta_item_2:16051>*32, <gregtech:meta_item_2:32480>*64, 
            <gregtech:meta_item_2:32482>*32, <gregtech:meta_item_2:32485>*4,
            <gregtech:meta_item_2:32444>, <gregtech:meta_item_2:32492>],
    [<liquid:tin>*288]).remove();

assembler.findRecipe(1200,
    [<gregtech:meta_item_2:16051>*32, <gregtech:meta_item_2:32480>*64, 
            <gregtech:meta_item_2:32482>*32, <gregtech:meta_item_2:32485>*4,
            <gregtech:meta_item_2:32444>, <gregtech:meta_item_2:32492>],
    [<liquid:soldering_alloy>*144]).remove();

//Remove Data Sticks
assembler.findRecipe(90,
    [<gregtech:meta_item_2:32480>*32, <gregtech:meta_item_2:16237>*8,
    <gregtech:meta_item_2:32485>*4, <gregtech:meta_item_1:12141>*4,
    <gregtech:meta_item_2:32448>, <gregtech:meta_item_2:32490>],
    [<liquid:tin>*288]).remove();

//Remove Data Sticks
assembler.findRecipe(90,
    [<gregtech:meta_item_2:32480>*32, <gregtech:meta_item_2:16237>*8,
    <gregtech:meta_item_2:32485>*4, <gregtech:meta_item_1:12141>*4,
    <gregtech:meta_item_2:32448>, <gregtech:meta_item_2:32490>],
    [<liquid:soldering_alloy>*144]).remove();

//Remove NAND Gates, only used in data items
saw.findRecipe(48, [<gregtech:meta_item_2:32466>],[<liquid:water>*90]).remove();
saw.findRecipe(48, [<gregtech:meta_item_2:32466>],[<liquid:distilled_water>*67]).remove();
saw.findRecipe(48, [<gregtech:meta_item_2:32466>],[<liquid:lubricant>*22]).remove();

engraver.findRecipe(480, [<gregtech:meta_item_1:15218>, <gregtech:meta_item_2:32441>], [null]).remove();
engraver.findRecipe(1920, [<gregtech:meta_item_1:15218>, <gregtech:meta_item_2:32442>], [null]).remove();

//Remove NOR Gates, only used in data items
saw.findRecipe(48, [<gregtech:meta_item_2:32468>],[<liquid:water>*90]).remove();
saw.findRecipe(48, [<gregtech:meta_item_2:32468>],[<liquid:distilled_water>*67]).remove();
saw.findRecipe(48, [<gregtech:meta_item_2:32468>],[<liquid:lubricant>*22]).remove();

engraver.findRecipe(480, [<gregtech:meta_item_1:15113>, <gregtech:meta_item_2:32441>], [null]).remove();
engraver.findRecipe(1920, [<gregtech:meta_item_1:15113>, <gregtech:meta_item_2:32442>], [null]).remove();

fusion_reactor.findRecipe(49152,
    [null],
    [<liquid:chrome> * 16, <liquid:lutetium> * 16]).remove();

fusion_reactor.findRecipe(8192,
    [null],
    [<liquid:silicon> * 16, <liquid:lanthanum> * 16]).remove();

//Processing Array
recipes.remove(<gregtech:machine:2507>);
makeShaped("of_processing_array", <gregtech:machine:2507>, 
    ["CSC",
     "AHA",
     "CBC"],
     { A : <gregtech:meta_item_1:32654>, //Robot Arm (IV)
       H : <gregtech:machine:505>, //Machine Hull (IV)
       C : <ore:circuitMaster>, //T6 Circuit
       S : <advsolars:sunnarium>, //Sunnarium
       B : <gregtech:machine:10697>}); //IV Tier 16x CEF 


//Restore Radon Recipe for QBit wafer
reactor.recipeBuilder()
  .inputs(<gregtech:meta_item_1:2421>, <gregtech:meta_item_2:32467>)
  .fluidInputs(<liquid:radon> * 50)
  .outputs(<gregtech:meta_item_2:32470>)
  .duration(600).EUt(1920).buildAndRegister();

reactor.findRecipe(1920, [<gregtech:meta_item_2:32467>, <gregtech:cable:5354> * 8], [null]).remove();