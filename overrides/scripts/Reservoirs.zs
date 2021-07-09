#priority -999

// Lowest priority to make recipes appear on the last page.

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.recipes.ICraftingInfo;

recipes.removeByRegex("thermalexpansion:(reservoir|reservoir_[1-4].?)$");

/* 
	Define reservoirs and tanks.
*/
val tanks as IItemStack[IItemStack] = {
	<thermalexpansion:reservoir:0>: basictank
	, <thermalexpansion:reservoir:1>: hardenedtank
	, <thermalexpansion:reservoir:2>: reinforcedtank
	, <thermalexpansion:reservoir:3>: signalumtank
	, <thermalexpansion:reservoir:4>: resonanttank
	, <thermalexpansion:reservoir:32000>: <thermalexpansion:tank>
		.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte})
};

function craftingFunc(out as IItemStack, tank as IItemStack) as IItemStack {
	var output as IItemStack = out;

	/* 
		Restore NBT tags selectively.
	*/
	for tagName in ["ench", "Fluid", "display"] as string[] {
		val tag as IData = tank.tag.memberGet(tagName);

		if (!isNull(tag)) {
			output = output.updateTag({
				[tagName]: tag
			});
		}
	}

	return output;
} 

for reservoir, tank in tanks {
	/* 
		Add Portable Tank -> Reservoir conversion recipe.
	*/
	recipes.addShapeless(reservoir, [tank.marked("tank")]
		, function(out, ins, cInfo) {
			return craftingFunc(out, ins.tank);
		} as crafttweaker.recipes.IRecipeFunction
	);

	/* 
		Add Reservoir -> Portable Tank conversion recipe.
	*/
	recipes.addShapeless(tank, [reservoir.marked("tank")]
		, function(out, ins, cInfo) {
			return craftingFunc(out, ins.tank);
		} as crafttweaker.recipes.IRecipeFunction
	);
}
