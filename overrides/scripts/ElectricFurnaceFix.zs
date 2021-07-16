#priority -10
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.recipes.IFurnaceRecipe;

var furnaceMap = RecipeMap.getByName("furnace") as RecipeMap;
//Register a custom electric furnace recipe for every vanilla furnace recipe
for i, rec in furnace.all {
	if(i%100 == 0) {
		print("Modifiying furnace recipe number "~i);
	}
	furnaceMap.recipeBuilder()
		.inputs(rec.input)
		.outputs(rec.output)
		.duration(64)
		.EUt(30)
		.buildAndRegister();
}
