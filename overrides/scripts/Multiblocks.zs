import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;

import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.FactoryRecipeMap;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;

import scripts.CommonVars.makeShaped as makeShaped;

///////////////////////////////////////////////
/////////////     Multiblocks     /////////////
///////////////////////////////////////////////

var id = 3000;
var loc = "cryogenicairdistillation";

val cryodist = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
            .aisle(
                "FFFFFF",
                "FFFFFF",
                "FFFFFF",
                "FFFFFF",
                "FFFFFF",
                "FFCFFF")
            .aisle(
                "FFFFFF",
                "FFSSFF",
                "FS~~SF",
                "FS~~SF",
                "FFSSFF",
                "FFFFFF")
            .aisleRepeatable(9, 256,
                "      ",
                "  SS  ",
                " S~~S ",
                " S~~S ",
                "  SS  ",
                "      ")
            .aisle(
                "      ",
                "      ",
                "  SS  ",
                "  SS  ",
                "      ",
                "      ")
            .where('C', IBlockMatcher.controller(loc))
            .where(' ', IBlockMatcher.ANY)
            .where('~', IBlockMatcher.AIR)
            .where('S', <metastate:gregtech:metal_casing:4>)
            .whereOr('F', <metastate:gregtech:metal_casing:3> as IBlockMatcher,
                            IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY,
                                                                MultiblockAbility.IMPORT_FLUIDS,
                                                                MultiblockAbility.EXPORT_FLUIDS))

            .setAmountAtMost('@', 2)
            .where('@', IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY))
            .setAmountAtLeast('U', 4)
            .where('U', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_FLUIDS))
            .setAmountAtLeast('#', 50)
            .where('#', <metastate:gregtech:metal_casing:3>)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "FFFFF0",
                "FFFFFF",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ")
            .aisle(
                "FFFFF0",
                "FFSSFF",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "      ")
            .aisle(
                "CFFFF0",
                "FS  SF",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                "  SS  ")
            .aisle(
                "IFFFF@",
                "FS  SF",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                " S  S ",
                "  SS  ")
            .aisle(
                "FFFFF1",
                "FFSSFF",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "  SS  ",
                "      ")
            .aisle(
                "FFFFF2",
                "FFFFFF",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ",
                "      ")
            .where('C', IBlockInfo.controller(loc))
            .where(' ', IBlockInfo.EMPTY)
            .where('~', IBlockInfo.EMPTY)
            .where('F', <metastate:gregtech:metal_casing:3>)
            .where('S', <metastate:gregtech:metal_casing:4>)
            .where('I', MetaTileEntities.FLUID_IMPORT_HATCH[3], IFacing.west())
            .where('@', MetaTileEntities.ENERGY_INPUT_HATCH[3], IFacing.east())
            .where('0', MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.east())
            .where('1', MetaTileEntities.FLUID_EXPORT_HATCH[2], IFacing.east())
            .where('2', MetaTileEntities.FLUID_EXPORT_HATCH[3], IFacing.east())
            .build())
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .minFluidInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(6)
                        .build())
    .withTexture(Textures.FROST_PROOF_CASING)
    .withZoom(0.7f)
    .buildAndRegister() as Multiblock;

id += 1;
loc = "small_microverse";

val ROCKET_ARROW as ITextureArea = ITextureArea.fullImage("multiblocktweaker:textures/gui/progress_bar/rocket.png");

val small_microverse = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle(
                    "CCC",
                    "CGC",
                    "CSC")
            .aisle(
                    "CVC",
                    "G*G",
                    "CCC")
            .aisle(
                    "CCC",
                    "CGC",
                    "CCC")
            .where('S', IBlockMatcher.controller(loc))
            .where('G', <metastate:extrautils2:ineffableglass:2>)
            .where('V', <contenttweaker:microverse_vent>)
            .where('*', <extendedcrafting:compressor>)
            .whereOr('C', <contenttweaker:microverse_casing> as IBlock as IBlockMatcher,
                            IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY,
                                                                MultiblockAbility.IMPORT_FLUIDS,
                                                                MultiblockAbility.IMPORT_ITEMS,
                                                                MultiblockAbility.EXPORT_ITEMS))

            .setAmountAtMost('@', 2)
            .where('@', IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY))
            .setAmountAtLeast('I', 1)
            .where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_ITEMS))
            .setAmountAtLeast('#', 15)
            .where('#', <contenttweaker:microverse_casing>)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                    "FCC",
                    "CGC",
                    "CCC")
            .aisle(
                    "SC@",
                    "G*G",
                    "CVC")
            .aisle(
                    "ICO",
                    "CGC",
                    "CCC")
            .where('S', IBlockInfo.controller(loc))
            .where('C', <contenttweaker:microverse_casing>)
            .where('G', <metastate:extrautils2:ineffableglass:2>)
            .where('V', <contenttweaker:microverse_vent>)
            .where('*', <extendedcrafting:compressor>)
            .where('@', MetaTileEntities.ENERGY_INPUT_HATCH[3], IFacing.east())
            .where('O', MetaTileEntities.ITEM_EXPORT_BUS[3], IFacing.east())
            .where('F', MetaTileEntities.FLUID_IMPORT_HATCH[2], IFacing.west())
            .where('I', MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
            .build())
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .minInputs(2)
                        .maxInputs(3)
                        .minOutputs(1)
                        .maxOutputs(15)
                        .setProgressBar(ROCKET_ARROW, MoveType.HORIZONTAL)
                        .build())
    .buildAndRegister() as Multiblock;

id += 1;
loc = "medium_microverse";

function checkSpace(blockState as IBlockState, color as string) as IBlockMatcher {
    return blockState as IBlockMatcher & function(state as IBlockWorldState) as bool {
        return state.matchContext.getOrPut("space", color) == color;
    } as IBlockMatcher;
}

function maxOf(key as string, count as int) as IBlockMatcher {
    return function(state as IBlockWorldState) as bool {
        if state.matchContext.getInt(key) < count {
            state.matchContext.increment(key, 1);
            return true;
        } else {
            return false;
        }
    } as IBlockMatcher;
}

function space(maxIron as int, maxGold as int) as IBlockMatcher {
    return checkSpace(<metastate:chisel:diamond:3>, "purple") |
           checkSpace(<metastate:chisel:diamond:4>, "black") |
           ((checkSpace(<metastate:chisel:gold:11>, "purple") |
             checkSpace(<metastate:chisel:gold:12>, "black"))
            & maxOf("gold", maxGold)) |
           ((checkSpace(<metastate:chisel:iron:11>, "purple") |
             checkSpace(<metastate:chisel:iron:12>, "black"))
            & maxOf("iron", maxIron));
}

<ore:questbookSpace>.add(<chisel:diamond:3>,
                         <chisel:diamond:4>
                         // including the other blocks may cause confusion,
                         // so this feature will be kept secret
                         );

var infoBuilder = FactoryMultiblockShapeInfo.start()
    .aisle(
        "CCCCC",
        "CGGGC",
        "CGGGC",
        "CGGGC",
        "CCCCC")
    .aisle(
        "ICCCC",
        "GDDDG",
        "GDDDG",
        "GDDDG",
        "CVCVC")
    .aisle(
        "SCCC@",
        "GDDDG",
        "GD*DG",
        "GDDDG",
        "CCCCC")
    .aisle(
        "OCCCC",
        "GDDDG",
        "GDDDG",
        "GDDDG",
        "CVCVC")
    .aisle(
        "CCCCC",
        "CGGGC",
        "CGGGC",
        "CGGGC",
        "CCCCC")
    .where('S', IBlockInfo.controller(loc))
    .where('C', <contenttweaker:microverse_casing>)
    .where('G', <metastate:extrautils2:ineffableglass:2>)
    .where('V', <contenttweaker:microverse_vent>)
    .where('*', <extendedcrafting:compressor>)
    .where('@', MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
    .where('I', MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
    .where('O', MetaTileEntities.ITEM_EXPORT_BUS[3], IFacing.west());

val medium_microverse = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle(
                    "CCCCC",
                    "CGGGC",
                    "CGGGC",
                    "CGGGC",
                    "CCSCC")
            .aisle(
                    "CVCVC",
                    "GDDDG",
                    "GDDDG",
                    "GDDDG",
                    "CCCCC")
            .aisle(
                    "CCCCC",
                    "GDDDG",
                    "GD*DG",
                    "GDDDG",
                    "CCCCC")
            .aisle(
                    "CVCVC",
                    "GDDDG",
                    "GDDDG",
                    "GDDDG",
                    "CCCCC")
            .aisle(
                    "CCCCC",
                    "CGGGC",
                    "CGGGC",
                    "CGGGC",
                    "CCCCC")
            .where('S', IBlockMatcher.controller(loc))
            .where('G', <metastate:extrautils2:ineffableglass:2>)
            .where('V', <contenttweaker:microverse_vent>)
            .where('D', space(2, 4))
            .where('*', <extendedcrafting:compressor>)
            .whereOr('C', <contenttweaker:microverse_casing> as IBlock as IBlockMatcher,
                            IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY,
                                                                MultiblockAbility.IMPORT_ITEMS,
                                                                MultiblockAbility.EXPORT_ITEMS))

            .setAmountAtMost('@', 2)
            .where('@', IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY))
            .setAmountAtLeast('I', 1)
            .where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_ITEMS))
            .setAmountAtLeast('#', 50)
            .where('#', <contenttweaker:microverse_casing>)
            .build())
    .addDesign(infoBuilder.where('D', <metastate:chisel:diamond:3>).build())
    .addDesign(infoBuilder.where('D', <metastate:chisel:diamond:4>).build())
    .withZoom(0.9f)
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .minInputs(2)
                        .maxInputs(4)
                        .minOutputs(1)
                        .maxOutputs(15)
                        .setProgressBar(ROCKET_ARROW, MoveType.HORIZONTAL)
                        .build())
    .buildAndRegister() as Multiblock;

id += 1;
loc = "large_microverse";

infoBuilder = FactoryMultiblockShapeInfo.start()
    .aisle(
        "         ",
        "         ",
        "  CCCCC  ",
        "  CGGGC  ",
        "  CGGGC  ",
        "  CGGGC  ",
        "  CCCCC  ",
        "         ",
        "         ")
    .aisle(
        "         ",
        "  CGGGC  ",
        " CDDDDDC ",
        " GDDDDDG ",
        " GDDDDDG ",
        " GDDDDDG ",
        " CDDDDDC ",
        "  CGGGC  ",
        "         ")
    .aisle(
        "  CCCCC  ",
        " CDDDDDC ",
        "CDDDDDDDC",
        "CDDDDDDDC",
        "CDDDDDDDC",
        "CDDDDDDDC",
        "CDDDDDDDC",
        " CDDDDDC ",
        "  CCCCC  ")
    .aisle(
        "  ICCCC  ",
        " GDDDDDG ",
        "CDDDDDDDC",
        "GDDQQQDDG",
        "GDDQQQDDG",
        "GDDQQQDDG",
        "CDDDDDDDC",
        " GDDDDDG ",
        "  CVCVC  ")
    .aisle(
        "  SCCCE  ",
        " GDDDDDG ",
        "CDDDDDDDC",
        "GDDQQQDDG",
        "GDDQQQDDG",
        "GDDQQQDDG",
        "CDDDDDDDC",
        " GDDDDDG ",
        "  CCCCC  ")
    .aisle(
        "  OCCCC  ",
        " GDDDDDG ",
        "CDDDDDDDC",
        "GDDQQQDDG",
        "GDDQQQDDG",
        "GDDQQQDDG",
        "CDDDDDDDC",
        " GDDDDDG ",
        "  CVCVC  ")
    .aisle(
        "  CCCCC  ",
        " CDDDDDC ",
        "CDDDDDDDC",
        "CDDDDDDDC",
        "CDDDDDDDC",
        "CDDDDDDDC",
        "CDDDDDDDC",
        " CDDDDDC ",
        "  CCCCC  ")
    .aisle(
        "         ",
        "  CGGGC  ",
        " CDDDDDC ",
        " GDDDDDG ",
        " GDDDDDG ",
        " GDDDDDG ",
        " CDDDDDC ",
        "  CGGGC  ",
        "         ")
    .aisle(
        "         ",
        "         ",
        "  CCCCC  ",
        "  CGGGC  ",
        "  CGGGC  ",
        "  CGGGC  ",
        "  CCCCC  ",
        "         ",
        "         ")
    .where('S', IBlockInfo.controller(loc))
    .where('C', <contenttweaker:microverse_casing>)
    .where('V', <contenttweaker:microverse_vent>)
    .where('G', <metastate:extrautils2:ineffableglass:2>)
    .where('Q', <extendedcrafting:compressor>)
    .where('I', MetaTileEntities.ITEM_IMPORT_BUS[3], IFacing.west())
    .where('E', MetaTileEntities.ENERGY_INPUT_HATCH[8], IFacing.east())
    .where('O', MetaTileEntities.ITEM_EXPORT_BUS[4], IFacing.west());

val large_microverse = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
            .aisle(
                "         ",
                "         ",
                "  CCCCC  ",
                "  CCCCC  ",
                "  CCCCC  ",
                "  CCCCC  ",
                "  CCSCC  ",
                "         ",
                "         ")
            .aisle(
                "         ",
                "  CGGGC  ",
                " CDDDDDC ",
                " GDDDDDG ",
                " GDDDDDG ",
                " GDDDDDG ",
                " CDDDDDC ",
                "  CGGGC  ",
                "         ")
            .aisle(
                "  CCCCC  ",
                " CDDDDDC ",
                "CDDDDDDDC",
                "CDDDDDDDC",
                "CDDDDDDDC",
                "CDDDDDDDC",
                "CDDDDDDDC",
                " CDDDDDC ",
                "  CCCCC  ")
            .aisleRepeatable(3,
                "  CGGGC  ",
                " GDDDDDG ",
                "CDDDDDDDC",
                "GDDQQQDDG",
                "GDDQQQDDG",
                "GDDQQQDDG",
                "CDDDDDDDC",
                " GDDDDDG ",
                "  CGGGC  ")
            .aisle(
                "  CCCCC  ",
                " CDDDDDC ",
                "CDDDDDDDC",
                "CDDDDDDDC",
                "CDDDDDDDC",
                "CDDDDDDDC",
                "CDDDDDDDC",
                " CDDDDDC ",
                "  CCCCC  ")
            .aisle(
                "         ",
                "  CGGGC  ",
                " CDDDDDC ",
                " GDDDDDG ",
                " GDDDDDG ",
                " GDDDDDG ",
                " CDDDDDC ",
                "  CGGGC  ",
                "         ")
            .aisle(
                "         ",
                "         ",
                "  CCCCC  ",
                "  CVCVC  ",
                "  CCCCC  ",
                "  CVCVC  ",
                "  CCCCC  ",
                "         ",
                "         ")
            .where('S', IBlockMatcher.controller(loc))
            .where('V', <contenttweaker:microverse_vent>)
            .where('G', <metastate:extrautils2:ineffableglass:2>)
            .where('D', space(8, 16))
            .where('Q', <extendedcrafting:compressor>)
            .whereOr('C', <contenttweaker:microverse_casing> as IBlock as IBlockMatcher,
                            IBlockMatcher.abilityPartPredicate(MultiblockAbility.IMPORT_ITEMS,
                                                                MultiblockAbility.EXPORT_ITEMS,
                                                                MultiblockAbility.INPUT_ENERGY))

            .setAmountAtMost('@', 2)
            .where('@', IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY))
            .setAmountAtLeast('I', 1)
            .where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_ITEMS))
            .setAmountAtLeast('#', 125)
            .where('#', <contenttweaker:microverse_casing>)
            .build())
    .addDesign(infoBuilder.where('D', <metastate:chisel:diamond:3>).build())
    .addDesign(infoBuilder.where('D', <metastate:chisel:diamond:4>).build())
    .withZoom(0.6f)
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .minInputs(2)
                        .maxInputs(8)
                        .minOutputs(1)
                        .maxOutputs(16)
                        .setProgressBar(ROCKET_ARROW, MoveType.HORIZONTAL)
                        .build())
    .withTexture(<contenttweaker:microverse_casing> as IBlock as ICubeRenderer)
    .buildAndRegister() as Multiblock;

id += 1;
loc = "oildrillingrig";

val oildrillingrig = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.DOWN)
            .aisleRepeatable(3,
                "     ",
                "     ",
                "  F  ",
                "     ",
                "     ")
            .aisleRepeatable(6,
                "     ",
                "     ",
                " FFF ",
                "     ",
                "     ")
            .aisle(
                "     ",
                " ACA ",
                " CGC ",
                " ASA ",
                "     ")
            .aisle(
                "CACAC",
                "AGGGA",
                "CGPGC",
                "AGGGA",
                "CACAC")
            .aisleRepeatable(2,
                "F   F",
                "     ",
                "  P  ",
                "     ",
                "F   F")
            .aisleRepeatable(9, 256,
                "     ",
                "     ",
                "  P  ",
                "     ",
                "     ")
            .where('S', IBlockMatcher.controller(loc))
            .where(' ', IBlockMatcher.ANY)
            .where('A', <metastate:gregtech:boiler_casing:1>)
            .where('G', <metastate:gregtech:turbine_casing:1>)
            .where('F', <gregtech:frame_steel>)
            .where('P', <inspirations:pipe>)
            .whereOr('C', <metastate:gregtech:metal_casing:4> as IBlockMatcher,
                            IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY,
                                                                MultiblockAbility.IMPORT_ITEMS,
                                                                MultiblockAbility.IMPORT_FLUIDS,
                                                                MultiblockAbility.EXPORT_FLUIDS))

            .setAmountAtMost('@', 2)
            .where('@', IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY))
            .setAmountAtLeast('I', 1)
            .where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_FLUIDS))
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "F   F",
                "F   F",
                "CACAC",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ")
            .aisle(
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "AGGGA",
                " AEA ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "     ",
                "     ",
                "     ")
            .aisle(
                "  P  ",
                "  P  ",
                "  P  ",
                "  P  ",
                "  P  ",
                "  P  ",
                "  P  ",
                "  P  ",
                "  P  ",
                "  P  ",
                "  P  ",
                "IGPGC",
                " SGQ ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ")
            .aisle(
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "AGGGA",
                " AOA ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "  F  ",
                "     ",
                "     ",
                "     ")
            .aisle(
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "F   F",
                "F   F",
                "CACAC",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ",
                "     ")
            .where('S', IBlockInfo.controller(loc))
            .where(' ', IBlockInfo.EMPTY)
            .where('C', <metastate:gregtech:metal_casing:4>)
            .where('F', <metastate:gregtech:frame_steel:0>)
            .where('A', <metastate:gregtech:boiler_casing:1>)
            .where('G', <metastate:gregtech:turbine_casing:1>)
            .where('P', <metastate:inspirations:pipe:0>)
            .where('I', MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
            .where('E', MetaTileEntities.ENERGY_INPUT_HATCH[3], IFacing.north())
            .where('Q', MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.east())
            .where('O', MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.south())
            .build())
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .minFluidInputs(1)
                        .maxFluidInputs(1)
                        .minFluidOutputs(1)
                        .maxFluidOutputs(1)
                        .minInputs(1)
                        .maxInputs(1)
                        .minOutputs(0)
                        .maxOutputs(0)
                        .build())
    .withTexture(Textures.SOLID_STEEL_CASING)
    .withZoom(0.6f)
    .buildAndRegister() as Multiblock;

id += 1;
loc = "naquadahreactormk1";

val naquadahreactormk1 = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle(
                    "CCC",
                    "PGP",
                    "PGP",
                    "PGP",
                    "CSC")
            .aisle(
                    "CCC",
                    "GBG",
                    "GBG",
                    "GBG",
                    "CCC")
            .aisle(
                    "CCC",
                    "PGP",
                    "PGP",
                    "PGP",
                    "CCC")
            .where('S', IBlockMatcher.controller(loc))
            .whereOr('C', <contenttweaker:microverse_casing> as IBlock as IBlockMatcher,
                            IBlockMatcher.abilityPartPredicate(MultiblockAbility.IMPORT_ITEMS,
                                                                MultiblockAbility.EXPORT_ITEMS,
                                                                MultiblockAbility.OUTPUT_ENERGY))
            .where('P', <appliedenergistics2:spatial_pylon>)
            .where('G', <nuclearcraft:reactor_casing_transparent>)
            .where('B', <metastate:extendedcrafting:trimmed:5>)

            .setAmountAtLeast('I', 1)
            .where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_ITEMS))
            .setAmountAtLeast('#', 10)
            .where('#', <contenttweaker:microverse_casing>)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "ICC",
                "PGP",
                "PGP",
                "PGP",
                "CCC")
            .aisle(
                "SCE",
                "GBG",
                "GBG",
                "GBG",
                "CCC")
            .aisle(
                "OCC",
                "PGP",
                "PGP",
                "PGP",
                "CCC")
            .where('S', IBlockInfo.controller(loc))
            .where('C', <contenttweaker:microverse_casing>)
            .where('G', <metastate:nuclearcraft:reactor_casing_transparent:0>)
            .where('P', <metastate:appliedenergistics2:spatial_pylon:0>)
            .where('O', MetaTileEntities.ITEM_EXPORT_BUS[3], IFacing.west())
            .where('I', MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
            .where('E', MetaTileEntities.ENERGY_OUTPUT_HATCH[4], IFacing.east())
            .where('B', <metastate:extendedcrafting:trimmed:5>)
            .build())
    .withZoom(0.9f)
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .minInputs(1)
                        .maxInputs(1)
                        .minOutputs(1)
                        .maxOutputs(1)
                        .build())
    .buildAndRegister() as Multiblock;

id += 1; 
loc = "naquadahreactormk2";
 
val naquadahreactormk2 = Builder.start(loc,id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
            .aisle(
                "CCC",
                "CCC",
                "CSC")
            .aisleRepeatable(5,
                "PGP",
                "GOG",
                "PGP")
            .aisle(
                "CCC",
                "CCC",
                "CCC")
            .where('S', IBlockMatcher.controller(loc))
            .where('O', <metastate:extendedcrafting:storage:4>)
            .where('P', <appliedenergistics2:spatial_pylon>)
            .where('G', <nuclearcraft:reactor_casing_transparent>)
            .whereOr('C', <contenttweaker:microverse_casing> as IBlock as IBlockMatcher,
                            IBlockMatcher.abilityPartPredicate(MultiblockAbility.OUTPUT_ENERGY,
                                                                MultiblockAbility.IMPORT_ITEMS,
                                                                MultiblockAbility.EXPORT_ITEMS))

            .setAmountAtLeast('I', 1)
            .where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_ITEMS))
            .setAmountAtLeast('#', 10)
            .where('#', <contenttweaker:microverse_casing>)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "ACC",
                "PGP",
                "PGP",
                "PGP",
                "PGP",
                "PGP",
                "CCC")
            .aisle(
                "SCE",
                "GOG",
                "GOG",
                "GOG",
                "GOG",
                "GOG",
                "CCC")
            .aisle(
                "ICC",
                "PGP",
                "PGP",
                "PGP",
                "PGP",
                "PGP",
                "CCC")
            .where('S', IBlockInfo.controller(loc))
            .where('C', <contenttweaker:microverse_casing>)
            .where('G', <nuclearcraft:reactor_casing_transparent>)
            .where('O', <metastate:extendedcrafting:storage:4>)
            .where('P', <appliedenergistics2:spatial_pylon>)
            .where('I', MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
            .where('A', MetaTileEntities.ITEM_EXPORT_BUS[1], IFacing.west())
            .where('E', MetaTileEntities.ENERGY_OUTPUT_HATCH[8], IFacing.east())
            .build())
    .withZoom(0.75f)
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .minOutputs(1)
                        .maxOutputs(1)
                        .minInputs(1)
                        .maxInputs(1)
                        .build())
    .withTexture(<contenttweaker:microverse_casing> as IBlock as ICubeRenderer)
    .buildAndRegister() as Multiblock;

id += 1;
loc = "lunarminingstation";

val onMoon as IBlockMatcher = function (state as IBlockWorldState) as bool {
    return state.getWorld().getDimension() == 100; // Moon dimension
};

val lunarminingstation = Builder.start(loc, id)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
            .aisle(
                "    A    ",
                "    A    ",
                "    A    ",
                "   LAL   ",
                "AAAAAAAAA",
                "   SAL   ",
                "    A    ",
                "    A    ",
                "    A    ")
            .aisle(
                "         ",
                "   E E   ",
                "   L L   ",
                " EL   LE ",
                "         ",
                " EL   LE ",
                "   L L   ",
                "   E E   ",
                "         ")
            .aisle(
                "         ",
                "    E    ",
                "   L L   ",
                "  L   L  ",
                " E     E ",
                "  L   L  ",
                "   L L   ",
                "    E    ",
                "         ")
            .aisle(
                "         ",
                "         ",
                "   LLL   ",
                "  L   L  ",
                "  L   L  ",
                "  L   L  ",
                "   LLL   ",
                "         ",
                "         ")
            .aisle(
                "         ",
                "         ",
                "   LGL   ",
                "  L   L  ",
                "  G   G  ",
                "  L   L  ",
                "   LGL   ",
                "         ",
                "         ")
            .aisle(
                "         ",
                "         ",
                "   LLL   ",
                "  L   L  ",
                "  L   L  ",
                "  L   L  ",
                "   LLL   ",
                "         ",
                "         ")
            .aisle(
                "         ",
                "         ",
                "    L    ",
                "   L L   ",
                "  L   L  ",
                "   L L   ",
                "    L    ",
                "         ",
                "         ")
            .aisle(
                "         ",
                "         ",
                "         ",
                "   BBB   ",
                "   BBB   ",
                "   BBB   ",
                "         ",
                "         ",
                "         ")
            .aisle(
                "         ",
                "         ",
                "         ",
                "         ",
                "    M    ",
                "         ",
                "         ",
                "         ",
                "         ")
            .whereAnd('S', IBlockMatcher.controller(loc), onMoon.or(IBlockMatcher.IN_PREVIEW))
            .where('M', <minecraft:beacon>)
            .where(' ', IBlockMatcher.ANY)
            .where('B', <metastate:enderio:block_alloy_endergy:3>)
            .where('G', <metastate:extrautils2:ineffableglass:3>)
            .where('E', <metastate:enderio:block_alloy_endergy:5>)
            .where('A', <metastate:actuallyadditions:block_misc:9>)
            .whereOr('L', <metastate:gregtech:machine_casing:6>,
                            IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY,
                                                                MultiblockAbility.EXPORT_FLUIDS,
                                                                MultiblockAbility.IMPORT_ITEMS))

            .setAmountAtMost('@', 2)
            .where('@', IBlockMatcher.abilityPartPredicate(MultiblockAbility.INPUT_ENERGY))
            .setAmountAtLeast('I', 1)
            .where('I', IBlockMatcher.abilityPartPredicate(MultiblockAbility.EXPORT_FLUIDS))
            .setAmountAtLeast('#', 45)
            .where('#', <metastate:gregtech:machine_casing:6>)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "    A    ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ")
            .aisle(
                "    A    ",
                "   E E   ",
                "    E    ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ")
            .aisle(
                "    A    ",
                "   L L   ",
                "   L L   ",
                "   LLL   ",
                "   LGL   ",
                "   LLL   ",
                "    L    ",
                "         ",
                "         ",
                "         ")
            .aisle(
                "   SAH   ",
                " EL   LE ",
                "  L   L  ",
                "  L   L  ",
                "  L   L  ",
                "  L   L  ",
                "   L L   ",
                "   BBB   ",
                "         ")
            .aisle(
                "AAAAAAAAA",
                "         ",
                " E     E ",
                "  L   L  ",
                "  G   G  ",
                "  L   L  ",
                "  L   L  ",
                "   BBB   ",
                "    M    ")
            .aisle(
                "   QAO   ",
                " EL   LE ",
                "  L   L  ",
                "  L   L  ",
                "  L   L  ",
                "  L   L  ",
                "   L L   ",
                "   BBB   ",
                "         ")
            .aisle(
                "    A    ",
                "   L L   ",
                "   L L   ",
                "   LLL   ",
                "   LGL   ",
                "   LLL   ",
                "    L    ",
                "         ",
                "         ")
            .aisle(
                "    A    ",
                "   E E   ",
                "    E    ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ")
            .aisle(
                "    A    ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ",
                "         ")
            .where('S', IBlockInfo.controller(loc))
            .where('A', <metastate:actuallyadditions:block_misc:9>)
            .where(' ', IBlockInfo.EMPTY)
            .where('E', <metastate:enderio:block_alloy_endergy:5>)
            .where('L', <metastate:gregtech:machine_casing:6>)
            .where('G', <metastate:extrautils2:ineffableglass:3>)
            .where('B', <metastate:enderio:block_alloy_endergy:3>)
            .where('M', <metastate:minecraft:beacon:0>)
            .where('Q', MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
            .where('O', MetaTileEntities.FLUID_EXPORT_HATCH[4], IFacing.east())
            .where('H', MetaTileEntities.ENERGY_INPUT_HATCH[3], IFacing.east())
            .build())
    .withZoom(0.8f)
    .withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .minInputs(1)
                        .maxInputs(1)
                        .minFluidOutputs(1)
                        .maxFluidOutputs(1)
                        .build())
    .buildAndRegister() as Multiblock;

///////////////////////////////////////////////
////////////   Crafting Recipes   /////////////
///////////////////////////////////////////////

// Modular Machinery conversion recipes
recipes.addShapeless("mm_casing_conversion", <contenttweaker:microverse_casing>, [<modularmachinery:blockcasing>]);
recipes.addShapeless("mm_vent_conversion", <contenttweaker:microverse_vent>, [<modularmachinery:blockcasing:1>]);
recipes.addShapeless("mm_ingot_conversion", <ore:ingotMicroversium>.firstItem, [<modularmachinery:itemmodularium>]);

// Generate shapeless recipes for getting microversium back from the ModularMachinery item buses
for meta in 0 .. 7 {
    // tiny returns 4 from the casing, then there's 3 more ingots per tier
    val count as int = (4 + meta * 3);

    recipes.addShapeless("mm_inputbus_conversion_" ~ meta,
        <ore:ingotMicroversium>.firstItem * count,
        [itemUtils.getItem("modularmachinery:blockinputbus", meta)]);

    recipes.addShapeless("mm_outputbus_conversion__" ~ meta, 
        <ore:ingotMicroversium>.firstItem * count,
        [itemUtils.getItem("modularmachinery:blockoutputbus", meta)]);
}

// Generate shapeless recipes for getting microversium back from the ModularMachinery fluid hatches
for meta in 0 .. 8 {
    // tiny returns 4 from the casing, then there's 3 more ingots per tier
    val count as int = (4 + meta * 3);
    
    recipes.addShapeless("mm_fluidinput_refund_" ~ meta,
        <ore:ingotMicroversium>.firstItem * count,
        [itemUtils.getItem("modularmachinery:blockfluidinputhatch", meta)]);

    recipes.addShapeless("mm_fluidoutput_refund_" ~ meta, 
        <ore:ingotMicroversium>.firstItem * count,
        [itemUtils.getItem("modularmachinery:blockfluidoutputhatch", meta)]);
}

// Generate Shapeless conversion recipes for getting the GTCE energy hatch back from ModularMachinery hatches.

val energyInputHatches as int[] = [
    714, 724, 734, 744, 754, 764, 774, 784
] as int[];

for idx,meta in energyInputHatches {
    recipes.addShapeless("mm_energyinput_refund_" ~ idx,
        itemUtils.getItem("gregtech:machine", meta),
        [itemUtils.getItem("modularmachinery:blockenergyinputhatch", idx)]);

    recipes.addShapeless("mm_energyoutput_refund_" ~ idx,
        itemUtils.getItem("gregtech:machine", meta + 1),
        [itemUtils.getItem("modularmachinery:blockenergyoutputhatch", idx)]);
}

val controllers = [
    <gregtech:machine:3000>,
    <gregtech:machine:3001>,
    <gregtech:machine:3002>,
    <gregtech:machine:3003>,
    <gregtech:machine:3004>,
    <gregtech:machine:3005>,
    <gregtech:machine:3006>,
    <gregtech:machine:3007>] as IItemStack[];

function makeRecipe(i as int, result as IItemStack) {
    val grid = [[null, null, null],
                [null, null, null],
                [null, null, null]] as IIngredient[][];

    grid[i / 3][i % 3] = <modularmachinery:blockcontroller>;

    recipes.addShaped("multiblock_controller_"+i, result, grid);
}

for i, controller in controllers {
    makeRecipe(i, controller);
}

/// End conversion code ///

// Casing
assembler.recipeBuilder()
    .duration(200)
    .EUt(30)
    .inputs(<ore:ingotMicroversium>.firstItem * 4)
    .outputs(<contenttweaker:microverse_casing>)
    .buildAndRegister();

// Vent
recipes.addShaped("ctt_vent", <contenttweaker:microverse_vent>, [
    [<ore:barsIron>,          <ore:rotorSteel>,          <ore:barsIron>],
    [<ore:barsIron>, <contenttweaker:microverse_casing>, <ore:barsIron>],
    [<ore:barsIron>,    <gregtech:meta_item_1:32601>,    <ore:barsIron>]]);

// Cryogenic Distillation Tower
makeShaped("multiblock_controller_base", <gregtech:machine:3000>,
	["CMC",
	 "MSM",
	 "CMC"],
	{ C : <ore:circuitAdvanced>,
	  M : <gregtech:metal_casing:3>, //Frost Proof Machine Casing
	  S : <extrautils2:screen> }
);

// Small Microverse Projector
makeShaped("small_microverse_controller", <gregtech:machine:3001>,
    ["CBC",
     "BSB",
     "CBC"],
    { C : <ore:circuitAdvanced>, //T3
      B : <contenttweaker:microverse_casing>,
      S : <extrautils2:screen> });

// Medium Microverse Projector
makeShaped("medium_microverse_controller", <gregtech:machine:3002>,
    ["CBC",
     "BSB",
     "CBC"],
    { C : <ore:circuitExtreme>, //T4
      B : <contenttweaker:microverse_casing>,
      S : <extrautils2:screen> });

// Large Microverse Projector
makeShaped("large_microverse_controller", <gregtech:machine:3003>,
    ["CBC",
     "BSB",
     "CBC"],
    { C : <ore:circuitElite>, //T5
      B : <contenttweaker:microverse_casing>,
      S : <extrautils2:screen> });

// Oil Drilling Rig
makeShaped("oil_drilling_rig", <gregtech:machine:3004>,
    ["CBC",
     "BSB",
     "FPF"],
    { C : <ore:circuitAdvanced>, //T3
      B : <gregtech:metal_casing:4>, //Solid Steel Machine Casing
      S : <extrautils2:screen>,
      P : <inspirations:pipe>,
      F : <gregtech:frame_steel>});

// Naquadah Reactor Mk1
makeShaped("naquadah_reactor_1", <gregtech:machine:3005>,
    ["NCN",
     "GSG",
     "PPP"],
    { C : <ore:circuitElite>, //T5
      G : <nuclearcraft:reactor_casing_transparent>,
      S : <extrautils2:screen>,
      P : <appliedenergistics2:spatial_pylon>,
      N : <extendedcrafting:material:33>}); //Omnium Nugget

// Naquadah Reactor Mk2
makeShaped("naquadah_reactor_2", <gregtech:machine:3006>,
    ["NCN",
     "GSG",
     "PPP"],
    { C : <ore:circuitMaster>, //T6
      G : <nuclearcraft:reactor_casing_transparent>,
      S : <extrautils2:screen>,
      P : <appliedenergistics2:spatial_pylon>,
      N : <extendedcrafting:material:32>}); //Omnium Ingot

// Lunar Mining Station
makeShaped("lunar_mining_station", <gregtech:machine:3007>,
    ["CLC",
     "LSL",
     "CLC"],
    { C : <ore:circuitExtreme>, //T4
      L : <gregtech:machine_casing:6>, //LuV Machine Casing
      S : <extrautils2:screen>}); 

///////////////////////////////////////////////
////////////  Multiblock Recipes  /////////////
///////////////////////////////////////////////

// Small Microverse Projector

// Tier 1 Steel Microminer: Mission 1 - Early Game Ores
small_microverse.recipeMap
    .recipeBuilder()
    .duration(500)
    .EUt(500)
    .inputs(<contenttweaker:tieroneship>,
            <contenttweaker:quantumflux>,
            <minecraft:chest>)
    .fluidInputs(<liquid:rocket_fuel> * 8000)
    .outputs(<densemetals:dense_iron_ore> * 64,
             <gregtech:ore_cassiterite_0:3> * 64,
             <gregtech:ore_redstone_0> * 64,
             <gregtech:ore_nickel_0> * 64,
             <gregtech:ore_rutile_0> * 64,
             <gregtech:ore_rutile_0> * 64,
             <gregtech:ore_uraninite_0:3> * 64,
             <gregtech:ore_galena_0> * 64,
             <gregtech:ore_galena_0> * 64,
             <advancedrocketry:moonturf> * 64,
             <libvulpes:ore0> * 64,
             <gregtech:ore_salt_0> * 64)
    .buildAndRegister();

// Tier 1 Steel Microminer: Mission 2 - Exquisite Diamonds and Gem Ores
small_microverse.recipeMap
    .recipeBuilder()
    .duration(500)
    .EUt(500)
    .inputs(<contenttweaker:tieroneship>,
            <contenttweaker:quantumflux>,
            <contenttweaker:gemsensor>)
    .fluidInputs(<liquid:rocket_fuel> * 8000)
    .outputs(<gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:ore_apatite_0> * 64,
             <gregtech:ore_phosphor_0> * 64,
             <gregtech:ore_quartzite_0> * 64)
    .buildAndRegister();

// Tier 1 Steel Microminer: Mission 3 - Stellar Creation Data
small_microverse.recipeMap
    .recipeBuilder()
    .duration(100)
    .EUt(500)
    .inputs(<contenttweaker:tieroneship>,
            <contenttweaker:ultradensehydrogen>)
    .fluidInputs(<liquid:rocket_fuel> * 2000)
    .outputs(<contenttweaker:stellarcreationdata>)
    .buildAndRegister();

// Tier 2 Titanium Microminer - Mission 1: Radium and Early/Midgame Ores
small_microverse.recipeMap
    .recipeBuilder()
    .duration(600)
    .EUt(1000)
    .inputs(<contenttweaker:tiertwoship>,
            <contenttweaker:quantumflux> * 2)
    .fluidInputs(<liquid:rocket_fuel> * 12000)
    .outputs(<gregtech:ore_bauxite_0:1> * 64,
             <gregtech:ore_bauxite_0:1> * 64,
             <gregtech:ore_niobium_0:1> * 64,
             <gregtech:ore_copper_0:1> * 64,
             <gregtech:ore_sphalerite_0:1> * 64,
             <gregtech:ore_sphalerite_0:1> * 64,
             <gregtech:ore_scheelite_0:1> * 64,
             <gregtech:ore_scheelite_0:1> * 64,
             <gregtech:ore_scheelite_0:1> * 64,
             <gregtech:ore_tungstate_0:1> * 64,
             <gregtech:ore_tungstate_0:1> * 64,
             <gregtech:ore_tungstate_0:1> * 64,
             <contenttweaker:radiumsalt> * 64,
             <contenttweaker:radiumsalt> * 64,
             <gregtech:ore_cassiterite_0:1> * 64)
    .buildAndRegister();

// Tier 2 Titanium Microminer - Mission 2: Stellar Creation Data
small_microverse.recipeMap
    .recipeBuilder()
    .duration(120)
    .EUt(1000)
    .inputs(<contenttweaker:tiertwoship>,
            <contenttweaker:ultradensehydrogen> * 4)
    .fluidInputs(<liquid:rocket_fuel> * 3000)
    .outputs(<contenttweaker:stellarcreationdata> * 4)
    .buildAndRegister();

// Tier 3: Tungsten Carbide Microminer - Mission 1: Exquisite Gems
small_microverse.recipeMap
    .recipeBuilder()
    .duration(700)
    .EUt(2000)
    .inputs(<contenttweaker:tierthreeship>,
            <contenttweaker:quantumflux> * 4,
            <contenttweaker:gemsensor>)
    .fluidInputs(<liquid:rocket_fuel> * 20000)
    .outputs(<gregtech:meta_item_2:25113> * 16,
             <gregtech:meta_item_2:25113> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25111> * 16,
             <gregtech:meta_item_2:25154> * 16,
             <gregtech:meta_item_2:25154> * 16,
             <gregtech:meta_item_2:25154> * 16,
             <gregtech:meta_item_2:25154> * 16,
             <gregtech:ore_sapphire_0:6> * 64,
             <gregtech:ore_gold_0:6> * 64,
             <gregtech:ore_silver_0:6> * 64)
    .buildAndRegister();

// Tier 3: Tungsten Carbide Microminer - Mission 2: Midgame Ores
small_microverse.recipeMap
    .recipeBuilder()
    .duration(700)
    .EUt(2000)
    .inputs(<contenttweaker:tierthreeship>,
            <contenttweaker:quantumflux> * 4,
            <gregtech:machine:1010>)
    .fluidInputs(<liquid:rocket_fuel> * 20000)
    .outputs(<gregtech:ore_scheelite_0:6> * 64,
             <gregtech:ore_scheelite_0:6> * 64,
             <gregtech:ore_scheelite_0:6> * 64,
             <gregtech:ore_tungstate_0:6> * 64,
             <gregtech:ore_tungstate_0:6> * 64,
             <gregtech:ore_tungstate_0:6> * 64,
             <gregtech:ore_rutile_0:6> * 64,
             <gregtech:ore_vanadium_magnetite_0:6> * 64,
             <gregtech:ore_tetrahedrite_0:6> * 64,
             <gregtech:ore_cassiterite_0:6> * 64,
             <gregtech:ore_tin_0:6> * 64,
             <gregtech:ore_redstone_0:6> * 64,
             <gregtech:ore_certus_quartz_0:6> * 64,
             <gregtech:ore_almandine_0:6> * 64)
    .buildAndRegister();

// Medium Microverse Projector

// Tier 4: Signalum Microminer - Mission 1: Dense Oil / Infinity Blocks
medium_microverse.recipeMap
    .recipeBuilder()
    .duration(800)
    .EUt(3750)
    .inputs(<contenttweaker:tierfourship>,
            <contenttweaker:quantumflux> * 8,
            <advancedrocketry:satelliteprimaryfunction:1>,
            <thermalfoundation:material:1027> * 64)
    .outputs(<contenttweaker:denseoilshale> * 64,
             <contenttweaker:denseoilshale> * 64,
             <enderio:block_infinity> * 16)
    .buildAndRegister();

// Tier 4: Signalum Microminer - Mission 2: Dense Gem Ores
medium_microverse.recipeMap
    .recipeBuilder()
    .duration(800)
    .EUt(3750)
    .inputs(<contenttweaker:tierfourship>,
            <contenttweaker:quantumflux> * 8,
            <contenttweaker:gemsensor>,
            <thermalfoundation:material:1027> * 64)
    .outputs(<densemetals:dense_lapis_ore> * 64,
             <densemetals:dense_diamond_ore> * 64,
             <densemetals:dense_diamond_ore> * 64,
             <densemetals:dense_coal_ore>  * 64,
             <densemetals:dense_emerald_ore> * 32,
             <densemetals:dense_redstone_ore> * 16)
    .buildAndRegister();

// Tier 4: Signalum Microminer - Mission 3: Osmium / Iridium
medium_microverse.recipeMap
    .recipeBuilder()
    .duration(800)
    .EUt(3750)
    .inputs(<contenttweaker:tierfourship>,
            <contenttweaker:quantumflux> * 8,
            <contenttweaker:witherrealmdata> * 4,
            <thermalfoundation:material:1027> * 64)
    .outputs(<gregtech:ore_iridium_0> * 64,
             <gregtech:ore_iridium_0> * 64,
             <gregtech:ore_osmium_0> * 16)
    .buildAndRegister();

// Tier 5: Iridium Microminer - Mission 1: Marble Ores
medium_microverse.recipeMap
    .recipeBuilder()
    .duration(1000)
    .EUt(7500)
    .inputs(<contenttweaker:tierfiveship>,
            <contenttweaker:quantumflux> * 16,
            <contenttweaker:stabilizeduranium> * 32)
    .outputs(<gregtech:ore_uranium_0:12> * 64,
             <gregtech:ore_palladium_0:12> * 64,
             <gregtech:ore_tennantite_0:12> * 64,
             <gregtech:ore_bastnasite_0:12> * 64,
             <gregtech:ore_sphalerite_0:12> * 64,
             <gregtech:ore_monazite_0:12> * 64,
             <gregtech:meta_block_compressed_13:10> * 64, //Ender Pearl Block
             <gregtech:ore_osmium_0:12> * 16,
             <gregtech:meta_item_1:2009> * 64,
             <gregtech:ore_molybdenite_0:12> * 64,
             <gregtech:ore_beryllium_0:12> * 64,
             <gregtech:ore_beryllium_0:12> * 64)
    .buildAndRegister();

// Tier 5: Iridium Microminer - Mission 2: Naquadah
medium_microverse.recipeMap
    .recipeBuilder()
    .duration(1000)
    .EUt(7500)
    .inputs(<contenttweaker:tierfiveship>,
            <contenttweaker:quantumflux> * 16,
            <contenttweaker:stabilizedplutonium> * 32)
    .outputs(<gregtech:meta_item_1:2307> * 64,
             <gregtech:meta_item_1:2307> * 64,
             <gregtech:meta_item_1:2307> * 64,
             <gregtech:meta_item_1:2307> * 64)
    .buildAndRegister();

// Tier 6: Enderium Microminer - Mission 1: Uranium / Osmium / Iridium
medium_microverse.recipeMap
    .recipeBuilder()
    .duration(1250)
    .EUt(18750)
    .inputs(<contenttweaker:tiersixship>,
            <contenttweaker:quantumflux> * 16,
            <contenttweaker:stabilizeduranium> * 32,
            <contenttweaker:witherrealmdata> * 16)
    .outputs(<gregtech:ore_uranium_0:10> * 64,
             <gregtech:ore_uranium_0:10> * 64,
             <gregtech:ore_uranium_0:10> * 64,
             <gregtech:ore_uranium_0:10> * 64,
             <gregtech:ore_osmium_0:10> * 64,
             <gregtech:ore_osmium_0:10> * 64,
             <gregtech:ore_osmium_0:10> * 64,
             <gregtech:ore_iridium_0:10> * 64,
             <gregtech:ore_iridium_0:10> * 64)
    .buildAndRegister();

// Tier 6: Enderium Microminer - Mission 2: Stabilized Einsteinium
medium_microverse.recipeMap
    .recipeBuilder()
    .duration(1250)
    .EUt(18750)
    .inputs(<contenttweaker:tiersixship>,
            <contenttweaker:quantumflux> * 16,
            <contenttweaker:stabilizedplutonium> * 32,
            <contenttweaker:witherrealmdata> * 64)
    .outputs(<contenttweaker:stabilizedeinsteinium> * 32)
    .buildAndRegister();

// Tier 6: Enderium Microminer - Mission 3: Dragon Eggs
medium_microverse.recipeMap
    .recipeBuilder()
    .duration(1250)
    .EUt(18750)
    .inputs(<contenttweaker:tiersixship>,
            <contenttweaker:quantumflux> * 16,
            <contenttweaker:stabilizedplutonium> * 32,
            <contenttweaker:dragonlairdata> * 16)
    .outputs(<minecraft:dragon_egg> * 32)
    .buildAndRegister();

// Large Microverse Projector

// Tier 7: Draconium Microminer - Mission 1: Dragon Hearts
large_microverse.recipeMap
    .recipeBuilder()
    .duration(1500)
    .EUt(31250)
    .inputs(<contenttweaker:tiersevenship>,
            <contenttweaker:quantumflux> * 32,
            <ore:crystalDilithium>.firstItem * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <contenttweaker:dragonlairdata> * 32)
    .outputs(<draconicevolution:dragon_heart> * 32,
             <minecraft:dragon_egg> * 64,
             <minecraft:dragon_egg> * 64,
             <minecraft:dragon_breath> * 64,
             <armorplus:material:3> * 64,
             <armorplus:material:3> * 64,
             <armorplus:material:3> * 64,
             <minecraft:gold_block> * 64,
             <minecraft:gold_block> * 64,
             <minecraft:gold_block> * 64,
             <minecraft:gold_block> * 64,
             <gregtech:meta_block_compressed_3:14> * 64, //Silver block
             <gregtech:meta_block_compressed_3:14> * 64, //Silver Block
             <minecraft:diamond_block> * 64,
             <minecraft:diamond_block> * 64,
             <gregtech:meta_block_compressed_3:3> * 64) //Platinum Block
    .buildAndRegister();

// Tier 7: Draconium Microminer - Mission 2: Lair of the Chaos Guardian Data
large_microverse.recipeMap
    .recipeBuilder()
    .duration(1500)
    .EUt(31250)
    .inputs(<contenttweaker:tiersevenship>,
            <ore:crystalDilithium>.firstItem * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <contenttweaker:gemsensor>,
            <contenttweaker:dragonlairdata> * 64,
            <contenttweaker:dragonlairdata> * 64,
            <contenttweaker:dragonlairdata> * 64,
            <contenttweaker:dragonlairdata> * 64)
    .outputs(<contenttweaker:lairofthechaosguardiandata>)
    .buildAndRegister();

// Tier 8: Crystal Microminer - Mission 1: Gravi Star et al.
large_microverse.recipeMap
    .recipeBuilder()
    .duration(2000)
    .EUt(62500)
    .inputs(<contenttweaker:tiereightship>,
            <contenttweaker:quantumflux> * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <contenttweaker:witherrealmdata> * 64,
            <contenttweaker:witherrealmdata> * 64)
    .outputs(<gregtech:meta_item_1:32725> * 32,
             <gregtech:meta_item_1:32724> * 64,
             <avaritia:resource:2> * 64,
             <avaritia:resource:2> * 64,
             <gregtech:meta_item_1:32726>)
    .buildAndRegister();

// Tier 8: Crystal Microminer - Mission 2: Chaos Shards
large_microverse.recipeMap
    .recipeBuilder()
    .duration(1500)
    .EUt(62500)
    .inputs(<contenttweaker:tiereightship>,
            <contenttweaker:quantumflux> * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <ore:crystalDilithium>.firstItem * 64,
            <contenttweaker:lairofthechaosguardiandata>)
    .outputs(<draconicevolution:chaos_shard> * 4,
             <minecraft:dragon_egg> * 64,
             <minecraft:dragon_egg> * 64,
             <minecraft:dragon_egg> * 64,
             <minecraft:dragon_egg> * 64)
    .buildAndRegister();

// Tier 9: QFE Microminer - Mission 1: Neutronium Stuff
large_microverse.recipeMap
    .recipeBuilder()
    .duration(3000)
    .EUt(250000)
    .inputs(<contenttweaker:tiernineship>,
            <gregtech:meta_item_2:32436> * 8,
            <draconicevolution:draconic_block> * 4,
            <contenttweaker:stellarcreationdata>)
    .outputs(<avaritia:resource:3> * 64,
             <avaritia:resource:3> * 64,
             <avaritia:resource:3> * 64,
             <avaritia:resource:3> * 64,
             <avaritia:resource:3> * 64,
             <avaritia:resource:3> * 64,
             <avaritia:resource:3> * 64,
             <avaritia:resource:3> * 64,
             <avaritia:resource:3> * 64)
    .buildAndRegister();

// Tier 9: QFE Microminer - Mission 2: Universe Creation Data
large_microverse.recipeMap
    .recipeBuilder()
    .duration(3000)
    .EUt(250000)
    .inputs(<contenttweaker:tiernineship>,
            <draconicevolution:draconic_block> * 4,
            <contenttweaker:stellarcreationdata> * 64,
            <contenttweaker:stellarcreationdata> * 64,
            <contenttweaker:stellarcreationdata> * 64,
            <contenttweaker:stellarcreationdata> * 64)
    .outputs(<contenttweaker:universecreationdata>)
    .buildAndRegister();

// Tier 10: Neutronium Microminer - Heart of A Universe
large_microverse.recipeMap
    .recipeBuilder()
    .duration(6000)
    .EUt(1000000)
    .inputs(<contenttweaker:tiertenship>,
            <contenttweaker:universecreationdata>,
            <draconicevolution:draconic_block> * 8)
    .outputs(<contenttweaker:heartofauniverse>)
    .buildAndRegister();

// Cryogenic Distillation Recipe 1: Liquid Air
cryodist.recipeMap
    .recipeBuilder()
    .duration(125)
    .EUt(500)
    .fluidInputs(<liquid:liquid_air> * 53000)
    .fluidOutputs(<liquid:nitrogen> * 40000,
                  <liquid:oxygen> * 11000,
                  <liquid:carbon_dioxide> * 1000,
                  <liquid:noble_gases> * 1000)
    .buildAndRegister();

// Cryogenic Distillation Recipe 2: Noble Gasses
cryodist.recipeMap
    .recipeBuilder()
    .duration(1000)
    .EUt(750)
    .fluidInputs(<liquid:noble_gases> * 53000)
    .fluidOutputs(<liquid:argon> * 35000,
                  <liquid:neon> * 11000,
                  <liquid:helium> * 5000,
                  <liquid:krypton> * 1000,
                  <liquid:xenon> * 1000)
    .buildAndRegister();

// Naquadah Reactor Mk1 Recipes
naquadahreactormk1.recipeMap
    .recipeBuilder()
    .duration(3000)
    .EUt(-81875)
    .inputs(<gregtech:meta_item_1:16309>)
    .outputs(<gregtech:meta_item_1:16035>)
    .buildAndRegister();

naquadahreactormk1.recipeMap
    .recipeBuilder()
    .duration(12000)
    .EUt(-81875)
    .inputs(<gregtech:meta_item_1:16310>)
    .outputs(<gregtech:meta_item_1:16035>)
    .buildAndRegister();

// Naquadah Reactor Mk2 Recipes
naquadahreactormk2.recipeMap
    .recipeBuilder()
    .duration(3000)
    .EUt(-655000)
    .inputs(<gregtech:meta_item_1:16309>)
    .outputs(<gregtech:meta_item_1:16035>)
    .buildAndRegister();

naquadahreactormk2.recipeMap
    .recipeBuilder()
    .duration(12000)
    .EUt(-655000)
    .inputs(<gregtech:meta_item_1:16310>)
    .outputs(<gregtech:meta_item_1:16035>)
    .buildAndRegister();

// Oil Drilling Rig mechanics
oildrillingrig.recipeMap
    .recipeBuilder()
    .duration(100)
    .EUt(875)
    .inputs(<inspirations:pipe>)
    .fluidInputs(<liquid:drilling_fluid> * 1000)
    .fluidOutputs(<liquid:oil> * 1000)
    .property("consumeChance", 1)
    .buildAndRegister();

// Lunar Mining Station Rover Missions
lunarminingstation.recipeMap
    .recipeBuilder()
    .duration(12000)
    .EUt(125)
    .inputs(<contenttweaker:deuteriumrover>)
    .fluidOutputs(<liquid:deuterium> * 48000)
    .property("consumeChance", 10)
    .buildAndRegister();

lunarminingstation.recipeMap
    .recipeBuilder()
    .duration(12000)
    .EUt(125)
    .inputs(<contenttweaker:helium3rover>)
    .fluidOutputs(<liquid:helium3> * 48000)
    .property("consumeChance", 10)
    .buildAndRegister();
