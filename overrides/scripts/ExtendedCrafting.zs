import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.CommonVars.makeShaped as makeShaped;
import scripts.CommonVars.makeExtremeRecipe5 as makeExtremeRecipe5;
import scripts.CommonVars.makeExtremeRecipe7 as makeExtremeRecipe7;
import scripts.CommonVars.makeExtremeRecipe9 as makeExtremeRecipe9;

<extendedcrafting:frame>.displayName = "Black Steel Frame";
<extendedcrafting:lamp>.displayName = "Black Steel Lamp";

fluid_extractor.recipeBuilder()
    .inputs([<ore:dustCryotheum>])
    .fluidOutputs([<liquid:cryotheum> * 250])
    .duration(40).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<ore:dustPyrotheum>])
    .fluidOutputs([<liquid:pyrotheum> * 250])
    .duration(40).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<ore:dustAerotheum>])
    .fluidOutputs([<liquid:aerotheum> * 250])
    .duration(40).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<ore:dustPetrotheum>])
    .fluidOutputs([<liquid:petrotheum> * 250])
    .duration(40).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<ore:gemEnderPearl>])
    .fluidOutputs([<liquid:ender> * 250])
    .duration(40).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<thermalfoundation:material:1028>])
    .fluidOutputs([<liquid:mana> * 250])
    .duration(40).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<thermalfoundation:coin:1>])
    .fluidOutputs([<liquid:gold> * 48])
    .duration(40).EUt(8).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<thermalfoundation:coin:64>])
    .fluidOutputs([<liquid:copper> * 48])
    .duration(40).EUt(8).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<thermalfoundation:coin:66>])
    .fluidOutputs([<liquid:silver> * 48])
    .duration(40).EUt(8).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<thermalfoundation:coin:69>])
    .fluidOutputs([<liquid:nickel> * 48])
    .duration(40).EUt(8).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<thermalfoundation:coin:70>])
    .fluidOutputs([<liquid:platinum> * 48])
    .duration(40).EUt(8).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<deepmoblearning:living_matter_overworldian>])
    .fluidOutputs([<liquid:xpjuice> * 200])
    .duration(40).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<deepmoblearning:living_matter_hellish>])
    .fluidOutputs([<liquid:xpjuice> * 400])
    .duration(80).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<deepmoblearning:living_matter_extraterrestrial>])
    .fluidOutputs([<liquid:xpjuice> * 500])
    .duration(100).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<actuallyadditions:item_rice_seed>])
    .fluidOutputs([<liquid:seed_oil> * 10])
    .duration(32).EUt(2).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<actuallyadditions:item_canola_seed>])
    .fluidOutputs([<liquid:seed_oil> * 10])
    .duration(32).EUt(2).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<actuallyadditions:item_flax_seed>])
    .fluidOutputs([<liquid:seed_oil> * 10])
    .duration(32).EUt(2).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<actuallyadditions:item_coffee_seed>])
    .fluidOutputs([<liquid:seed_oil> * 10])
    .duration(32).EUt(2).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<actuallyadditions:item_misc:23>])
    .fluidOutputs([<liquid:seed_oil> * 50])
    .duration(32).EUt(20).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<actuallyadditions:item_misc:24>])
    .fluidOutputs([<liquid:seed_oil> * 250])
    .duration(32).EUt(200).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<inspirations:potato_seeds>])
    .fluidOutputs([<liquid:seed_oil> * 10])
    .duration(32).EUt(20).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<inspirations:carrot_seeds>])
    .fluidOutputs([<liquid:seed_oil> * 10])
    .duration(32).EUt(20).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<inspirations:sugar_cane_seeds>])
    .fluidOutputs([<liquid:seed_oil> * 10])
    .duration(32).EUt(2).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<inspirations:cactus_seeds>])
    .fluidOutputs([<liquid:seed_oil> * 10])
    .duration(32).EUt(2).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:thorium>])
    .fluidOutputs([<liquid:thorium> * 144])
    .duration(200).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:thorium:4>])
    .fluidOutputs([<liquid:thorium> * 144])
    .duration(200).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:thorium:2>])
    .fluidOutputs([<liquid:thorium> * 16])
    .duration(20).EUt(32).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:thorium:6>])
    .fluidOutputs([<liquid:thorium> * 16])
    .duration(20).EUt(32).buildAndRegister();

//Solidified Gasses
solidifier.recipeBuilder()
    .fluidInputs([<liquid:argon> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedargon>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:krypton> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedkrypton>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:xenon> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedxenon>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:chlorine> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedchlorine>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:fluorine> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedfluorine>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:mercury> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedmercury>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:helium> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedhelium>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:neon> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedneon>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:radon> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedradon>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:nitrogen> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiednitrogen>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:oxygen> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedoxygen>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:hydrogen> * 1000])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:solidifiedhydrogen>)
    .duration(500).EUt(16).buildAndRegister();

freezer.recipeBuilder()
    .inputs([<contenttweaker:hotdraconiumingot>])
    .fluidInputs([<liquid:cryotheum> * 2000])
    .outputs(<draconicevolution:draconium_ingot>)
    .duration(600).EUt(1200).buildAndRegister();

freezer.recipeBuilder()
    .inputs([<minecraft:ice>])
    .fluidInputs([<liquid:cryotheum> * 1000])
    .outputs(<nuclearcraft:block_ice>)
    .duration(600).EUt(1200).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:thorium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedthorium>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:uranium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizeduranium>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:uranium235> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizeduranium>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:uranium233> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizeduranium>)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:neptunium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedneptunium> * 2)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:plutonium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedplutonium> * 2)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:plutonium241> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedplutonium> * 2)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:plutonium2> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedplutonium> * 2)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:americium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedamericium> * 4)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:curium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedcurium> * 4)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:berkelium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedberkelium> * 8)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:californium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedcalifornium> * 8)
    .duration(500).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:einsteinium> * 144])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:stabilizedeinsteinium> * 16)
    .duration(500).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<avaritia:resource:1>])
    .fluidOutputs([<liquid:moltencrystalmatrix> * 144])
    .duration(180).EUt(16).buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs([<liquid:moltencrystalmatrix> * 144])
    .notConsumable(<gregtech:meta_item_1:32306>)
    .outputs(<avaritia:resource:1>)
    .duration(500).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<minecraft:dye:4>])
    .fluidOutputs([<liquid:lapis> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2216>])
    .fluidOutputs([<liquid:lapis> * 144])
    .duration(180).EUt(16).buildAndRegister();


fluid_extractor.recipeBuilder()
    .inputs([<minecraft:quartz>])
    .fluidOutputs([<liquid:quartz> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2201>])
    .fluidOutputs([<liquid:quartz> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<minecraft:emerald>])
    .fluidOutputs([<liquid:emerald> * 144])
    .duration(180).EUt(16).buildAndRegister();

// Molten Diamond for NC Active Coolers
fluid_extractor.recipeBuilder()
    .inputs([<minecraft:diamond>])
    .fluidOutputs([<liquid:diamond> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2111>])
    .fluidOutputs([<liquid:diamond> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2201>])
    .fluidOutputs([<liquid:quartz> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}})])
    .fluidOutputs([<liquid:milk> * 32000])
    .duration(400).EUt(30).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:uranium>])
    .fluidOutputs([<liquid:uranium233> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:uranium:2>])
    .fluidOutputs([<liquid:uranium233> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:uranium:8>])
    .fluidOutputs([<liquid:uranium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:uranium:10>])
    .fluidOutputs([<liquid:uranium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:neptunium>])
    .fluidOutputs([<liquid:neptunium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:neptunium:2>])
    .fluidOutputs([<liquid:neptunium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:neptunium:4>])
    .fluidOutputs([<liquid:neptunium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:neptunium:6>])
    .fluidOutputs([<liquid:neptunium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:plutonium>])
    .fluidOutputs([<liquid:plutonium2> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:plutonium:2>])
    .fluidOutputs([<liquid:plutonium2> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:plutonium:4>])
    .fluidOutputs([<liquid:plutonium2> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:plutonium:6>])
    .fluidOutputs([<liquid:plutonium2> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:plutonium:12>])
    .fluidOutputs([<liquid:plutonium2> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:plutonium:14>])
    .fluidOutputs([<liquid:plutonium2> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:10052>])
    .fluidOutputs([<liquid:plutonium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:9052>])
    .fluidOutputs([<liquid:plutonium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:curium>])
    .fluidOutputs([<liquid:curium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:curium:2>])
    .fluidOutputs([<liquid:curium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:curium:4>])
    .fluidOutputs([<liquid:curium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:curium:6>])
    .fluidOutputs([<liquid:curium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:curium:8>])
    .fluidOutputs([<liquid:curium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:curium:10>])
    .fluidOutputs([<liquid:curium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:curium:12>])
    .fluidOutputs([<liquid:curium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:curium:14>])
    .fluidOutputs([<liquid:curium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:americium>])
    .fluidOutputs([<liquid:americium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:americium:2>])
    .fluidOutputs([<liquid:americium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:americium:4>])
    .fluidOutputs([<liquid:americium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:americium:6>])
    .fluidOutputs([<liquid:americium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:americium:8>])
    .fluidOutputs([<liquid:americium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:americium:10>])
    .fluidOutputs([<liquid:americium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:berkelium>])
    .fluidOutputs([<liquid:berkelium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:berkelium:2>])
    .fluidOutputs([<liquid:berkelium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:berkelium:4>])
    .fluidOutputs([<liquid:berkelium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:berkelium:6>])
    .fluidOutputs([<liquid:berkelium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:californium>])
    .fluidOutputs([<liquid:californium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:californium:2>])
    .fluidOutputs([<liquid:californium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:californium:4>])
    .fluidOutputs([<liquid:californium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:californium:6>])
    .fluidOutputs([<liquid:californium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:californium:8>])
    .fluidOutputs([<liquid:californium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:californium:10>])
    .fluidOutputs([<liquid:californium> * 16])
    .duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:californium:12>])
    .fluidOutputs([<liquid:californium> * 144])
    .duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<nuclearcraft:californium:14>])
    .fluidOutputs([<liquid:californium> * 16])
    .duration(20).EUt(16).buildAndRegister();

recipes.removeByRecipeName("gregtech:nugget_assembling_235");

//Noble Gasses
centrifuge.findRecipe(30, [], [<liquid:liquid_air> * 53000]).remove();
centrifuge.findRecipe(30, [], [<liquid:noble_gases> * 43000]).remove();

mods.jei.JEI.removeAndHide(<extendedcrafting:material>);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:3>);
mods.jei.JEI.removeAndHide(<extendedcrafting:table_basic>);

recipes.remove(<extendedcrafting:compressor>);
makeShaped("of_extendedcrafting_compressor", <extendedcrafting:compressor>,
    ["ABA",
     "CDC",
     "AEA"],
    { A : <gregtech:meta_item_1:10231>,
      B : <extendedcrafting:material:16>,
      C : <extendedcrafting:material:10>,
      D : <extendedcrafting:frame>,
      E : <gregtech:meta_item_1:12231> });
      
recipes.remove(<extendedcrafting:guide>);

recipes.remove(<extendedcrafting:frame>);
makeShaped("of_extendedcrafting_frame", <extendedcrafting:frame>,
    ["AGA",
     "GBG",
     "AGA"],
    { A : <gregtech:meta_item_1:10231>,
      B : <gregtech:meta_item_1:12231>,
      G : <minecraft:glass> });

recipes.remove(<extendedcrafting:interface>);
makeShaped("of_extendedcrafting_interface", <extendedcrafting:interface>,
    ["ABA",
     "CDC",
     "AEA"],
    { A : <gregtech:meta_item_1:10231>,
      B : <extendedcrafting:material:10>,
      C : <extendedcrafting:material:18>,
      D : <extendedcrafting:frame>,
      E : <gregtech:meta_item_1:12231> });

//Remove the unavailable pedestal
recipes.removeByRecipeName("extendedcrafting:pedestal");

makeShaped("of_extendedcrafting_pedestal", <extendedcrafting:pedestal>,
    [" A ",
     " A ",
     "BCB"],
    { A : <gregtech:meta_item_1:10231>,
      B : <gregtech:meta_item_1:12231>,
      C : <gregtech:meta_block_compressed_14:8> }); //Red Steel Block

<extendedcrafting:material:19>.displayName = "Conflux Component";
recipes.remove(<extendedcrafting:material:19>);

makeShaped("of_conflux_component", <extendedcrafting:material:19>,
    [" A ",
     "BCD",
     " E "],
    { A : <extendedcrafting:material:14>,
      B : <extendedcrafting:material:15>,
      C : <extendedcrafting:material:18>,
      D : <extendedcrafting:material:16>,
      E : <extendedcrafting:material:17> });

<extendedcrafting:material:13>.displayName = "Conflux Catalyst";
recipes.remove(<extendedcrafting:material:13>);

makeShaped("of_conflux_catalyst", <extendedcrafting:material:13>,
    [" A ",
     "BCD",
     " E "],
    { A : <extendedcrafting:material:8>,
      B : <extendedcrafting:material:9>,
      C : <extendedcrafting:material:12>,
      D : <extendedcrafting:material:10>,
      E : <extendedcrafting:material:11> });

recipes.removeByRecipeName("extrautils2:angel_ring_0");
recipes.removeByRecipeName("extrautils2:angel_ring_1");
recipes.removeByRecipeName("extrautils2:angel_ring_2");
recipes.removeByRecipeName("extrautils2:angel_ring_3");
recipes.removeByRecipeName("extrautils2:angel_ring_4");
recipes.removeByRecipeName("extrautils2:angel_ring_5");


makeExtremeRecipe5(<extrautils2:angelring>,
    [" GGG ",
     "G R G",
     "GV VG",
     "G R G",
     " GGG "],
    { G : <ore:ingotRoseGold>,
      R : reinforcedjetpack,
      V : vibrantjetpack });

///////////////////////// ZPM  ///////////////////////////////

makeExtremeRecipe9(<gregtech:meta_item_1:32599>,
    ["  NNNNN  ",
     "  NBCBN  ",
     "  NCBCN  ",
     "  NBCBN  ",
     "   UUU   ",
     "   UGU   ",
     "   UGU   ",
     "   UUU   ",
     "   NNN   "],
    { B : <contenttweaker:stabilizedberkelium>,
      C : <contenttweaker:stabilizedcalifornium>,
      G : <gregtech:meta_item_1:32676>,
      N : <nuclearcraft:part:3>,
      U : <ore:circuitUltimate> });


//Luminescence
recipes.remove(<extendedcrafting:material:7>);
reactor.recipeBuilder()
    .inputs([<nuclearcraft:compound:2>])
    .inputs([<gregtech:meta_item_1:2001>])
    .fluidInputs([<liquid:phosphoric_acid> * 2000])
    .outputs(<extendedcrafting:material:7> * 4)
    .duration(20).EUt(30).buildAndRegister();

// Extended Crafting Components
recipes.remove(<extendedcrafting:material:14>);
recipes.addShaped(<extendedcrafting:material:14>,
    [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],
     [<gregtech:meta_item_1:12201>, <gregtech:meta_item_1:12033>]]);

recipes.remove(<extendedcrafting:material:15>);
recipes.addShaped(<extendedcrafting:material:15>,
    [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],
     [<gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12330>]]);

recipes.remove(<extendedcrafting:material:16>);
recipes.addShaped(<extendedcrafting:material:16>,
    [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],
     [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12218>]]);

recipes.remove(<extendedcrafting:material:17>);
recipes.addShaped(<extendedcrafting:material:17>,
    [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],
     [<gregtech:meta_item_1:12076>, <gregtech:meta_item_1:12113>]]);

recipes.remove(<extendedcrafting:material:18>);
recipes.addShaped(<extendedcrafting:material:18>,
    [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],
     [<gregtech:meta_item_1:12207>, <extendedcrafting:material:24>]]);

// Extended Crafting Catalysts
val catalystShape as string[] = [" A ",
                                 "ABA",
                                 " A "];

recipes.remove(<extendedcrafting:material:8>);
makeShaped("of_catalyst_1", <extendedcrafting:material:8>, catalystShape,
    { A : <extendedcrafting:material:14>,
      B : <gregtech:meta_item_1:12231> });

recipes.remove(<extendedcrafting:material:9>);

makeShaped("of_catalyst_2", <extendedcrafting:material:9>, catalystShape,
    { A : <extendedcrafting:material:15>,
      B : <gregtech:meta_item_1:12231> });


recipes.remove(<extendedcrafting:material:10>);
makeShaped("of_catalyst_3", <extendedcrafting:material:10>, catalystShape,
    { A : <extendedcrafting:material:16>,
      B : <gregtech:meta_item_1:12231> });

recipes.remove(<extendedcrafting:material:11>);
makeShaped("of_catalyst_4", <extendedcrafting:material:11>, catalystShape,
    { A : <extendedcrafting:material:17>,
      B : <gregtech:meta_item_1:12231> });

recipes.remove(<extendedcrafting:material:12>);
makeShaped("of_catalyst_5", <extendedcrafting:material:12>, catalystShape,
    { A : <extendedcrafting:material:18>,
      B : <gregtech:meta_item_1:12231> });

//Advanced Extended Crafting Table
recipes.remove(<extendedcrafting:table_advanced>);
recipes.addShapeless(<extendedcrafting:table_advanced> * 2, [<extendedcrafting:table_advanced>]);
makeShaped("of_extendedcrafting_table_advanced", <extendedcrafting:table_advanced>,
    ["ABA",
     "CDC",
     "ABA"],
    { A : <extendedcrafting:material:15>,
      B : <extendedcrafting:material:8>,
      C : <avaritia:compressed_crafting_table>,
      D : <extendedcrafting:material:9> });

<extendedcrafting:table_advanced>.displayName = "Extended Crafting Table";

//Elite Extended Crafting Table
recipes.remove(<extendedcrafting:table_elite>);
recipes.addShapeless(<extendedcrafting:table_elite> * 2,[<extendedcrafting:table_elite>]);
makeExtremeRecipe5(<extendedcrafting:table_elite>,
    ["CBABC",
     "BDDDB",
     "ADTDA",
     "BDDDB",
     "CBABC"],
    { A : <extendedcrafting:material:10>,
      B : <gregtech:meta_item_1:12231>,
      C : <gregtech:meta_block_compressed_0:1>,
      D : <extendedcrafting:material:16>,
      T : <extendedcrafting:table_advanced> });
<extendedcrafting:table_elite>.displayName = "Elite Extended Crafting Table";

//Ultimate Extended Crafting Table
recipes.remove(<extendedcrafting:table_ultimate>);
recipes.addShapeless(<extendedcrafting:table_ultimate> * 2, [<extendedcrafting:table_ultimate>]);

<extendedcrafting:table_ultimate>.displayName = "Ultimate Extended Crafting Table";
makeExtremeRecipe7(<extendedcrafting:table_ultimate>,
    ["EBBABBE",
     "BCCCCCB",
     "BCBDBCB",
     "ACDTDCA",
     "BCBDBCB",
     "BCCCCCB",
     "EBBABBE"],
    { A : <extendedcrafting:material:13>,
      B : <gregtech:meta_item_1:12231>,
      C : <extendedcrafting:material:17>,
      D : <extendedcrafting:material:18>,
      E : <minecraft:emerald_block>,
      T : <extendedcrafting:table_elite> });

<extendedcrafting:singularity_ultimate>.displayName = "Mote of Omnium";

implosion.recipeBuilder()
    .inputs([<extendedcrafting:singularity_ultimate>])
    .property("explosives", 1)
    .outputs(<extendedcrafting:material:33>)
    .duration(20).EUt(30).buildAndRegister();

<extendedcrafting:material:33>.displayName = "Omnium Nugget";
<extendedcrafting:material:32>.displayName = "Omnium Ingot";
<extendedcrafting:storage:4>.displayName = "Block of Omnium";



recipes.remove(<minecraft:end_crystal>);
makeShaped("of_end_crystal", <minecraft:end_crystal>,
    ["AAA",
     "ABA",
     "AAA"],
    { A : <minecraft:glass_pane>,
      B : <gregtech:meta_item_1:32725> });

///////////////////////// Nether Star  ///////////////////////////////
recipes.remove(<minecraft:nether_star>);
makeShaped("of_nether_star", <minecraft:nether_star>,
    [" N ",
     "WCE",
     " S "],
    { N : <cns:star_fragment>,
      W : <contenttweaker:netherstarwest>,
      C : <cns:star_core>,
      E : <contenttweaker:netherstareast>,
      S : <contenttweaker:netherstarsouth> });

<cns:star_fragment>.displayName = "Nether Star Tip North";
recipes.remove(<cns:star_fragment>);
makeShaped("of_nether_star_north", <cns:star_fragment>,
    [" A ",
     "ABA",
     "ABA"],
    { A : <minecraft:quartz>,
      B : <thermalfoundation:material:1026> });

makeShaped("of_nether_star_south", <contenttweaker:netherstarsouth>,
    ["ABA",
     "ABA",
     " A "],
    { A : <minecraft:quartz>,
      B : <thermalfoundation:material:1027> });

makeShaped("of_nether_star_east", <contenttweaker:netherstareast>,
    ["AA ",
     "BBA",
     "AA "],
    { A : <minecraft:quartz>,
      B : <thermalfoundation:material:1024> });

makeShaped("of_nether_star_west", <contenttweaker:netherstarwest>,
    [" AA",
     "ABB",
     " AA"],
    { A : <minecraft:quartz>,
      B : <thermalfoundation:material:1025> });

recipes.remove(<cns:star_core>);
makeShaped("of_nether_star_core", <cns:star_core> * 4,
    ["ABA",
     "DEF",
     "ACA"],
    { A : <minecraft:quartz>,
      B : <thermalfoundation:material:2050>,
      C : <thermalfoundation:material:2052>,
      D : <thermalfoundation:material:2048>,
      E : <extendedcrafting:storage:1>,
      F : <minecraft:blaze_rod> });

// Basalz Powder
reactor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2101>])
    .fluidInputs([<liquid:elementalreduction> * 100])
    .outputs(<thermalfoundation:material:2053>)
    .duration(160).EUt(90).buildAndRegister();

reactor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2106>])
    .fluidInputs([<liquid:elementalreduction> * 100])
    .outputs(<thermalfoundation:material:2053>)
    .duration(160).EUt(90).buildAndRegister();

//Blitz Powder
reactor.recipeBuilder()
    .inputs(<ore:dustEndstone>)
    .fluidInputs([<liquid:elementalreduction> * 100])
    .outputs(<thermalfoundation:material:2051>)
    .duration(160).EUt(90).buildAndRegister();

//Blizz Powder
reactor.recipeBuilder()
    .inputs(<minecraft:snow>)
    .fluidInputs([<liquid:elementalreduction> * 100])
    .outputs(<thermalfoundation:material:2049>)
    .duration(160).EUt(90).buildAndRegister();

//Blaze Powder
reactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2333>)
    .fluidInputs([<liquid:elementalreduction> * 100])
    .outputs(<minecraft:blaze_powder>)
    .duration(160).EUt(90).buildAndRegister();

//Elemental Reduction
reactor.recipeBuilder()
    .inputs(<ore:dustPulsating>)
    .fluidInputs([<liquid:hydrofluoric_acid> * 1000])
    .fluidOutputs(<liquid:elementalreduction> * 1000)
    .duration(80).EUt(90).buildAndRegister();

//Knightslime
reactor.recipeBuilder()
    .inputs(<minecraft:slime>)
    .fluidInputs([<liquid:titanium> * 144])
    .outputs(<contenttweaker:knightslimeingot>)
    .duration(320).EUt(400).buildAndRegister();

<extendedcrafting:storage:6>.displayName = "Block of Endest Stars";
<extendedcrafting:material:40>.displayName = "Endest Star";
<extendedcrafting:material:41>.displayName = "Endest Star Nugget";

///////////////////////// Omnium  ///////////////////////////////

mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:singularity_ultimate>);
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:singularity_ultimate>, [
[null,                            null,                                <extendedcrafting:material:140>,    <contenttweaker:solidifiedhydrogen>,  <contenttweaker:solidifiedhelium>,        <gregtech:meta_item_1:10036>,           <extendedcrafting:material:140>,   null,                               null],
[null,                            <extendedcrafting:material:140>,     <gregtech:meta_item_1:10007>,       <gregtech:meta_item_1:2009>,          <gregtech:meta_item_1:10012>,             <contenttweaker:solidifiednitrogen>,    <contenttweaker:solidifiedoxygen>, <extendedcrafting:material:140>,    null],
[<extendedcrafting:material:140>, <contenttweaker:solidifiedfluorine>, <contenttweaker:solidifiedneon>,    <gregtech:meta_item_1:10063>,         <gregtech:meta_item_1:10038>,             <gregtech:meta_item_1:10001>,           <gregtech:meta_item_1:10061>,      <gregtech:meta_item_1:2050>,        <extendedcrafting:material:140>],
[<gregtech:meta_item_1:2065>,     <contenttweaker:solidifiedchlorine>, <contenttweaker:solidifiedargon>,   <gregtech:meta_item_1:10054>,         <gregtech:meta_item_1:10011>,             <gregtech:meta_item_1:10072>,           <gregtech:meta_item_1:10077>,      <gregtech:meta_item_1:10016>,       <gregtech:meta_item_1:10039>],
[<minecraft:iron_ingot>,          <gregtech:meta_item_1:10017>,        <gregtech:meta_item_1:10044>,       <gregtech:meta_item_1:10018>,         <contenttweaker:exoticmaterialscatalyst>, <gregtech:meta_item_1:10079>,           <gregtech:meta_item_1:10025>,      <gregtech:meta_item_1:2005>,        <contenttweaker:solidifiedkrypton>],
[<gregtech:meta_item_1:10078>,    <gregtech:meta_item_1:10049>,        <gregtech:meta_item_1:10062>,       <gregtech:meta_item_1:10031>,         <gregtech:meta_item_1:10071>,             <gregtech:meta_item_1:10003>,           <contenttweaker:solidifiedxenon>,  <gregtech:meta_item_1:10034>,       <gregtech:meta_item_1:10074>],
[<extendedcrafting:material:140>, <gregtech:meta_item_1:10047>,        <gregtech:meta_item_1:10032>,       <gregtech:meta_item_1:10051>,         <minecraft:gold_ingot>,                   <contenttweaker:solidifiedmercury>,     <contenttweaker:solidifiedradon>,  <contenttweaker:stabilizedthorium>, <extendedcrafting:material:140>],
[null,                            <extendedcrafting:material:140>,     <contenttweaker:stabilizeduranium>, <contenttweaker:stabilizedneptunium>, <contenttweaker:stabilizedplutonium>,     <contenttweaker:stabilizedamericium>,   <contenttweaker:stabilizedcurium>, <extendedcrafting:material:140>,    null],
[null,                            null,                                <extendedcrafting:material:140>,    <contenttweaker:stabilizedberkelium>, <contenttweaker:stabilizedcalifornium>,   <contenttweaker:stabilizedeinsteinium>, <extendedcrafting:material:140>,   null,                               null]]);


//////////////////// Exotic Materials Catalyst ////////////////////////
makeExtremeRecipe7(<contenttweaker:exoticmaterialscatalyst>,
    ["L  M  J",
     " K W S ",
     "  YNT  ",
     "OFUVAIC",
     "  XEH  ",
     " Q G P ",
     "B  R  D"],
    { A : <avaritia:resource:1>,
      B : <contenttweaker:knightslimeingot>,
      C : <enderio:item_alloy_ingot>,
      D : <enderio:item_alloy_ingot:1>,
      E : <enderio:item_alloy_ingot:2>,
      F : <enderio:item_alloy_ingot:5>,
      G : <enderio:item_alloy_ingot:6>,
      H : <enderio:item_alloy_ingot:7>,
      I : <enderio:item_alloy_ingot:8>,
      J : <gregtech:meta_item_1:10127>,
      K : <gregtech:meta_item_1:10129>,
      L : <gregtech:meta_item_1:10133>,
      M : <gregtech:meta_item_1:10232>,
      N : <gregtech:meta_item_1:10233>,
      O : <gregtech:meta_item_1:10301>,
      P : <gregtech:meta_item_1:10302>,
      Q : <gregtech:meta_item_1:10303>,
      R : <gregtech:meta_item_1:10304>,
      S : <gregtech:meta_item_1:10714>,
      T : <ore:ingotMicroversium>,
      U : <redstonearsenal:material:32>,
      V : <simplyjetpacks:metaitemmods:3>,
      W : <thermalfoundation:material:136>,
      X : <thermalfoundation:material:165>,
      Y : <thermalfoundation:material:167> });

////////////////////////// Crystal Matrix Ingot ///////////////////////
recipes.remove(<avaritia:resource:1>);
makeExtremeRecipe9(<avaritia:resource:1>,
    ["         ",
     "     TDDD",
     "  TDDDNAD",
     "DDDANAAND",
     "DANNANNAD",
     "DNAANADDD",
     "DANDDDT  ",
     "DDDT     ",
     "         "],
    { A : <avaritia:resource>,
      D : <minecraft:diamond>,
      N : <minecraft:nether_star>,
      T : <thermalfoundation:material:16> });

recipes.remove(<avaritia:resource>);
recipes.addShaped(<avaritia:resource>, [
    [<gregtech:meta_item_1:12111>, <minecraft:diamond_block>, <gregtech:meta_item_1:12111>],
    [<minecraft:diamond_block>, <gregtech:meta_item_2:25111>, <minecraft:diamond_block>],
    [<gregtech:meta_item_1:12111>, <minecraft:diamond_block>, <gregtech:meta_item_1:12111>]]);



////////////////////////// Ultimate Material ///////////////////////

makeExtremeRecipe5(<armorplus:material:4>,
    ["BCCCB",
     "CBABC",
     "CADAC",
     "CBABC",
     "BCCCB"],
    { A : <armorplus:material:1>,
      B : <armorplus:material:2>,
      C : <armorplus:material:3>,
      D : <draconicevolution:dragon_heart> });

////////////////////////// Eternal Catalyst ///////////////////////

makeExtremeRecipe9(<contenttweaker:eternalcatalyst>,
    ["    D    ",
     " D  D  D ",
     "  DDJDD  ",
     "  DKAHD  ",
     "DDLFBCGDD",
     "  DHEKD  ",
     "  DDIDD  ",
     " D  D  D ",
     "    D    "],
    { A : <actuallyadditions:item_misc:19>,
      B : <armorplus:material:4>,
      C : <extendedcrafting:material:40>,
      D : <extendedcrafting:singularity_ultimate>,
      E : <gregtech:meta_item_1:32725>,
      F : <gregtech:meta_item_1:32726>,
      G : <moreplates:empowered_diamatine_gear>,
      H : <moreplates:empowered_emeradic_gear>,
      I : <moreplates:empowered_enori_gear>,
      J : <moreplates:empowered_palis_gear>,
      K : <moreplates:empowered_restonia_gear>,
      L : <moreplates:empowered_void_gear> });
<contenttweaker:eternalcatalyst>.addTooltip(format.darkGray(format.italic("Gaze into the Abyss...")));


////////////////////////// Infinity Ingot ///////////////////////
mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:6>);
makeExtremeRecipe9(<avaritia:resource:6>,
    ["         ",
     "     ABBB",
     "  ABBBCDB",
     "BBBDCDDCB",
     "BDCCICCDB",
     "BCDDCDBBB",
     "BDCBBBA  ",
     "BBBA     ",
     "         "],
    { A : <avaritia:resource:3>,
      B : <avaritia:resource:4>,
      C : <contenttweaker:eternalcatalyst>,
      D : <extendedcrafting:material:32>,
      I : <avaritia:resource:5> });


////////////////////////// Infinity Catalyst ///////////////////////

mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
makeExtremeRecipe9(<avaritia:resource:5>,
    ["AAAABAAAA",
     "ABAABAABA",
     "AABBBBBAA",
     "AABBCBBAA",
     "BBBCHCBBB",
     "AABBCBBAA",
     "AABBBBBAA",
     "ABAABAABA",
     "AAAABAAAA"],
    { A : <avaritia:resource:2>,
      B : <contenttweaker:eternalcatalyst>,
      C : <draconicevolution:chaotic_core>,
      H : <contenttweaker:heartofauniverse> });


/////////// Ultimate Gem ////////////

mods.extendedcrafting.TableCrafting.addShapeless(<contenttweaker:ultimate_gem>,
    [<thermalfoundation:material:893>,
     <actuallyadditions:item_crystal_empowered:5>,
     <enderio:item_material:16>,
     <enderio:item_material:15>,
     <ore:crystalDilithium>.firstItem,
     <enderio:item_material:17>,
     <enderio:item_material:18>,
     <enderio:item_material:19>,
     <enderio:item_material:14>,
     <minecraft:prismarine_shard>,
     <gregtech:meta_item_1:8103>,
     <thermalfoundation:material:894>,
     <appliedenergistics2:material:11>,
     <appliedenergistics2:material:10>,
     <appliedenergistics2:material:12>,
     <actuallyadditions:item_crystal_empowered>,
     <actuallyadditions:item_crystal_empowered:1>,
     <actuallyadditions:item_crystal_empowered:2>,
     <actuallyadditions:item_crystal_empowered:3>,
     <actuallyadditions:item_crystal_empowered:4>,
     <armorplus:lava_crystal:1>,
     <minecraft:emerald>,
     <redstonearsenal:material:160>,
     <minecraft:diamond>,
     <thermalfoundation:material:895>]);
<contenttweaker:ultimate_gem>.addTooltip(format.yellow("Recipe is shapeless."));


////////////////////////// Creative Vending Upgrade ///////////////////////
val creativecell = <thermalexpansion:cell>.withTag({Recv: 250000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 500000000, Creative: 1 as byte, SideCache: [2, 2, 2, 2, 2, 2] as byte[] as byte[], Level: 4 as byte, Send: 250000}, false);
val creativetank = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}, false);
val creativejetpack = <simplyjetpacks:itemjetpack>.withTag({JetpackParticleType: 3}, false);

makeExtremeRecipe9(<storagedrawers:upgrade_creative:1> * 2,
    ["ABBBBBBBA",
     "BCTGDEFCB",
     "BFSEHGSTB",
     "BUJXIXJUB",
     "BCSWKWSCB",
     "BUJXLXJUB",
     "BTSEMGSFB",
     "BCFGDETCB",
     "ABBBBBBBA"],
    { A : <storagedrawers:upgrade_creative>,
      B : <avaritia:resource:6>,
      C : <draconicevolution:creative_rf_source>,
      D : creativecell.only(isCreative),
      E : <extrautils2:creativeenergy>,
      F : <extrautils2:drum:4>,
      G : <extrautils2:passivegenerator:6>,
      H : <avaritia:infinity_helmet>,
      I : <avaritia:infinity_chestplate>,
      J : creativejetpack,
      K : <avaritia:infinity_sword>,
      L : <avaritia:infinity_pants>,
      M : <avaritia:infinity_boots>,
      S : <solarflux:solar_panel_infinity>,
      T : creativetank.only(isCreative),
      U : <appliedenergistics2:creative_energy_cell>,
      W : <thermalcultivation:watering_can:32000>.withTag({Water: 0, Mode: 4}, false),
      X : <thermalexpansion:capacitor:32000>.withTag({Energy: 250000000}, false)
    });

solidifier.recipeBuilder()
    .fluidInputs([<liquid:moltencreativeportabletank> * 144])
    .notConsumable(<contenttweaker:creativeportabletankmold>)
    .outputs(creativetank)
    .duration(500).EUt(100000).buildAndRegister();

fluid_extractor.recipeBuilder()
    .inputs([<contenttweaker:heartofauniverse>])
    .fluidOutputs([<liquid:moltencreativeportabletank> * 145])
    .duration(500).EUt(100000).buildAndRegister();


////////////////////////// Creative Items ///////////////////////

//Skullfire Sword
makeExtremeRecipe9(<avaritia:skullfire_sword>,
    ["       AI",
     "      AHA",
     "     AGA ",
     "    AFA  ",
     " B AEA   ",
     "  BDA    ",
     "  CB     ",
     " C  B    ",
     "N        "],
    { A : <avaritia:resource:1>,
      B : <armorplus:material:2>,
      C : <minecraft:log>,
      D : <armorplus:redstone_sword>,
      E : <armorplus:lapis_sword>,
      F : <armorplus:emerald_sword>,
      G : <armorplus:guardian_sword>,
      H : <armorplus:infused_lava_sword>,
      I : <gregtech:meta_item_2:32577>,
      N : <minecraft:nether_star> });

//Blade Of The Cosmos
makeExtremeRecipe9(<avaritia:infinity_sword>,
    ["       AA",
     "      AHA",
     "     AGA ",
     "    AFA  ",
     " B AEA   ",
     "  BDA    ",
     "  CB     ",
     " C  B    ",
     "N        "],
    { A : <avaritia:resource:6>,
      B : <avaritia:resource:1>,
      C : <avaritia:resource:4>,
      D : <armorplus:super_star_sword>,
      E : <armorplus:ender_dragon_sword>,
      F : <draconicevolution:wyvern_sword>,
      G : <draconicevolution:draconic_sword>.withTag({Energy: 0}, false),
      H : <avaritia:skullfire_sword>,
      N : <avaritia:resource:5> });

makeExtremeRecipe9(<draconicevolution:creative_rf_source>,
    ["ABBCDCBBA",
     "BBCDEDCBB",
     "BCDEFEDCB",
     "CDEFGFEDC",
     "DEFGHGFED",
     "CDEFGFEDC",
     "BCDEFEDCB",
     "BBCDEDCBB",
     "ABBCDCBBA"],
    { A : <contenttweaker:ultimate_generator>,
      B : <draconicevolution:energy_pylon>,
      C : <draconicevolution:energy_storage_core>,
      D : <draconicevolution:particle_generator>,
      E : <draconicevolution:particle_generator:2>,
      F : <draconicevolution:reactor_component>,
      G : <draconicevolution:reactor_core>,
      H : <avaritia:resource:5> });

makeExtremeRecipe9(<extrautils2:passivegenerator:6>,
    ["AABCDCBAA",
     "ABCDEDCBA",
     "BCDEFEDCB",
     "CDEFGFEDC",
     "DEFGHGFED",
     "CDEFGFEDC",
     "BCDEFEDCB",
     "ABCDEDCBA",
     "AABCDCBAA"],
    { A : <extrautils2:ingredients:16>,
      B : <extrautils2:passivegenerator:4>,
      C : <extrautils2:passivegenerator:5>,
      D : <extrautils2:passivegenerator:3>,
      E : <extrautils2:passivegenerator:2>,
      F : <extrautils2:passivegenerator:8>,
      G : <contenttweaker:ultimate_generator>,
      H : <avaritia:resource:5> });

makeExtremeRecipe9(creativecell,
    ["AAABCBAAA",
     "AABCDCBAA",
     "ABCDEDCBA",
     "BCDEFEDCB",
     "CDEFGFEDC",
     "BCDEFEDCB",
     "ABCDEDCBA",
     "AABCDCBAA",
     "AAABCBAAA"],
    { A : basiccellIng,
      B : hardenedcellIng,
      C : reinforcedcellIng,
      D : signalumcellIng,
      E : resonantcellIng,
      F : <contenttweaker:ultimate_power_storage>,
      G : <avaritia:resource:5> });

makeExtremeRecipe9(<extrautils2:creativeenergy>,
    ["CDEFGFEDC",
     "DEFGHGFED",
     "EFGHIHGFE",
     "FGHIBIHGF",
     "GHIBABIHG",
     "FGHIBIHGF",
     "EFGHIHGFE",
     "DEFGHGFED",
     "CDEFGFEDC"],
    { A : <avaritia:resource:5>,
      B : <contenttweaker:ultimate_generator>,
      C : <extrautils2:opinium:3>,
      D : <extrautils2:opinium:4>,
      E : <extrautils2:opinium:5>,
      F : <extrautils2:opinium:6>,
      G : <extrautils2:opinium:7>,
      H : <extrautils2:opinium:8>,
      I : <extrautils2:rainbowgenerator> });

makeExtremeRecipe9(<extrautils2:drum:4>,
    ["BBBCDCBBB",
     "BBCDEDCBB",
     "BCDEFEDCB",
     "CDEFFFEDC",
     "DEFFAFFED",
     "CDEFFFEDC",
     "BCDEFEDCB",
     "BBCDEDCBB",
     "BBBCDCBBB"],
    { A : <avaritia:resource:5>,
      B : <gregtech:machine:2196>,
      C : <gregtech:machine:2197>,
      D : <gregtech:machine:2198>,
      E : <gregtech:machine:2199>,
      F : <gregtech:machine:2200> });


makeExtremeRecipe9(<appliedenergistics2:creative_energy_cell>,
    ["IBCDEDCBI",
     "BCDEFEDCB",
     "CDEFGFEDC",
     "DEFGHGFED",
     "EFGHAHGFE",
     "DEFGHGFED",
     "CDEFGFEDC",
     "BCDEFEDCB",
     "IBCDEDCBI"],
    { A : <avaritia:resource:5>,
      B : <gregtech:machine:625>,
      C : <gregtech:machine:629>,
      D : <gregtech:machine:633>,
      E : <gregtech:machine:637>,
      F : <gregtech:machine:641>,
      G : <gregtech:machine:645>,
      H : <gregtech:machine:649>,
      I : <contenttweaker:ultimate_power_storage> });

makeExtremeRecipe9(<thermalcultivation:watering_can:32000>,
    ["         ",
     "E   CCC  ",
     "IE E  AAA",
     "EEED  A A",
     "E EDDBA A",
     "   DDBAAA",
     "   DDBBB ",
     "    CCC  ",
     "         "],
    { A : <thermalcultivation:watering_can>.withTag({Water:0, Mode:0}, false),
      B : <thermalcultivation:watering_can:1>.withTag({Water:0, Mode:0}, false),
      C : <thermalcultivation:watering_can:2>.withTag({Water:0, Mode:0}, false),
      D : <thermalcultivation:watering_can:3>.withTag({Water:0, Mode:0}, false),
      E : <thermalcultivation:watering_can:4>.withTag({Water:0, Mode:0}, false),
      I : <avaritia:resource:5>});

makeExtremeRecipe9(<solarflux:solar_panel_infinity>,
    ["SNNNNNNNS",
     "NPPPNPPPN",
     "NPPPNPPPN",
     "NPPPNPPPN",
     "NNNNINNNN",
     "NPPPNPPPN",
     "NPPPNPPPN",
     "NPPPNPPPN",
     "SNNNNNNNS"],
    { S : <solarflux:solar_panel_neutronium>,
      N : <moreplates:neutronium_plate>,
      I : <avaritia:resource:5>,
      P : <moreplates:infinity_plate> });


//Jetpack
val plateShape as string[] = [" P ",
                              "PPP",
                              " P "];

recipes.remove(<simplyjetpacks:metaitemmods:12>);
makeShaped("sj2_wroughtiron_plate",
           <simplyjetpacks:metaitemmods:12>,
           plateShape, { P : <ore:plateWroughtIron> });
<simplyjetpacks:metaitemmods:12>.displayName = "Wrought Iron Armor Plating";

recipes.remove(<simplyjetpacks:metaitemmods:13>);
makeShaped("sj2_ConductiveIron_plating",
           <simplyjetpacks:metaitemmods:13>,
           plateShape, { P : <ore:plateConductiveIron> });

recipes.remove(<simplyjetpacks:metaitemmods:14>);
makeShaped("sj2_ElectricalSteel_plating",
           <simplyjetpacks:metaitemmods:14>,
          plateShape, { P : <ore:plateElectricalSteel> });

recipes.remove(<simplyjetpacks:metaitemmods:15>);
makeShaped("sj2_DarkSteel_plating",
           <simplyjetpacks:metaitemmods:15>,
           plateShape, { P : <ore:plateDarkSteel> });

recipes.remove(<simplyjetpacks:metaitemmods:22>);
makeShaped("sj2_Iron_plating",
           <simplyjetpacks:metaitemmods:22>,
           plateShape, { P : <ore:plateIron> });

recipes.remove(<simplyjetpacks:metaitemmods:23>);
makeShaped("sj2_Bronze_plating",
           <simplyjetpacks:metaitemmods:23>,
           plateShape, { P : <ore:plateBronze> });

recipes.remove(<simplyjetpacks:metaitemmods:24>);
makeShaped("sj2_Invar_plating", <simplyjetpacks:metaitemmods:24>,
           plateShape, { P : <ore:plateInvar> });

recipes.remove(<simplyjetpacks:metaitemmods:25>);
makeShaped("sj2_Enderium_plating",
           <simplyjetpacks:metaitemmods:25>,
           plateShape, { P : <ore:plateEnderium> });

// Creative Jetpack
makeExtremeRecipe9(creativejetpack,
    ["  A   E  ",
     " AAA EEE ",
     " ABAIEFE ",
     " ABAJEFE ",
     " ABAKEFE ",
     " ABA EFE ",
     " CCC GGG ",
     "  D   H  ",
     " DDD HHH "],
    {A: armoredconductiveironjetpack,
     B: armoredvibrantjetpack,
     C: armoredelectricalsteeljetpack,
     D: armoredenergeticjetpack,
     E: armoredleadstonejetpack,
     F: armoredresonantjetpack,
     G: armoredhardenedjetpack,
     H: armoredreinforcedjetpack,
     I: fluxinfusedjetplate,
     J: <avaritia:resource:5>,
     K: darksoulariumjetplate });

// Creative Flux Capacitor
makeExtremeRecipe9(<thermalexpansion:capacitor:32000>.withTag({Energy: 250000000}),
    ["ABCDEDCBA",
     "BCDEFEDCB",
     "CDEFGFEDC",
     "DEFGHGFED",
     "EFGHIHGFE",
     "DEFGHGFED",
     "CDEFGFEDC",
     "BCDEFEDCB",
     "ABCDEDCBA"],
    { A: <thermalexpansion:capacitor>.withTag({Energy: 0}, false),
      B: <thermalexpansion:capacitor:1>.withTag({Energy: 0}, false),
      C: <thermalexpansion:capacitor:2>.withTag({Energy: 0}, false),
      D: <thermalexpansion:capacitor:3>.withTag({Energy: 0}, false),
      E: <thermalexpansion:capacitor:4>.withTag({Energy: 0}, false),
      F: <draconicevolution:draconium_capacitor>,
      G: <draconicevolution:draconium_capacitor:1>,
      H: <contenttweaker:ultimate_power_storage>,
      I: <avaritia:resource:5> });

makeExtremeRecipe9(<storagedrawers:upgrade_creative>,
    ["IBAHDHABI",
     "BAHDEDHAB",
     "AHDEFEDHA",
     "HDEFGFEDH",
     "DEFGCGFED",
     "HDEFGFEDH",
     "AHDEFEDHA",
     "BAHDEDHAB",
     "IBAHDHABI"],
    { A : <actuallyadditions:block_giant_chest_large>,
      B : <actuallyadditions:block_giant_chest_medium>,
      C : <avaritia:resource:5>,
      D : <gregtech:machine:1010>,
      E : <gregtech:machine:1011>,
      F : <gregtech:machine:1012>,
      G : <gregtech:machine:1013>,
      H : <gregtech:machine:806>,
      I : <storagedrawers:upgrade_storage:4> });

var xu01 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"});
var xu02 = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var xu03 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"});
var xu04 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"});
var xu05 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"});
var xu06 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"});
var xu07 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"});
var xu08 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"});
var xu09 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"});
var xu10 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"});
var xu11 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"});
var xu12 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"});
var xu13 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"});
var xu14 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"});
var xu15 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"});
var xu16 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"});
var dynamo0 = <thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, Augments: []}, false);
var dynamo1 = <thermalexpansion:dynamo:1>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, Augments: []}, false);
var dynamo3 = <thermalexpansion:dynamo:3>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, Augments: []}, false);
var dynamo5 = <thermalexpansion:dynamo:5>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, Augments: []}, false);

recipes.addShapeless(dynamo0, [<thermalexpansion:dynamo>,<thermalfoundation:upgrade:35>]);
recipes.addShapeless(dynamo1, [<thermalexpansion:dynamo:1>,<thermalfoundation:upgrade:35>]);
recipes.addShapeless(dynamo3, [<thermalexpansion:dynamo:3>,<thermalfoundation:upgrade:35>]);
recipes.addShapeless(dynamo5, [<thermalexpansion:dynamo:5>,<thermalfoundation:upgrade:35>]);

dynamo0 = dynamo0.only(isResonant);
dynamo1 = dynamo1.only(isResonant);
dynamo3 = dynamo3.only(isResonant);
dynamo5 = dynamo5.only(isResonant);

//Ultimate Collections

//Ultimate Generator
mods.extendedcrafting.TableCrafting.addShapeless(<contenttweaker:ultimate_generator>,
[<gregtech:machine:521>, <gregtech:machine:522>, <gregtech:machine:480>, <gregtech:machine:481>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:salt_fission_controller>, <gregtech:machine:482>, <gregtech:machine:523>, <gregtech:machine:524>,
<solarflux:solar_panel_1>, <solarflux:solar_panel_4>, <solarflux:solar_panel_5>, <solarflux:solar_panel_6>, <draconicevolution:generator>, <solarflux:solar_panel_7>, <solarflux:solar_panel_8>, <solarflux:solar_panel_wyvern>, <solarflux:solar_panel_neutronium>,
<solarflux:solar_panel_2>, <solarflux:solar_panel_3>, xu01, xu02, xu03, xu04, xu05, <solarflux:solar_panel_chaotic>, <solarflux:solar_panel_draconic>,
<enderio:block_zombie_generator>, <gregtech:machine:2504>, xu16, dynamo0, <extrautils2:rainbowgenerator:2>, dynamo0, xu06, <gregtech:machine:2506>, <enderio:block_zombie_generator>,
<enderio:block_franken_zombie_generator>, dynamo5, xu15, dynamo1, <draconicevolution:reactor_core>, dynamo1, xu07, dynamo5, <enderio:block_franken_zombie_generator>,
<enderio:block_ender_generator>, <gregtech:machine:2505>, xu14, dynamo3, <extrautils2:rainbowgenerator:1>, dynamo3, xu08, <draconicevolution:reactor_component>, <enderio:block_ender_generator>,
<gregtech:machine:518>, <gregtech:machine:485>, xu13, xu12, xu11, xu10, xu09, <gregtech:machine:492>, <gregtech:machine:520>,
<solarflux:solar_panel_1>, <solarflux:solar_panel_4>, <gregtech:machine:486>, <gregtech:machine:487>, <gregtech:machine:519>, <gregtech:machine:490>, <gregtech:machine:491>, <solarflux:solar_panel_chaotic>, <solarflux:solar_panel_draconic>,
<solarflux:solar_panel_2>, <solarflux:solar_panel_3>, <solarflux:solar_panel_5>, <solarflux:solar_panel_6>, <extrautils2:passivegenerator>, <solarflux:solar_panel_7>, <solarflux:solar_panel_8>, <solarflux:solar_panel_wyvern>, <solarflux:solar_panel_neutronium>]);
<contenttweaker:ultimate_generator>.addTooltip(format.yellow("Recipe is shapeless."));


//Ultimate Power Storage
makeExtremeRecipe9(<contenttweaker:ultimate_power_storage>,
    ["ABCDIDCBA",
     "BCDIEIDCB",
     "CDIEFEIDC",
     "DIEFGFEID",
     "IEFGHGFEI",
     "DIEFGFEID",
     "CDIEFEIDC",
     "BCDIEIDCB",
     "ABCDIDCBA"],
    { A : doublecompressedoctadiccap,
      B : <gregtech:meta_item_1:32518>,
      C : <gregtech:meta_item_1:32528>,
      D : <gregtech:meta_item_1:32538>,
      E : <gregtech:meta_item_1:32597>,
      F : <gregtech:meta_item_1:32598>,
      G : <gregtech:meta_item_1:32599>,
      H : <gtadditions:ga_meta_item:32124>,
      I : <metaitem:lapotron_crystal> });

<gregtech:turbine_casing:3>.displayName = "Magnalium Turbine Casing";

//Luminessence de-blockifying recipe
recipes.addShapeless(<extendedcrafting:material:7>*9,[<extendedcrafting:storage:1>]);

//Nether Star Nugget Recombination
makeShaped("of_star_from_nuggets", <minecraft:nether_star>,
    ["NNN",
     "NNN",
     "NNN"],
    { N : <extendedcrafting:material:140> });
