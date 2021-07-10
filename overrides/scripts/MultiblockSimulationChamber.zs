#modloaded deepmoblearning
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.render.ICubeRenderer;

import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.functions.ICompleteRecipeFunction;

import crafttweaker.data.IData;
import crafttweaker.world.IFacing;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;

import scripts.CommonVars.makeShaped as makeShaped;


// from DML's config
val mobs as int[string] = {
//  mob                 RF/t
    "zombie":           64,
    "skeleton":         64,
    "creeper":          64,
    "spider":           64,
    "slime":            64,
    "witch":            512,
    "blaze":            1024,
    "ghast":            1024,
    "wither_skeleton":  1024,
    "enderman":         2048,
    "wither":           6666,
    "dragon":           6666,
    "shulker":          512,
    "guardian":         1024,
    "thermal_elemental": 1024
};

val pristine_types as IItemStack[string] = {
//  mob                 pristine type
    "zombie":           <deepmoblearning:living_matter_overworldian>,
    "skeleton":         <deepmoblearning:living_matter_overworldian>,
    "creeper":          <deepmoblearning:living_matter_overworldian>,
    "spider":           <deepmoblearning:living_matter_overworldian>,
    "slime":            <deepmoblearning:living_matter_overworldian>,
    "witch":            <deepmoblearning:living_matter_overworldian>,
    "blaze":            <deepmoblearning:living_matter_hellish>,
    "ghast":            <deepmoblearning:living_matter_hellish>,
    "wither_skeleton":  <deepmoblearning:living_matter_hellish>,
    "enderman":         <deepmoblearning:living_matter_extraterrestrial>,
    "wither":           <deepmoblearning:living_matter_extraterrestrial>,
    "dragon":           <deepmoblearning:living_matter_extraterrestrial>,
    "shulker":          <deepmoblearning:living_matter_extraterrestrial>,
    "guardian":         <deepmoblearning:living_matter_overworldian>,
    "thermal_elemental": <deepmoblearning:living_matter_overworldian>
};

val model_prefix = "deepmoblearning:data_model_";
val pristine_prefix = "deepmoblearning:pristine_matter_";

// from DML's config
val pristine_chances as int[] = [
    5,
    10,
    20,
    30
];

// from DML's config
val maxExperience as int[] = [
    0,
    50,
    250,
    500
];

val name as string = "dml_sim_chamber";
val dml_recipe_map as RecipeMap = FactoryRecipeMap.start(name)
    .minInputs(2)
    .maxInputs(2)
    .minOutputs(2)
    .maxOutputs(2)
    .build();

val naquadahItem = <ore:blockNaquadahAlloy>.firstItem;
val naquadahState = naquadahItem.asBlock().definition.getStateFromMeta(naquadahItem.damage);

val sim_chamber_multiblock = Builder.start(name, 2003)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle(
                "OOOOO",
                "OGGGO",
                "OGXGO",
                "OGGGO",
                "OOSOO")
            .aisle(
                "OOOOO",
                "GNNNG",
                "ON-NO",
                "GNNNG",
                "OOOOO")
            .aisle(
                "OOOOO",
                "ONNNO",
                "ONNNO",
                "CNNNC",
                "OOOOO")
            .aisle(
                "OOOOO",
                "GNNNG",
                "ONNNO",
                "CNNNC",
                "OOOOO")
            .aisle(
                "OOOOO",
                "OGOGO",
                "OOOOO",
                "OGCCO",
                "OOOOO")
            .whereOr("O",
                <metastate:contenttweaker:simulation_casing> as IBlockMatcher,
                IBlockMatcher.abilityPartPredicate(
                                    MultiblockAbility.INPUT_ENERGY,
                                    MultiblockAbility.IMPORT_ITEMS,
                                    MultiblockAbility.EXPORT_ITEMS))
            .where("C", <contenttweaker:simulation_casing_2>)
            .where("G", <metastate:thermalfoundation:storage_alloy:7> /* enderium */)
            .where("-", <deepmoblearning:simulation_chamber>)
            .where("S", IBlockMatcher.controller(name))
            .where("X", <enderio:block_fused_glass:0>)
            .where("N", <metastate:extendedcrafting:storage:4> /* omnium */)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "OOOOO",
                "OGCCO",
                "OOOOO",
                "OGOGO",
                "OOOOO")
            .aisle(
                "IOOOO",
                "GNNNG",
                "GNNNO",
                "GNNNG",
                "OOOOO")
            .aisle(
                "SOOOO",
                "GNNNC",
                "X-NNO",
                "GNNNO",
                "EOOOO")
            .aisle(
                "0OOOO",
                "GNNNC",
                "GNNNO",
                "GNNNG",
                "OOOOO")
            .aisle(
                "OOOOO",
                "OGCCO",
                "OOOOO",
                "OGOGO",
                "OOOOO")
            .where("O", <contenttweaker:simulation_casing>)
            .where("C", <contenttweaker:simulation_casing_2>)
            .where("G", <metastate:thermalfoundation:storage_alloy:7> /* enderium */)
            .where("-", <deepmoblearning:simulation_chamber>)
            .where("S", IBlockInfo.controller(name))
            .where("X", <enderio:block_fused_glass:0>)
            .where("N", <metastate:extendedcrafting:storage:4> /* omnium */)
            .where("I", MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
            .where("0", MetaTileEntities.ITEM_EXPORT_BUS[1], IFacing.west())
            .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.west())
            .build())
    .withRecipeMap(dml_recipe_map)
    .withTexture(ICubeRenderer.sided("deepmoblearning:blocks/machine_base_up"))
    .buildAndRegister();

val DATA_MODEL_MAXIMUM_TIER = 4;

val asInt = function(data as IData) as int {
    return isNull(data) ? 0 : data as int;
};

sim_chamber_multiblock.completeRecipe = function(logic as IRecipeLogic) {
    for slot, stack in logic.inputInventory {
        if(!isNull(stack) && stack.definition.id.startsWith(model_prefix)) {
            var tier = asInt(stack.tag.tier);
            var simulationCount = asInt(stack.tag.simulationCount) + 1;
            var killCount = asInt(stack.tag.killCount);

            if(tier < DATA_MODEL_MAXIMUM_TIER) {
                val roof = maxExperience[tier];

                if(simulationCount + 1 >= roof) {
                    killCount = 0;
                    simulationCount = 0;
                    tier += 1;
                }
            }

            logic.inputInventory.setStackInSlot(
                slot,
                stack.withTag(
                    stack.tag + ({
                        tier: tier,
                        simulationCount: simulationCount,
                        totalSimulationCount: asInt(stack.tag.totalSimulationCount) + 1,
                        killCount: killCount
                    } as IData)
                )
            );
            return;
        }
    }
} as ICompleteRecipeFunction;

val withTier = function(tier as int) as IItemCondition {
    return function(stack as IItemStack) as bool {
        return asInt(stack.tag.tier) == tier;
    } as IItemCondition;
};

for mob, cost in mobs {
    for tier, pristine_chance in pristine_chances {
        dml_recipe_map.recipeBuilder()
            .duration(301)
            .EUt(cost / 4 as int)
            .inputs(<deepmoblearning:polymer_clay>)
            .notConsumable(itemUtils.getItem(model_prefix + mob).withTag({tier: tier + 1}, false).only(withTier(tier + 1)))
            .outputs(pristine_types[mob])
            .chancedOutput(itemUtils.getItem(pristine_prefix + mob), pristine_chance * 100, 0)
            .buildAndRegister();
    }
}


//Recipe for Naquadah-Plated Dark Steel Casing
makeShaped("simulation_casing", <contenttweaker:simulation_casing>,
    ["SPS",
     "PCP",
     "SPS"],
    { S : <metaitem:screwNaquadahAlloy>,
      P : <metaitem:plateNaquadahAlloy>,
      C : <deepmoblearning:machine_casing>
      });

//Recipe for Controller
makeShaped("simulation_controller", <gregtech:machine:2003>,
    ["MHM",
     "PCP",
     "PEP"],
    { M : <deepmoblearning:pristine_matter_dragon>,
      P : <ore:plateNeutronium>,
      C : <deepmoblearning:machine_casing>,
      E : <draconicevolution:draconic_energy_core>,
      H : <draconicevolution:dragon_heart>
      });

makeShaped("simulation_casing_two", <contenttweaker:simulation_casing_2>,
    ["III",
     "IWI",
     "III"],
    { I : <metaitem:plateNaquadah>,
      W : <ore:gtceWrenches>
      });

assembler.recipeBuilder()
    .inputs(<metaitem:plateNaquadah> * 4)
    .outputs(<contenttweaker:simulation_casing_2>)
    .duration(200).EUt(30).buildAndRegister();
