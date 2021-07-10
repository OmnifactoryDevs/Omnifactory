import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import scripts.CommonVars.makeShaped as makeShaped;

//Plantball
recipes.addShaped(<gregtech:meta_item_2:32570>, [
	[<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>],
	[<ore:treeLeaves>,null,<ore:treeLeaves>],
	[<ore:treeLeaves>,<ore:treeLeaves>,<ore:treeLeaves>]]);
recipes.addShaped(<gregtech:meta_item_2:32570>, [
	[<minecraft:vine>,<minecraft:vine>,<minecraft:vine>],
	[<minecraft:vine>,null,<minecraft:vine>],
	[<minecraft:vine>,<minecraft:vine>,<minecraft:vine>]]);
recipes.addShaped(<gregtech:meta_item_2:32570>, [
	[<ore:treeSapling>,<ore:treeSapling>,<ore:treeSapling>],
	[<ore:treeSapling>,null,<ore:treeSapling>],
	[<ore:treeSapling>,<ore:treeSapling>,<ore:treeSapling>]]);
furnace.addRecipe(<minecraft:slime_ball> * 2, <gregtech:meta_item_2:32570>, 0.0);


//Mining Hammers
<thermalfoundation:tool.hammer_stone>.displayName = "Stone Mining Hammer";
<thermalfoundation:tool.hammer_tin>.displayName = "Tin Mining Hammer";
<thermalfoundation:tool.hammer_copper>.displayName = "Copper Mining Hammer";
<thermalfoundation:tool.hammer_nickel>.displayName = "Nickel Mining Hammer";
<thermalfoundation:tool.hammer_platinum>.displayName = "Platinum Mining Hammer";
<thermalfoundation:tool.hammer_bronze>.displayName = "Bronze Mining Hammer";
<thermalfoundation:tool.hammer_iron>.displayName = "Iron Mining Hammer";
<thermalfoundation:tool.hammer_diamond>.displayName = "Diamond Mining Hammer";


recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template> * 2, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
	[<ore:stickWood>, <storagedrawers:customdrawers>, <ore:stickWood>],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

recipes.remove(<inspirations:pipe>);
recipes.addShapeless(<inspirations:pipe>, [<gregtech:fluid_pipe:1184>]);

//Iron Shears
recipes.remove(<minecraft:shears>);
recipes.addShaped(<minecraft:shears>,[
[<gregtech:meta_tool:6>,<ore:plateIron>],
[<ore:plateIron>,<gregtech:meta_tool:9>]]);
<minecraft:shears>.displayName = "Iron Shears";

//Wool
recipes.remove(<minecraft:string>);
recipes.addShapeless(<minecraft:string> * 4, [<minecraft:wool>]);


recipes.addShaped(<gregtech:meta_tool:7>.withTag({"GT.ToolStats": {PrimaryMaterial: "rubber", MaxDurability: 256, DigSpeed: 4.0 as float, AttackDamage: 1.0 as float, HarvestLevel: 1}}), [
[<gregtech:meta_item_1:12152>,<gregtech:meta_item_1:12152>,null],
[<gregtech:meta_item_1:12152>,<gregtech:meta_item_1:12152>,<minecraft:stick>],
[<gregtech:meta_item_1:12152>,<gregtech:meta_item_1:12152>,null]]);


//Dusts
furnace.addRecipe(<gregtech:meta_item_1:10071>, <gregtech:ore_tin_0>, 0.0);
recipes.addShapeless(<gregtech:meta_item_1:2018>, [<ore:ingotCopper>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2033>, [<ore:ingotIron>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2036>, [<ore:ingotLithium>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2106>,[<minecraft:coal>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2101>,[<minecraft:coal:1>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2071>, [<gregtech:meta_item_1:10071>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<minecraft:gravel>, [<minecraft:cobblestone>, <gregtech:meta_tool:12>]);
recipes.addShapeless(<minecraft:sand>, [<minecraft:gravel>, <gregtech:meta_tool:12>]);
recipes.addShapeless(<contenttweaker:block_dust>, [<minecraft:sand>, <gregtech:meta_tool:12>]);
recipes.addShapeless(<minecraft:clay>, [<contenttweaker:block_dust>,<minecraft:water_bucket>]);
furnace.addRecipe(<forestry:crafting_material>, <gregtech:meta_item_1:2193>, 0.0);
recipes.addShapeless(<minecraft:gravel>, [<minecraft:cobblestone>, <gregtech:meta_tool:12>]);


//Clay Electrolyzing
electrolyzer.findRecipe(120, [<gregtech:meta_item_1:2105> * 13], [null]).remove();
electrolyzer.recipeBuilder().inputs([<gregtech:meta_item_1:2105> * 7]).outputs([<gregtech:meta_item_1:2063> * 2, <gregtech:meta_item_1:2061> * 2, <gregtech:meta_item_1:2036>, <gregtech:meta_item_1:2001> * 2]).duration(400).EUt(30).buildAndRegister();

//Photovoltaic Cells
alloy.recipeBuilder().inputs([<enderio:item_material:38> * 2, <gregtech:meta_item_1:12705>]).outputs([<enderio:item_material:3>]).duration(180).EUt(16).buildAndRegister();

//Small Gears
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10001>]).notConsumable(<gregtech:meta_item_1:32317>).outputs([<gregtech:meta_item_2:17001>]).duration(80).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10072>]).notConsumable(<gregtech:meta_item_1:32317>).outputs([<gregtech:meta_item_2:17072>]).duration(80).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10183>]).notConsumable(<gregtech:meta_item_1:32317>).outputs([<gregtech:meta_item_2:17183>]).duration(80).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10184>]).notConsumable(<gregtech:meta_item_1:32317>).outputs([<gregtech:meta_item_2:17184>]).duration(80).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10235>]).notConsumable(<gregtech:meta_item_1:32317>).outputs([<gregtech:meta_item_2:17235>]).duration(80).EUt(16).buildAndRegister();

//Drawers
recipes.remove(<storagedrawers:upgrade_storage>);
recipes.remove(<storagedrawers:compdrawers>);
recipes.remove(<storagedrawers:controller>);
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped(<storagedrawers:upgrade_storage>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<minecraft:coal>, <storagedrawers:upgrade_template>, <minecraft:coal>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

recipes.addShaped(<storagedrawers:compdrawers>, [
	[<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>],
	[<gregtech:meta_item_1:32640>, <storagedrawers:customdrawers>, <gregtech:meta_item_1:32640>],
	[<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>]]);

recipes.addShaped(<storagedrawers:controller>, [
	[<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>],
	[<ore:circuitBasic>, <storagedrawers:customdrawers>, <ore:circuitBasic>],
	[<gregtech:meta_item_1:12033>, <minecraft:diamond_block>, <gregtech:meta_item_1:12033>]]);

recipes.addShaped(<storagedrawers:controller>, [
	[<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>],
	[<ore:circuitBasic>, <storagedrawers:customdrawers>, <ore:circuitBasic>],
	[<gregtech:meta_item_1:12033>, <minecraft:emerald_block>, <gregtech:meta_item_1:12033>]]);

recipes.addShaped(<storagedrawers:controllerslave>, [
	[<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>,<gregtech:meta_item_1:12033>],
	[<ore:circuitBasic>, <storagedrawers:customdrawers>, <ore:circuitBasic>],
	[<gregtech:meta_item_1:12033>, <minecraft:gold_block>, <gregtech:meta_item_1:12033>]]);

recipes.remove(<rangedpumps:pump>);
recipes.addShaped(<rangedpumps:pump>, [
	[<minecraft:obsidian>, <gregtech:meta_item_1:32610>, <minecraft:obsidian>],
	[<gregtech:meta_item_1:32610>, <gregtech:meta_block_compressed_13:10>, <gregtech:meta_item_1:32610>], //Ender Pearl Block
	[<minecraft:obsidian>, <gregtech:meta_item_1:32610>, <minecraft:obsidian>]]);
<rangedpumps:pump>.displayName = "Ender Pump";

recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [
	[<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>],
	[<ore:obsidian>, basictank, <ore:obsidian>],
	[<minecraft:blaze_rod>, <gregtech:meta_block_compressed_13:10>, <minecraft:blaze_rod>]]); //Ender Pearl Block
recipes.addShapeless(<enderstorage:ender_storage:1>, [<enderstorage:ender_storage:1>]);


//Black Quartz
electrolyzer.recipeBuilder().inputs([<gregtech:meta_item_1:2203> * 4]).outputs([<actuallyadditions:item_dust:7>]).duration(400).EUt(90).buildAndRegister();
autoclave.recipeBuilder().inputs([<actuallyadditions:item_dust:7>]).fluidInputs(<liquid:water> * 1000).outputs([<actuallyadditions:item_misc:5>]).duration(150).EUt(16).buildAndRegister();

//Mechanical Crafter
recipes.remove(<extrautils2:crafter>);
recipes.addShaped(<extrautils2:crafter>, [[<extrautils2:ingredients>, <gregtech:meta_item_2:17184>, <extrautils2:ingredients>],[<gregtech:meta_item_2:17184>, <avaritia:compressed_crafting_table>, <gregtech:meta_item_2:17184>], [<extrautils2:ingredients>, <gregtech:meta_item_2:17184>, <extrautils2:ingredients>]]);


//resonating redstone crystal
recipes.remove(<extrautils2:ingredients>);
recipes.remove(<extrautils2:ingredients:2>);
recipes.remove(<extrautils2:ingredients:6>);
recipes.remove(<extrautils2:ingredients:7>);
recipes.remove(<extrautils2:ingredients:8>);
alloy.recipeBuilder().inputs([<extrautils2:endershard>, <actuallyadditions:item_crystal>]).outputs([<extrautils2:ingredients>]).duration(180).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<extrautils2:endershard>, <minecraft:redstone_block>]).outputs([<extrautils2:ingredients>]).duration(180).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_block_compressed_13:11>, <actuallyadditions:block_crystal> * 4]).outputs([<extrautils2:ingredients:2>]).duration(800).EUt(16).buildAndRegister(); // Ender Eye Block
alloy.recipeBuilder().inputs([<extrautils2:ingredients:9>, <minecraft:diamond> * 4]).outputs([<extrautils2:ingredients:7>]).duration(800).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<extrautils2:ingredients:9>, <enderio:item_alloy_ingot:1> * 4]).outputs([<extrautils2:ingredients:6>]).duration(400).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<extrautils2:ingredients:9>, <enderio:item_alloy_ingot> * 4]).outputs([<extrautils2:ingredients:8>]).duration(400).EUt(16).buildAndRegister();

//Redstone Gear
recipes.remove(<extrautils2:ingredients:1>);
recipes.addShaped(<extrautils2:ingredients:1>, [
	[null, <actuallyadditions:item_crystal>, null],
	[<actuallyadditions:item_crystal>, <gregtech:meta_item_2:26700>, <actuallyadditions:item_crystal>],
	[null, <actuallyadditions:item_crystal>, null]]);



//Photovoltaic Composite
recipes.remove(<enderio:item_material:38>);
recipes.addShapeless(<enderio:item_material:38> * 3, [<gregtech:meta_item_1:2216>,<gregtech:meta_item_1:2106>,<gregtech:meta_item_1:2061>]);


recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.addShaped(<simplyjetpacks:metaitem:4>, [[<minecraft:leather>, <ore:plateSteel>, <minecraft:leather>]]);

//EIO Alloys
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10197>, <gregtech:meta_item_1:2106>]).outputs([<gregtech:meta_item_1:10184>]).duration(200).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10197>, <gregtech:meta_item_1:2101>]).outputs([<gregtech:meta_item_1:10184>]).duration(200).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10197>, <gregtech:meta_item_1:2012>]).outputs([<gregtech:meta_item_1:10184>]).duration(200).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10184>, <minecraft:obsidian>]).outputs([<enderio:item_alloy_ingot:6>]).duration(240).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10184>, <actuallyadditions:item_crystal:3>]).outputs([<enderio:item_alloy_ingot:6>]).duration(240).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:2061>]).outputs([<enderio:item_alloy_ingot>]).duration(120).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<minecraft:gold_ingot>, <minecraft:soul_sand>]).outputs([<enderio:item_alloy_ingot:7>]).duration(120).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<enderio:item_alloy_ingot:6>, <ore:dustEndstone>]).outputs([<enderio:item_alloy_ingot:8>]).duration(300).EUt(120).buildAndRegister();
alloy.recipeBuilder().inputs([<minecraft:glass>, <gregtech:meta_item_1:2202>]).outputs([<appliedenergistics2:quartz_glass> * 2]).duration(100).EUt(16).buildAndRegister();

//Ender Chest
recipes.removeByRecipeName("enderstorage:ender_chest");
recipes.addShaped(<enderstorage:ender_storage>, [
	[<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>],
	[<ore:obsidian>, <gregtech:machine:803>, <ore:obsidian>],
	[<minecraft:blaze_rod>, <ore:enderpearl>, <minecraft:blaze_rod>]]);

//Blaze Rod
recipes.addShapeless(<minecraft:blaze_rod>, [<minecraft:brewing_stand>]);

//LV Macerator
recipes.remove(<gregtech:machine:60>);
recipes.addShaped(<gregtech:machine:60>, [
	[<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:32600>, <gregtech:meta_item_2:14197>],
	[<ore:cableGtSingleTin>, <ore:cableGtSingleTin>, <gregtech:machine:501>],
	[<ore:circuitBasic>, <ore:circuitBasic>, <ore:cableGtSingleTin>]]);

//MV Macerator
recipes.remove(<gregtech:machine:61>);
recipes.addShaped(<gregtech:machine:61>, [
	[<gregtech:meta_item_1:32641>, <gregtech:meta_item_1:32601>, <gregtech:meta_item_2:14184>],
	[<ore:cableGtSingleCopper>, <ore:cableGtSingleCopper>, <gregtech:machine:502>],
	[<ore:circuitGood>, <ore:circuitGood>, <ore:cableGtSingleCopper>]]);

//LV Piston
recipes.addShaped(<gregtech:meta_item_1:32640>, [
	[<gregtech:meta_item_1:12197>,<gregtech:meta_item_1:12197>,<gregtech:meta_item_1:12197>],
	[<ore:cableGtSingleTin>, <gregtech:meta_item_1:14197>,<gregtech:meta_item_1:14197>],
	[<ore:cableGtSingleTin>, <gregtech:meta_item_1:32600>, <gregtech:meta_item_2:26197>]]);

//Fluid Conduit
mods.jei.JEI.removeAndHide(<enderio:item_liquid_conduit>);
recipes.remove(<enderio:item_liquid_conduit:1>);
recipes.addShaped(<enderio:item_liquid_conduit:1> * 4, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	[<minecraft:glass>,<minecraft:glass>,<minecraft:glass>],
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
assembler.recipeBuilder().inputs([<minecraft:glass> * 3, <ore:itemConduitBinder> * 6]).outputs([<enderio:item_liquid_conduit:1> * 8]).duration(80).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:diamond>]).outputs([<gregtech:meta_item_1:2111>]).duration(80).EUt(8).buildAndRegister();
macerator.recipeBuilder().inputs([<appliedenergistics2:material:7>]).outputs([<appliedenergistics2:material:8>]).duration(80).EUt(8).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:16>]).outputs([<enderio:item_material:37>]).duration(500).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:19>]).outputs([<enderio:item_material:34>]).duration(400).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:15>]).outputs([<enderio:item_material:35>]).duration(300).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:14>]).outputs([<enderio:item_material:36>]).duration(200).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<enderio:item_material:17>]).outputs([<contenttweaker:grainsofinnocence>]).duration(200).EUt(16).buildAndRegister();
recipes.addShapeless(<contenttweaker:blazepowder>,[<minecraft:blaze_powder>]);
recipes.addShapeless(<minecraft:blaze_powder>,[<contenttweaker:blazepowder>]);
recipes.remove(<appliedenergistics2:part:36>);

//Yeta Wrench
recipes.remove(<enderio:item_yeta_wrench>);
recipes.addShaped(<enderio:item_yeta_wrench>, [
	[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
	[null, <gregtech:meta_item_2:26033>, null],
	[null,<minecraft:iron_ingot>,null]]);
<gregtech:machine:511>.displayName = "Electric Blast Furnace Controller";
<gregtech:machine:702>.displayName = "Fluid Input Hatch (ULV)";
<gregtech:machine:712>.displayName = "Fluid Input Hatch (LV)";
<gregtech:machine:722>.displayName = "Fluid Input Hatch (MV)";
<gregtech:machine:732>.displayName = "Fluid Input Hatch (HV)";
<gregtech:machine:742>.displayName = "Fluid Input Hatch (EV)";
<gregtech:machine:752>.displayName = "Fluid Input Hatch (IV)";
<gregtech:machine:762>.displayName = "Fluid Input Hatch (LuV)";
<gregtech:machine:772>.displayName = "Fluid Input Hatch (ZPM)";
<gregtech:machine:782>.displayName = "Fluid Input Hatch (UV)";
<gregtech:machine:792>.displayName = "Fluid Input Hatch (MAX)";
<gregtech:machine:703>.displayName = "Fluid Output Hatch (ULV)";
<gregtech:machine:713>.displayName = "Fluid Output Hatch (LV)";
<gregtech:machine:723>.displayName = "Fluid Output Hatch (MV)";
<gregtech:machine:733>.displayName = "Fluid Output Hatch (HV)";
<gregtech:machine:743>.displayName = "Fluid Output Hatch (EV)";
<gregtech:machine:753>.displayName = "Fluid Output Hatch (IV)";
<gregtech:machine:763>.displayName = "Fluid Output Hatch (LuV)";
<gregtech:machine:773>.displayName = "Fluid Output Hatch (ZPM)";
<gregtech:machine:783>.displayName = "Fluid Output Hatch (UV)";
<gregtech:machine:793>.displayName = "Fluid Output Hatch (MAX)";




//Chemistry
reactor.recipeBuilder().inputs([<extendedcrafting:material:7>]).fluidInputs([<liquid:lava> * 1000]).outputs(<minecraft:end_stone>).EUt(15).duration(20).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:quartz>]).fluidInputs([<liquid:lava> * 1000]).outputs(<armorplus:lava_crystal:1>).EUt(15).duration(100).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:obsidian>]).fluidInputs([<liquid:lava> * 1000]).outputs(<armorplus:lava_infused_obsidian>).EUt(15).duration(200).buildAndRegister();
reactor.recipeBuilder().inputs([<contenttweaker:block_dust>]).fluidInputs([<liquid:lava> * 1000]).outputs(<minecraft:netherrack>).EUt(15).duration(20).buildAndRegister();
reactor.recipeBuilder().inputs([<contenttweaker:block_dust>]).fluidInputs([<liquid:water> * 1000]).outputs(<minecraft:clay>).EUt(15).duration(20).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:magma>]).fluidOutputs(<liquid:lava> * 1000).EUt(30).duration(120).buildAndRegister();
reactor.recipeBuilder().inputs([<thermalfoundation:fertilizer>]).fluidInputs(<liquid:ammonia> * 100).outputs(<thermalfoundation:fertilizer:1>).EUt(30).duration(120).buildAndRegister();
// recipes for Manganese Oxides - currently unused
// reactor.recipeBuilder().inputs([<gregtech:meta_item_1:2039>]).fluidInputs(<liquid:oxygen> * 250).outputs(<nuclearcraft:dust_oxide:2>).EUt(15).duration(120).buildAndRegister();
// reactor.recipeBuilder().inputs([<nuclearcraft:dust_oxide:2>]).fluidInputs(<liquid:phosphoric_acid> * 1000).outputs(<nuclearcraft:dust_oxide:2>).EUt(500).duration(120).buildAndRegister();
mixer.recipeBuilder().inputs([<gregtech:meta_item_1:2239>,<gregtech:meta_item_1:2026>]).outputs(<minecraft:glowstone_dust> * 2).EUt(15).duration(80).buildAndRegister();
mixer.recipeBuilder().inputs([<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2071>]).outputs(<gregtech:meta_item_1:2189> * 2).EUt(15).duration(40).buildAndRegister();
mixer.recipeBuilder().inputs([<gregtech:meta_item_1:2307>,<enderio:item_material:20> * 4,<contenttweaker:grainsofinnocence>,<enderio:item_material:36>]).fluidInputs([<liquid:pulsating_iron> * 576, <liquid:neptunium> * 144]).outputs(<gregtech:meta_item_1:2309>).EUt(8000).duration(400).buildAndRegister();
mixer.recipeBuilder().inputs([<gregtech:meta_item_1:2308>,<enderio:item_material:34>,<enderio:item_material:35>*4,<enderio:item_material:37>]).fluidInputs([<liquid:enderium> * 576, <liquid:curium> * 144]).outputs(<gregtech:meta_item_1:2310>).EUt(30000).duration(400).buildAndRegister();
mixer.recipeBuilder().inputs([<ore:dustSteel> * 3,<ore:dustBlackBronze> * 2,<actuallyadditions:item_crystal:3> * 2,<extrautils2:ingredients:4> * 2]).outputs(<gregtech:meta_item_1:2231>  * 9).EUt(15).duration(200).buildAndRegister();
recipes.remove(<gregtech:meta_item_1:2231>);
furnace.addRecipe(<actuallyadditions:item_misc:5>, <actuallyadditions:block_misc:3>, 0.0);

reactor.recipeBuilder().inputs([<minecraft:quartz>]).fluidInputs([<liquid:glowstone> * 288]).outputs(<thermalfoundation:material:894>).EUt(100).duration(100).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:quartz>]).fluidInputs([<liquid:redstone> * 288]).outputs(<thermalfoundation:material:893>).EUt(100).duration(100).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:quartz>]).fluidInputs([<liquid:ender> * 250]).outputs(<thermalfoundation:material:895>).EUt(100).duration(100).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:dragon_breath>, <gregtech:meta_item_1:2714>]).outputs(<draconicevolution:draconium_dust>).EUt(2000).duration(500).buildAndRegister();
reactor.recipeBuilder().inputs([<minecraft:glass_bottle> * 4]).fluidInputs([<liquid:pyrotheum> * 1000, <liquid:nitro_fuel> * 1000]).outputs(<minecraft:dragon_breath> * 4).EUt(2000).duration(1000).buildAndRegister();
recipes.addShaped(<armorplus:lava_nether_brick>, [
	[null, <minecraft:nether_brick>, null],
	[<minecraft:nether_brick>, <minecraft:lava_bucket>, <minecraft:nether_brick>],
	[null, <minecraft:nether_brick>, null]]);
recipes.addShaped(<extendedcrafting:material:40>, [
	[null, <minecraft:ender_eye>, null],
	[<minecraft:ender_eye>, <minecraft:nether_star>, <minecraft:ender_eye>],
	[null, <minecraft:ender_eye>, null]]);

recipes.remove(<minecraft:ender_eye>);
reactor.recipeBuilder().inputs([<minecraft:ender_pearl>,<minecraft:blaze_powder>]).outputs(<minecraft:ender_eye>).EUt(16).duration(100).buildAndRegister();
recipes.remove(<extrautils2:endershard>);
recipes.addShapeless(<extrautils2:endershard> * 8, [<minecraft:ender_pearl>]);
assembler.findRecipe(2, [<minecraft:blaze_powder>,<minecraft:ender_pearl>], [null]).remove();
assembler.findRecipe(2, [<minecraft:ender_pearl> * 6,<minecraft:blaze_rod>], [null]).remove();
mixer.findRecipe(8, [<gregtech:meta_item_1:2184> * 3,<gregtech:meta_item_1:2229>,<gregtech:meta_item_1:2044>], [null]).remove();

//Ammonia Recipe: Changes the EU/t
reactor.findRecipe(384, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000]).remove();
reactor.recipeBuilder()
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs(<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000)
	.fluidOutputs(<liquid:ammonia> * 1000)
	.EUt(100).duration(320).buildAndRegister();

//Dimethylhydrazine: Changes the EU/t
reactor.findRecipe(480, [null], [<liquid:chloramine> * 1000, <liquid:dimethylamine> * 1000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:chloramine> * 1000, <liquid:dimethylamine> * 1000)
	.fluidOutputs(<liquid:dimethylhidrazine> * 1000,<liquid:hydrochloric_acid> * 1000)
	.EUt(120).duration(960).buildAndRegister();

//Remove other recipe for Dimethylhydrazine
reactor.findRecipe(480, [null], [<liquid:methanol> * 2000, <liquid:ammonia> * 2000, <liquid:hypochlorous_acid> * 1000]).remove();

//Lava Factory
recipes.remove(<actuallyadditions:block_misc:7>);
recipes.addShaped(<actuallyadditions:block_misc:7> * 2, [[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>],[<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>], [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>]]);

recipes.remove(<actuallyadditions:block_lava_factory_controller>);
recipes.addShaped(<actuallyadditions:block_lava_factory_controller>, [
	[<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:7>, <actuallyadditions:item_misc:8>],
	[<minecraft:lava_bucket:*>, <morefurnaces:furnaceblock:3>, <minecraft:lava_bucket:*>]]);

recipes.remove(<actuallyadditions:block_fluid_collector>);
recipes.remove(<actuallyadditions:block_placer>);
recipes.remove(<actuallyadditions:block_fluid_placer>);

recipes.addShaped(<actuallyadditions:block_breaker>, [[<actuallyadditions:item_misc:7>, <gregtech:meta_item_1:32640>]]);
recipes.addShaped(<actuallyadditions:block_placer>, [[<gregtech:meta_item_1:32640>,<actuallyadditions:item_misc:7>]]);
recipes.addShaped(<actuallyadditions:block_fluid_placer>, [[<gregtech:meta_item_1:32610>,<actuallyadditions:item_misc:7>]]);
recipes.addShaped(<actuallyadditions:block_fluid_collector>, [[<actuallyadditions:item_misc:7>,<gregtech:meta_item_1:32610>]]);

//Rubber Sheet
compressor.recipeBuilder().inputs(<gregtech:meta_item_1:32627>).outputs(<gregtech:meta_item_1:12152>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<extrautils2:ingredients:11>).outputs(<moreplates:demon_plate>).duration(200).EUt(400).buildAndRegister();
compressor.recipeBuilder().inputs(<gregtech:meta_item_1:2011> * 2).outputs(<minecraft:dye:15>).duration(20).EUt(4).buildAndRegister();
compressor.recipeBuilder().inputs(<minecraft:dye:15> * 3).outputs(<minecraft:bone>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<minecraft:bone> * 4).outputs(<minecraft:skull>).duration(20).EUt(16).buildAndRegister();


macerator.findRecipe(8, [<minecraft:cobblestone>], [null]).remove();
macerator.findRecipe(8, [<minecraft:gravel>], [null]).remove();
macerator.recipeBuilder().inputs([<minecraft:stone>]).outputs([<gregtech:meta_item_1:2328>]).duration(16).EUt(10).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:cobblestone>]).outputs([<minecraft:gravel>]).duration(16).EUt(10).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:gravel>]).outputs([<minecraft:sand>]).duration(16).EUt(10).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:sand>]).outputs([<contenttweaker:block_dust>]).duration(16).EUt(10).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:netherrack>]).outputs([<gregtech:meta_item_1:2333>]).duration(16).EUt(10).buildAndRegister();

macerator.findRecipe(8, [<minecraft:end_stone>], [null]).remove();
macerator.recipeBuilder().inputs([<ore:endstone>.firstItem]).outputs([<ore:dustEndstone>.firstItem]).duration(16).EUt(10).buildAndRegister();

//Copper Furnace
recipes.remove(<morefurnaces:furnaceblock:5>);
recipes.addShaped(<morefurnaces:furnaceblock:5>, [
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
[<ore:ingotCopper>, <morefurnaces:furnaceblock>, <ore:ingotCopper>],
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

//Silver Furnace
recipes.remove(<morefurnaces:furnaceblock:6>);
recipes.addShaped(<morefurnaces:furnaceblock:6>, [
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],
	[<ore:ingotSilver>, <morefurnaces:furnaceblock:5>, <ore:ingotSilver>],
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]]);

//Gold Furnace
recipes.remove(<morefurnaces:furnaceblock:1>);
recipes.addShaped(<morefurnaces:furnaceblock:1>, [
	[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
	[<minecraft:gold_ingot>, <morefurnaces:furnaceblock:6>, <minecraft:gold_ingot>],
	[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);

//Diamond Furnace
recipes.remove(<morefurnaces:furnaceblock:2>);
recipes.addShaped(<morefurnaces:furnaceblock:2>, [
	[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
	[<minecraft:diamond>, <morefurnaces:furnaceblock:1>, <minecraft:diamond>],
	[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);

//Obsidian Furnace
recipes.remove(<morefurnaces:furnaceblock:3>);
recipes.addShaped(<morefurnaces:furnaceblock:3>, [
	[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
	[<morefurnaces:furnaceblock:2>, <minecraft:obsidian>, <morefurnaces:furnaceblock:2>],
	[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);


recipes.removeByRecipeName("gregtech:conductive_iron_cable_1");
recipes.addShapeless(<gregtech:cable:5700>,[<gregtech:cable:700>,<gregtech:meta_item_1:12152>]);

recipes.addShapeless(<gregtech:meta_item_1:32517>,[<gregtech:meta_item_1:32500>,<gregtech:meta_item_1:2013>,<gregtech:meta_item_1:2013>]);	//Small Cadmium
recipes.addShapeless(<gregtech:meta_item_1:32519>,[<gregtech:meta_item_1:32500>,<gregtech:meta_item_1:2063>,<gregtech:meta_item_1:2063>]);	//Small Sodium
recipes.addShapeless(<gregtech:meta_item_1:32518>,[<gregtech:meta_item_1:32500>,<gregtech:meta_item_1:2036>,<gregtech:meta_item_1:2036>]);	//Small Lithium

// Small Battery Hull
recipes.remove(<gregtech:meta_item_1:32500>);
recipes.addShaped(<gregtech:meta_item_1:32500>, [
	[<ore:cableGtSingleRedAlloy>], 
	[<gregtech:meta_item_1:12071>], 
	[<gregtech:meta_item_1:12071>]]);

// Add Corrected Small Battery Hull recipe to Assembler
assembler.findRecipe(1, [<gregtech:meta_item_1:12091>, <gregtech:cable:5071>],[<liquid:plastic>*144]).remove();
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12071>, <gregtech:cable:5237>])
	.fluidInputs([<liquid:plastic>*144])	
	.outputs([<gregtech:meta_item_1:32500>])
	.duration(800).EUt(1).buildAndRegister();

// Correct the Macerating recipe for Small Battery Hull
macerator.findRecipe(8, [<gregtech:meta_item_1:32500>], [null]).remove();
macerator.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32500>)
	.outputs(<gregtech:meta_item_1:2071>)
	.duration(30).EUt(8).buildAndRegister();

// Add Corrected Small Battery Hull recipe to fluid extractor
fluid_extractor.findRecipe(32, [<gregtech:meta_item_1:32500>], [null]).remove();
fluid_extractor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32500>)
	.fluidOutputs(<liquid:tin>*144)
	.duration(80).EUt(32).buildAndRegister();


recipes.removeByRecipeName("gregtech:electric_motor/electric_motor_lv_steel");

recipes.remove(<gregtech:machine:210>);
recipes.addShaped(<gregtech:machine:210>, [
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
	[<gregtech:meta_item_1:32640>, <gregtech:machine:501>, <gregtech:meta_item_1:32640>],
	[<ore:cableGtSingleTin>, <ore:plateIron>, <ore:cableGtSingleTin>]]);

furnace.addRecipe(<gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2155>, 0.0);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<ore:oreCopper>);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:0>);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:1>);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:2>);
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:3>);
furnace.addRecipe(<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:2100>, 0.0);

furnace.remove(<minecraft:iron_nugget> * 3, <gregtech:meta_item_1:3148>);
furnace.remove(<minecraft:iron_nugget> * 3, <gregtech:meta_item_1:2148>);
furnace.addRecipe(<minecraft:iron_ingot>, <gregtech:meta_item_1:2148>, 0.0);
furnace.addRecipe(<minecraft:iron_ingot>, <gregtech:meta_item_1:3148>, 0.0);

wiremill.recipeBuilder().inputs([<extendedcrafting:material:32>]).outputs([<gregtech:cable:709> * 2]).duration(100).EUt(50000).buildAndRegister();

centrifuge.findRecipe(30, [<gregtech:meta_item_1:2231> * 5], [null]).remove();
electrolyzer.findRecipe(90, [<gregtech:meta_item_1:2114> * 8], [null]).remove();
electrolyzer.recipeBuilder().inputs([<gregtech:meta_item_1:2114> * 8]).outputs([<gregtech:meta_item_1:2035> * 3,<gregtech:meta_item_1:2062> * 3, <gregtech:meta_item_1:2065> * 2]).duration(500).EUt(32).buildAndRegister();
electrolyzer.recipeBuilder().inputs([<ore:dustEnderPearl>]).outputs([<forestry:crafting_material>]).duration(200).EUt(1000).buildAndRegister();
electrolyzer.findRecipe(60, [<gregtech:meta_item_1:2218> * 10], [null]).remove();


autoclave.findRecipe(24, [<gregtech:meta_item_1:2216>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2202>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2201>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2281>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2103>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2203>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2161>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2128>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2226>], [<liquid:water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2216>], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2202>], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2201>], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2281>], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2103>], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2203>], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2161>], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2128>], [<liquid:distilled_water> * 200]).remove();
autoclave.findRecipe(24, [<gregtech:meta_item_1:2226>], [<liquid:distilled_water> * 200]).remove();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:2216>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:dye:4>]).duration(40).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:2201>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:quartz>]).duration(40).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:2111>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:diamond>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:2113>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:emerald>]).duration(300).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:2202>]).fluidInputs([<liquid:water> * 100]).outputs([<gregtech:meta_item_1:8202>]).duration(100).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:2106>]).fluidInputs([<liquid:water> * 100]).outputs([<minecraft:coal>]).duration(20).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:2226>]).fluidInputs([<liquid:water> * 100]).outputs([<gregtech:meta_item_1:8226>]).duration(20).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustCinnabar>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemCinnabar>.firstItem]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustMonazite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemMonazite>.firstItem]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustSodalite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemSodalite>.firstItem]).duration(80).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustLazurite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemLazurite>.firstItem]).duration(80).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustQuartzite>]).fluidInputs([<liquid:water> * 100]).outputs([<ore:gemQuartzite>.firstItem]).duration(40).EUt(16).buildAndRegister();

	mods.jei.JEI.removeAndHide(<ore:gemFlawedAlmandine>);
	mods.jei.JEI.removeAndHide(
	<ore:gemFlawedBlueTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedCertusQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedRuby>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedSodalite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedTanzanite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedNetherQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedQuartzite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedJasper>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedGlass>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedLignite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedOlivine>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedOpal>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedAmethyst>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedLapis>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedApatite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedGarnetRed>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedGarnetYellow>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedVinteum>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedMonazite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedSkystone>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedCinnabar>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedCoal>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedEmerald>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedDiamond>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedGreenSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedRutile>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawedLazurite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedAlmandine>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedBlueTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedCertusQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedRuby>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedSodalite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedTanzanite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedNetherQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedQuartzite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedJasper>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedGlass>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedLignite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedOlivine>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedOpal>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedAmethyst>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedLapis>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedApatite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedGarnetRed>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedGarnetYellow>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedVinteum>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedMonazite>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedSkystone>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedCinnabar>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedCoal>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedEmerald>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedDiamond>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedGreenSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedRutile>);mods.jei.JEI.removeAndHide(
	<ore:gemChippedLazurite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessAlmandine>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessBlueTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessCertusQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessSodalite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessTanzanite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessNetherQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessQuartzite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessJasper>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessGlass>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessLignite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessOlivine>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessOpal>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessAmethyst>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessApatite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessGarnetRed>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessGarnetYellow>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessVinteum>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessMonazite>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessSkystone>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessCinnabar>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessCoal>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessGreenSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessRutile>);mods.jei.JEI.removeAndHide(
	<ore:gemFlawlessLazurite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteAlmandine>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteBlueTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteCertusQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteSodalite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteTanzanite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteTopaz>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteNetherQuartz>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteQuartzite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteJasper>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteGlass>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteLignite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteOlivine>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteOpal>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteAmethyst>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteApatite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteGarnetRed>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteGarnetYellow>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteVinteum>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteMonazite>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteSkystone>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteCinnabar>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteCoal>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteGreenSapphire>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteRutile>);mods.jei.JEI.removeAndHide(
	<ore:gemExquisiteLazurite>);

mods.jei.JEI.removeAndHide(<ore:gemFlawedCoke>);
mods.jei.JEI.removeAndHide(<ore:gemChippedCoke>);
mods.jei.JEI.removeAndHide(<ore:gemFlawlessLapis>);
mods.jei.JEI.removeAndHide(<ore:gemFlawlessCoke>);
mods.jei.JEI.removeAndHide(<ore:gemExquisiteLapis>);
mods.jei.JEI.removeAndHide(<ore:gemExquisiteCoke>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_1:8209>);

furnace.setFuel(<gregtech:meta_item_1:10204>, 1200);
furnace.setFuel(<gregtech:meta_item_1:2204>, 1200);
furnace.setFuel(<gregtech:meta_item_1:2012>, 1200);




compressor.recipeBuilder().inputs(<ore:ingotAluminium>).outputs(<ore:plateAluminium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotAmericium>).outputs(<ore:plateAmericium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotAntimony>).outputs(<ore:plateAntimony>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBeryllium>).outputs(<ore:plateBeryllium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotChrome>).outputs(<ore:plateChrome>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCobalt>).outputs(<ore:plateCobalt>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCopper>).outputs(<ore:plateCopper>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotErbium>).outputs(<ore:plateErbium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEuropium>).outputs(<ore:plateEuropium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotGallium>).outputs(<ore:plateGallium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotGold>).outputs(<gregtech:meta_item_1:12026>).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotIridium>).outputs(<gregtech:meta_item_1:12032>).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotIron>).outputs(<ore:plateIron>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotLead>).outputs(<ore:plateLead>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotLithium>).outputs(<ore:plateLithium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotManganese>).outputs(<ore:plateManganese>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNeodymium>).outputs(<ore:plateNeodymium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNickel>).outputs(<ore:plateNickel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNiobium>).outputs(<ore:plateNiobium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotOsmium>).outputs(<ore:plateOsmium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPalladium>).outputs(<ore:platePalladium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPlatinum>).outputs(<ore:platePlatinum>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPlutonium241>).outputs(<ore:platePlutonium241>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPotassium>).outputs(<ore:platePotassium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSilicon>).outputs(<ore:plateSilicon>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPotassium>).outputs(<ore:platePotassium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPraseodymium>).outputs(<ore:platePraseodymium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPromethium>).outputs(<ore:platePromethium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotRubidium>).outputs(<ore:plateRubidium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSamarium>).outputs(<ore:plateSamarium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSilver>).outputs(<ore:plateSilver>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSodium>).outputs(<ore:plateSodium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotStrontium>).outputs(<ore:plateStrontium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTantalum>).outputs(<ore:plateTantalum>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTellurium>).outputs(<ore:plateTellurium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTerbium>).outputs(<ore:plateTerbium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotThorium>).outputs(<ore:plateThorium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotThulium>).outputs(<ore:plateThulium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTin>).outputs(<ore:plateTin>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotThulium>).outputs(<ore:plateThulium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotVanadium>).outputs(<ore:plateVanadium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotYttrium>).outputs(<ore:plateYttrium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTitanium>).outputs(<ore:plateTitanium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotUranium>).outputs(<ore:plateUranium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotZinc>).outputs(<ore:plateZinc>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotAnnealedCopper>).outputs(<ore:plateAnnealedCopper>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBrass>).outputs(<ore:plateBrass>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBronze>).outputs(<ore:plateBronze>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCupronickel>).outputs(<ore:plateCupronickel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotElectrum>).outputs(<ore:plateElectrum>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotInvar>).outputs(<ore:plateInvar>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBatteryAlloy>).outputs(<ore:plateBatteryAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEpoxid>).outputs(<ore:plateEpoxid>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<minecraft:diamond>).outputs(<ore:plateDiamond>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<minecraft:emerald>).outputs(<ore:plateEmerald>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemLapis>).outputs(<ore:plateLapis>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotMagnalium>).outputs(<ore:plateMagnalium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSolderingAlloy>).outputs(<ore:plateSolderingAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotStainlessSteel>).outputs(<ore:plateStainlessSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSteel>).outputs(<ore:plateSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotGraphite>).outputs(<ore:plateGraphite>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotOsmiridium>).outputs(<ore:plateOsmiridium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTungstenSteel>).outputs(<ore:plateTungstenSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTungsten>).outputs(<ore:plateTungsten>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTungstenCarbide>).outputs(<ore:plateTungstenCarbide>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotConductiveIron>).outputs(<ore:plateConductiveIron>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEnergeticAlloy>).outputs(<ore:plateEnergeticAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotVibrantAlloy>).outputs(<ore:plateVibrantAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotDarkSteel>).outputs(<ore:plateDarkSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotPulsatingIron>).outputs(<ore:platePulsatingIron>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotElectricalSteel>).outputs(<ore:plateElectricalSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotLumium>).outputs(<ore:plateLumium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotSignalum>).outputs(<ore:plateSignalum>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEnderium>).outputs(<ore:plateEnderium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotEndSteel>).outputs(<ore:plateEndSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotManyullyn>).outputs(<ore:plateManyullyn>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotArdite>).outputs(<ore:plateArdite>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotReinforcedEpoxyResin>).outputs(<ore:plateReinforcedEpoxyResin>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotBlackSteel>).outputs(<ore:plateBlackSteel>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotYttriumBariumCuprate>).outputs(<ore:plateYttriumBariumCuprate>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotWroughtIron>).outputs(<ore:plateWroughtIron>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotTinAlloy>).outputs(<ore:plateTinAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotRedAlloy>).outputs(<ore:plateRedAlloy>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCobaltBrass>).outputs(<ore:plateCobaltBrass>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotElectrumFlux>).outputs(<ore:plateElectrumFlux>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNeutronium>).outputs(<ore:plateNeutronium>.firstItem).duration(100).EUt(30000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotInfinity>).outputs(<ore:plateInfinity>.firstItem).duration(100).EUt(30000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotDraconium>).outputs(<ore:plateDraconium>.firstItem).duration(100).EUt(3000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotDraconiumAwakened>).outputs(<ore:plateDraconiumAwakened>.firstItem).duration(100).EUt(8000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotCrystalMatrix>).outputs(<ore:plateCrystalMatrix>.firstItem).duration(100).EUt(8000).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotScandium>).outputs(<ore:plateScandium>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemAlmandine>).outputs(<ore:plateAlmandine>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemBlueTopaz>).outputs(<ore:plateBlueTopaz>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemGreenSapphire>).outputs(<ore:plateGreenSapphire>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemRutile>).outputs(<ore:plateRutile>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotKanthal>).outputs(<ore:plateKanthal>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNiobiumNitride>).outputs(<ore:plateNiobiumNitride>.firstItem).duration(100).EUt(10).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:ingotNichrome>).outputs(<ore:plateNichrome>.firstItem).duration(100).EUt(10).buildAndRegister();



recipes.removeByRecipeName("gregtech:tin_cable_4");
recipes.removeByRecipeName("gregtech:tin_cable_2");
recipes.removeByRecipeName("gregtech:red_alloy_cable_4");
recipes.removeByRecipeName("gregtech:red_alloy_cable_2");
recipes.removeByRecipeName("gregtech:conductive_iron_cable_2");
recipes.removeByRecipeName("gregtech:conductive_iron_cable_4");
recipes.removeByRecipeName("gregtech:block_decompress_clay");
recipes.removeByRecipeName("gregtech:gravel_to_flint");



recipes.remove(<gregtech:meta_item_2:26001>);
recipes.remove(<gregtech:meta_item_2:26018>);
recipes.remove(<gregtech:meta_item_2:26026>);
recipes.remove(<gregtech:meta_item_2:26032>);
recipes.remove(<gregtech:meta_item_2:26033>);
recipes.remove(<gregtech:meta_item_2:26035>);
recipes.remove(<gregtech:meta_item_2:26047>);
recipes.remove(<gregtech:meta_item_2:26051>);
recipes.remove(<gregtech:meta_item_2:26062>);
recipes.remove(<gregtech:meta_item_2:26071>);
recipes.remove(<gregtech:meta_item_2:26072>);
recipes.remove(<gregtech:meta_item_2:26094>);
recipes.remove(<gregtech:meta_item_2:26095>);
recipes.remove(<gregtech:meta_item_2:26126>);
recipes.remove(<gregtech:meta_item_2:26112>);
recipes.remove(<gregtech:meta_item_2:26184>);

recipes.remove(<thermalfoundation:fertilizer>);
recipes.remove(<thermalfoundation:fertilizer:1>);
recipes.addShapeless(<thermalfoundation:fertilizer> * 16, [<ore:dustWood>, <ore:dustWood>, <ore:dustCharcoal>, <ore:dustSaltpeter>,<gregtech:meta_item_1:8226>,<gregtech:meta_item_1:8226>]);
recipes.addShapeless(<thermalfoundation:fertilizer> * 16, [<ore:dustWood>, <ore:dustWood>, <ore:dustCoal>, <ore:dustSaltpeter>,<gregtech:meta_item_1:8226>,<gregtech:meta_item_1:8226>]);

recipes.remove(<gregtech:machine:271>);
recipes.remove(<gregtech:machine:272>);
recipes.remove(<gregtech:machine:273>);


recipes.addShaped(<gregtech:machine:271>, [[<ore:wireGtQuadrupleCupronickel>, <ore:wireGtQuadrupleCupronickel>, <ore:circuitGood>],
	[<gregtech:meta_item_1:32641>, <gregtech:machine:502>, <ore:pipeMediumSteel>],
	[<ore:wireGtQuadrupleCupronickel>, <ore:wireGtQuadrupleCupronickel>, <ore:circuitGood>]]);

recipes.addShaped(<gregtech:machine:272>, [
	[<ore:wireGtQuadrupleKanthal>, <ore:wireGtQuadrupleKanthal>, <ore:circuitAdvanced>],
	[<gregtech:meta_item_1:32642>, <gregtech:machine:503>, <ore:pipeMediumStainlessSteel>],
	[<ore:wireGtQuadrupleKanthal>, <ore:wireGtQuadrupleKanthal>, <ore:circuitAdvanced>]]);

recipes.addShaped(<gregtech:machine:273>, [
	[<ore:wireGtQuadrupleNichrome>, <ore:wireGtQuadrupleNichrome>, <ore:circuitExtreme>],
	[<gregtech:meta_item_1:32643>, <gregtech:machine:504>, <gregtech:fluid_pipe:2072>],
	[<ore:wireGtQuadrupleNichrome>, <ore:wireGtQuadrupleNichrome>, <ore:circuitExtreme>]]);



recipes.addShapeless(<gregtech:meta_item_1:2700>, [<gregtech:meta_item_1:2033>,<minecraft:redstone>]);
recipes.addShapeless(<minecraft:flint>, [<gregtech:meta_tool:12>, <minecraft:gravel:*>, <minecraft:gravel:*>]);

furnace.addRecipe(<minecraft:iron_nugget> * 3, <gregtech:meta_item_1:2255>, 0.0);
furnace.addRecipe(<minecraft:iron_nugget> * 2, <gregtech:meta_item_1:3255>, 0.0);

furnace.remove(<gregtech:meta_item_1:10700>);
furnace.addRecipe(<enderio:item_alloy_ingot:4>, <gregtech:meta_item_1:2700>, 0.0);

recipes.addShaped(<gregtech:meta_item_2:26033>, [[<gregtech:meta_item_1:14033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:14033>],[<gregtech:meta_item_1:12033>, <gregtech:meta_tool:11>, <gregtech:meta_item_1:12033>], [<gregtech:meta_item_1:14033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:14033>]]);


makeShaped("of_sponge", <minecraft:sponge>,
	["PPP",
	 "PMP",
	 "PPP"],
	{ P : <gregtech:meta_item_2:32570>,  // Plant Ball
	  M : <inspirations:mulch>});

// Bronze Casing Assembler recipe
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12095>*6, <minecraft:brick_block>)
	.outputs(<gregtech:metal_casing>*3)
	.duration(50).EUt(16).buildAndRegister();

//Fix unintended Concrete powerder skips

macerator.findRecipe(8, [<gregtech:concrete>], [null]).remove();
fluid_extractor.findRecipe(32, [<gregtech:concrete>], [null]).remove();


recipes.removeByRecipeName("gregtech:block_decompress_concrete");

macerator.recipeBuilder()
	.inputs(<gregtech:concrete>)
	.outputs(<gregtech:meta_item_1:2296> *9)
	.duration(270).EUt(8).buildAndRegister();

fluid_extractor.recipeBuilder()
	.inputs(<gregtech:concrete>)
	.fluidOutputs(<liquid:concrete>*1296)
	.duration(720).EUt(32).buildAndRegister();

recipes.addShapeless(<gregtech:meta_item_1:2296>*9, [<gregtech:concrete>]);

//Fix Wool macerator recipes
macerator.findRecipe(2, [<minecraft:wool>], [null]).remove();
macerator.recipeBuilder()
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:string> *4)
	.duration(400).EUt(2).buildAndRegister();

//Remove Unobtainable Clay recipe
recipes.removeByRecipeName("thermalfoundation:clay_ball");

//Add recipe for Iron Trapdoor
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12033> * 4)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6}))
	.outputs(<minecraft:iron_trapdoor>)
	.duration(200).EUt(16).buildAndRegister();


//Restore Pump Recipes

val material as string[] = [

	"Chrome",
	"Iridium",
	"Darmstadtium",
	"Osmium",
	"Tin",
	"Titanium",
	"Bronze",
	"StainlessSteel",
	"Steel",
	"TungstenSteel",
	"SteelMagnetic",
	"Hssg",
	"Hsse",
	"Neutronium"

] as string[];

for mat in material {
	var allPlate = oreDict.get("plate" ~ mat);
	var plate = allPlate.firstItem;
	var allScrew = oreDict.get("screw" ~ mat);
	var screw = allScrew.firstItem;
	var allRing = oreDict.get("ring" ~ mat);
	var ring = allRing.firstItem;
	var allRotor = oreDict.get("rotor" ~ mat);
	var rotor = allRotor.firstItem;

	//Assembler Recipe
	assembler.recipeBuilder()
		.inputs(plate*4, ring)
		.fluidInputs(<liquid:soldering_alloy> * 32)
		.outputs(rotor)
		.EUt(24).duration(240).buildAndRegister();

	//By Hand Recipe
	recipes.remove(rotor);

	makeShaped("of_rotor_" ~ mat, rotor,
		["PHP",
	 	 "SRF",
	 	 "PDP"],
		{ P : plate,  
	  	  H : <ore:gtceHardHammers>,
	  	  S : screw,
	  	  R : ring,
	  	  F : <ore:gtceFiles>,
	  	  D : <ore:gtceScrewdrivers>});
}


//Adding Pump recipes to the assembler

val ringMaterial = [

	<gregtech:meta_item_1:18152>, //Rubber Ring
	<gregtech:meta_item_1:18398>, //Styrene-Butadiene Ring
	<gregtech:meta_item_1:18391> // Silicone Rubber Ring

] as IItemStack[];


for ringItem in ringMaterial {

assembler.recipeBuilder().
inputs([<gregtech:meta_item_2:18071>, <gregtech:meta_item_1:17071>, <gregtech:meta_item_1:32600>, <gregtech:fluid_pipe:2095>, <gregtech:cable:5071>, ringItem * 2]).outputs([<gregtech:meta_item_1:32610>]).duration(200).EUt(16).buildAndRegister();	//lv pump
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18095>, <gregtech:meta_item_1:17095>, <gregtech:meta_item_1:32601>, <gregtech:fluid_pipe:2184>, <gregtech:cable:5018>, ringItem * 2]).outputs([<gregtech:meta_item_1:32611>]).duration(200).EUt(16).buildAndRegister();	//mv pump
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18184>, <gregtech:meta_item_1:17184>, <gregtech:meta_item_1:32602>, <gregtech:fluid_pipe:2183>, <gregtech:cable:5026>, ringItem * 2]).outputs([<gregtech:meta_item_1:32612>]).duration(200).EUt(16).buildAndRegister();	//hv pump
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18183>, <gregtech:meta_item_1:17183>, <gregtech:meta_item_1:32603>, <gregtech:fluid_pipe:2072>, <gregtech:cable:5001>, ringItem * 2]).outputs([<gregtech:meta_item_1:32613>]).duration(200).EUt(16).buildAndRegister();	//ev pump
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18235>, <gregtech:meta_item_1:17235>, <gregtech:meta_item_1:32604>, <gregtech:fluid_pipe:2235>, <gregtech:cable:5074>, ringItem * 2]).outputs([<gregtech:meta_item_1:32614>]).duration(200).EUt(16).buildAndRegister();	//iv pump

}



//Vinyl Acetate
electrolyzer.recipeBuilder()
	.fluidInputs(<liquid:vinyl_acetate> * 12000)
	.outputs(<ore:dustCarbon>.firstItem * 4)
	.fluidOutputs(<liquid:oxygen> * 2000, <liquid:hydrogen> * 6000)
	.duration(288).EUt(60).buildAndRegister();

//Polyvinyl Acetate
electrolyzer.recipeBuilder()
	.fluidInputs(<liquid:polyvinyl_acetate> * 12000)
	.outputs(<ore:dustCarbon>.firstItem * 4)
	.fluidOutputs(<liquid:oxygen> * 2000, <liquid:hydrogen> * 6000)
	.duration(288).EUt(60).buildAndRegister();

//Dichlorobenzene
electrolyzer.recipeBuilder()
	.fluidInputs(<liquid:dichlorobenzene> * 12000)
	.outputs(<ore:dustCarbon>.firstItem * 6)
	.fluidOutputs(<liquid:chlorine> * 2000, <liquid:hydrogen> * 4000)
	.duration(576).EUt(60).buildAndRegister();


//Implosion Compressor Recipes (Adding back the dynamite)

val implosioninputs = [
	[<gregtech:meta_item_1:2244>, <gregtech:meta_item_1:8244>],
	[<gregtech:meta_item_1:2219>, <minecraft:ender_eye>],
	[<gregtech:meta_item_1:2085>, <gregtech:meta_item_1:8085>],
	[<gregtech:meta_item_1:2218>, <minecraft:ender_pearl>],
	[<gregtech:meta_item_1:2247>, <gregtech:meta_item_1:8247>],
	[<gregtech:meta_item_1:2212>, <gregtech:meta_item_1:8212>],
	[<gregtech:meta_item_1:2209>, <gregtech:meta_item_1:8209>],
	[<gregtech:meta_item_1:2187>, <gregtech:meta_item_1:8187>],
	[<gregtech:meta_item_1:2206>, <gregtech:meta_item_1:8206>],
	[<gregtech:meta_item_1:2213>, <gregtech:meta_item_1:8213>],
	[<gregtech:meta_item_1:2092>, <gregtech:meta_item_1:8092>],
	[<gregtech:meta_item_1:2190>, <gregtech:meta_item_1:8190>],
	[<gregtech:meta_item_1:2157>, <gregtech:meta_item_1:8157>],
	[<gregtech:meta_item_1:2243>, <gregtech:meta_item_1:8243>],
	[<gregtech:meta_item_1:2154>, <gregtech:meta_item_1:8154>],
	[<gregtech:meta_item_1:2331>, <minecraft:nether_star>],
	[<gregtech:meta_item_1:2113>, <minecraft:emerald>],
	[<gregtech:meta_item_1:2117>, <gregtech:meta_item_1:8117>],
	[<gregtech:meta_item_1:2122>, <gregtech:meta_item_1:8122>],
	[<gregtech:meta_item_1:2214>, <gregtech:meta_item_1:8214>]

] as IItemStack[][];

for input in implosioninputs {

implosion.recipeBuilder()
	.inputs([input[0] * 4])
	.outputs([input[1] * 3, <gregtech:meta_item_1:110> * 2])
	.property("explosives", <gregtech:meta_item_1:32629> * 32)
	.duration(20).EUt(30).buildAndRegister();

}

//Reinforced Iridium
implosion.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32434>)
	.property("explosives", <gregtech:meta_item_1:32629> * 64)
	.outputs(<gregtech:meta_item_2:32435>)
	.duration(20).EUt(30).buildAndRegister();

//Omnium
implosion.recipeBuilder()
	.inputs([<extendedcrafting:singularity_ultimate>])
	.outputs(<extendedcrafting:material:33>)
	.property("explosives", <gregtech:meta_item_1:32629> * 8)
	.duration(20).EUt(30).buildAndRegister();

//Custom Byproduct chances: Revert macerator chances to old behavior

RecipeMap.chanceFunction = function(chance as int,
									boostPerTier as int,
									tier as int) as int {
	if boostPerTier == 0 {
	    // Simulation Chamber recipes, for example, which should not scale
	    return chance;
	}
	return chance * pow(2, tier);
};

//Slight nerf to Bone Meal Recipe
macerator.findRecipe(8, [<minecraft:bone>], [null]).remove();
macerator.recipeBuilder()
	.inputs(<minecraft:bone>)
	.outputs(<minecraft:dye:15> * 4)
	.duration(60).EUt(8).buildAndRegister();

//Adjust the Bone Meal by hand recipe
recipes.removeByRecipeName("gregtech:bone_to_bone_meal");
recipes.addShapeless(<minecraft:dye:15> * 3,
	[<minecraft:bone>, <ore:gtceMortars>]);

//Adjust Bone Meal Compressor recipe to prevent dupe
compressor.findRecipe(8, [<minecraft:dye:15> * 3], [null]).remove();
compressor.recipeBuilder()
	.inputs(<minecraft:dye:15> * 4)
	.outputs(<minecraft:bone>)
	.duration(20).EUt(8).buildAndRegister();

//Adjust the recipe of the GTCE Crafting Station
recipes.removeByRecipeName("gregtech:workbench_bronze");
makeShaped("gtce_crafting_station", <gregtech:machine:825>,
	["CWC",
	 "IAI",
	 "IHI"],
	{ C : <minecraft:chest>,
	  W : <minecraft:crafting_table>,
	  I : <gregtech:meta_item_1:12033>, //Iron Plate
	  A : <forestry:worktable>, //Worktable
	  H : <ore:gtceHardHammers> //Hammer
	  });

//Add Decomposition Recipe for Polyphenylene Sulfide
electrolyzer.recipeBuilder()
	.fluidInputs(<liquid:polyphenylene_sulfide> * 11000)
	.outputs(<gregtech:meta_item_1:2012> * 6, <gregtech:meta_item_1:2065>)
	.fluidOutputs(<liquid:hydrogen> * 4000)
	.duration(288).EUt(128).buildAndRegister();

//Fix glowstone block recipe conflict in cutting saw
saw.findRecipe(30, [<minecraft:glowstone>], [<liquid:water> * 73]).remove();
saw.findRecipe(30, [<minecraft:glowstone>], [<liquid:distilled_water> * 55]).remove();
saw.findRecipe(30, [<minecraft:glowstone>], [<liquid:lubricant> * 18]).remove();

saw.findRecipe(30, [<minecraft:glowstone>], [<liquid:water> * 73]).remove();
saw.findRecipe(30, [<minecraft:glowstone>], [<liquid:distilled_water> * 55]).remove();
saw.findRecipe(30, [<minecraft:glowstone>], [<liquid:lubricant> * 18]).remove();

	
saw.recipeBuilder()
	.inputs(<minecraft:glowstone>)
	.fluidInputs(<liquid:water> * 5)
	.outputs(<gregtech:meta_item_1:12330> * 4)
	.duration(200).EUt(16).buildAndRegister();

saw.recipeBuilder()
	.inputs(<minecraft:glowstone>)
	.fluidInputs(<liquid:distilled_water> * 3)
	.outputs(<gregtech:meta_item_1:12330> * 4)
	.duration(130).EUt(16).buildAndRegister();

saw.recipeBuilder()
	.inputs(<minecraft:glowstone>)
	.fluidInputs(<liquid:lubricant> * 1)
	.outputs(<gregtech:meta_item_1:12330> * 4)
	.duration(50).EUt(16).buildAndRegister();

//Re-adding the old GTCE granite recipe, as it is being relied on.
//Due to GTCE's weird recipe removal for items that share an oredict, only one of the items need to be removed
macerator.findRecipe(8, [<minecraft:stone:1>], [null]).remove();

macerator.recipeBuilder()
	.inputs(<ore:stoneGranite>)
	.outputs(<gregtech:meta_item_1:2251>)
	.chancedOutput(<gregtech:meta_item_1:2069>, 100, 100)
	.duration(150).EUt(8).buildAndRegister();

//Adjust the recipe of the Rotor mold
recipes.removeByRecipeName("gregtech:shape/mold/shape_mold_rotor");
makeShaped("gtce_rotor_mold", <metaitem:shape.mold.rotor>,
	["H  ",
	 "   ",
	 "  P"],
	{ H : <ore:gtceHardHammers>,
	  P : <metaitem:shape.empty>
	  });

recipes.removeByRecipeName("gregtech:scanner_battery.re.lv.lithium");
recipes.removeByRecipeName("gregtech:scanner_battery.re.lv.cadmium");
recipes.removeByRecipeName("gregtech:scanner_battery.re.lv.sodium");

//Temporary removal of a duplicate recipe
reactor.findRecipe(30, [<metaitem:dustSodiumBisulfate> * 7], [<liquid:water> * 1000]).remove();

//Tetranitromethane recipe as a holdover
reactor.recipeBuilder()
	.fluidInputs(<liquid:ethenone> * 2000, <liquid:nitric_acid> * 4000)
	.fluidOutputs(<liquid:tetranitromethane> * 1000, <liquid:water> * 4000)
	.outputs(<metaitem:dustCarbon> * 3)
	.duration(480).EUt(120).buildAndRegister();

electrolyzer.findRecipe(60, [null], [<liquid:glycerol> * 1000]).remove();