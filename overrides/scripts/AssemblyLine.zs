import crafttweaker.oredict.IOreDictEntry;

/*Due to large changes in the SoG Assembly Line Recipes, this script was created to group all
recipes into a single place to avoid cluttering other scripts with large removals*/


//Neuro Processor Board

//neuroprocessor
assembly_line.findRecipe(20000,
    [<gregtech:meta_item_1:19391> * 64,
     <gtadditions:ga_meta_item:32018> * 8,
     <gregtech:meta_item_2:32454> * 8,
     <gregtech:meta_item_1:12026> * 8,
     <gregtech:meta_item_1:12183> * 4,
     <metaitem:board.wetware>],
    [<liquid:sterilized_growth_medium> * 100,
     <liquid:uumatter> * 20,
     <liquid:distilled_water> * 4000]).remove();

assembly_line.recipeBuilder()
    .inputs(<contenttweaker:draconicstemcells> * 8,
            <gregtech:cable:708> * 32,
            <gregtech:meta_item_2:32498> * 8,
            <metaitem:board.wetware> * 4)
    .fluidInputs(<liquid:sterilized_growth_medium> * 16000)
    .outputs(<gtadditions:ga_meta_item:32015>)
    .duration(200).EUt(80000).buildAndRegister();





/* ****** LUV Components ******* */

//LuV Sensor
//Removal
assembly_line.findRecipe(15360,
		[<gregtech:frame_hssg>,
		 <gregtech:meta_item_2:25154> * 2,
		 <gregtech:meta_item_1:32694> * 2,
		 <gregtech:meta_item_2:32494> * 8,
		 <gregtech:cable:1200> * 8,
		 <gregtech:meta_item_1:19112> * 64,
		 <gregtech:meta_item_1:19112> * 64,
		 <gregtech:meta_item_1:19112> * 64],
		[<liquid:soldering_alloy> * 576]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:19112> * 64, //Electrum Foil
			<gregtech:meta_item_1:19112> * 64,
			<gregtech:meta_item_1:19112> * 64,
			<gregtech:cable:5200> * 7, //1x Yttrium Barium Cuprate Cable
			<ore:circuitExtreme> * 7, //T4 Circuit
			<gregtech:meta_item_1:32692> * 4, //Sensor (HV)
			<gregtech:meta_item_1:32693> * 2, //Sensor (EV)
			<gregtech:frame_hssg>, //HSS-G Frame
			<gregtech:meta_item_1:32694>) //Sensor (IV)
	.fluidInputs(<liquid:soldering_alloy> * 576)
	.outputs(<gregtech:meta_item_1:32695>)
	.duration(600).EUt(15360).buildAndRegister();

//LuV Emitter
//Removal
assembly_line.findRecipe(15360,
		[<gregtech:frame_hssg>,
		 <gregtech:meta_item_2:25154> * 2,
		 <gregtech:meta_item_1:32684> * 2,
		 <gregtech:meta_item_2:32494> * 8,
		 <gregtech:cable:1200> * 8,
		 <gregtech:meta_item_1:19112> * 64,
		 <gregtech:meta_item_1:19112> * 64,
		 <gregtech:meta_item_1:19112> * 64],
		[<liquid:soldering_alloy> * 576]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:19112> * 64, //Electrum Foil
			<gregtech:meta_item_1:19112> * 64,
			<gregtech:meta_item_1:19112> * 64,
			<gregtech:cable:5200> * 7, //1x Yttrium Barium Cuprate Cable
			<ore:circuitExtreme> * 7, //T4 Circuit
			<gregtech:meta_item_1:32682> * 4, //Emitter (HV)
			<gregtech:meta_item_1:32683> * 2, //Emitter (EV)
			<gregtech:frame_hssg>, //HSS-G Frame
			<gregtech:meta_item_1:32684>) //Emitter (IV)
	.fluidInputs(<liquid:soldering_alloy> * 576)
	.outputs(<gregtech:meta_item_1:32685>)
	.duration(600).EUt(15360).buildAndRegister();

//LuV Field Generator
//Removal
assembly_line.findRecipe(30720,
		[<gregtech:meta_item_1:32725>,
		 <gregtech:frame_hssg>,
		 <gregtech:cable:8200> * 4,
		 <gregtech:meta_item_1:32685> * 4,
		 <gregtech:meta_item_2:32498> * 16,
		 <gregtech:meta_item_2:16047> * 64,
		 <gregtech:meta_item_2:16047> * 64,
		 <gregtech:meta_item_2:16047> * 64,
		 <gregtech:meta_item_2:16047> * 64],
		[<liquid:soldering_alloy> * 576]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:16047> * 64, //Fine Osmium Wire
			<gregtech:meta_item_2:16047> * 64,
			<gregtech:meta_item_2:16047> * 64,
			<gregtech:meta_item_2:16047> * 64,
			<gtadditions:ga_meta_item:32015> * 8, //NeuroProcessors
			<gregtech:cable:5200> * 8, //1x Yttrium Barium Cuprate Cable
			<ore:circuitMaster> * 8, //T6 Circuit
			<ore:circuitElite> *8, //T5 Circuit
			<gregtech:meta_item_1:12302> * 6, //HSS-G Plate
			<gregtech:meta_item_1:32685> * 4, //Emitter (LuV)
			<gregtech:frame_hssg>, //HSS-G Frame
			<gregtech:meta_item_1:32725>) //Quantum Star
	.fluidInputs(<liquid:soldering_alloy> * 576)
	.outputs(<gregtech:meta_item_1:32675>)
	.duration(600).EUt(30720).buildAndRegister();

//LuV Robot Arm
//Removal
assembly_line.findRecipe(20480,
		[<gregtech:meta_item_1:32645>,
		 <gregtech:meta_item_1:10302>,
		 <gregtech:meta_item_1:32606> * 2,
		 <gregtech:meta_item_2:32494> * 8,
		 <gregtech:meta_item_1:14302> * 16,
		 <gregtech:meta_item_1:17302> * 16,
		 <gregtech:cable:6200> * 16],
		[<liquid:soldering_alloy> * 576, <liquid:lubricant> * 250]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:cable:5200> * 6, //1x Yttrium Barium Cuprate Cable
			<ore:circuitExtreme> * 6, //T4 Circuit
			<ore:circuitElite> * 2, //T5 Circuit
			<ore:circuitMaster> * 2, //T6 Circuit
			<gregtech:meta_item_2:19302> * 4, //HSS-G Long Rod
			<gregtech:meta_item_2:17302> * 3, //HSS-G Small Gear
			<gregtech:meta_item_1:32606> * 2, //Electric Motor (LuV)
			<gregtech:meta_item_2:26302>, //HSS-G Gear
			<gregtech:meta_item_1:32645>) //Electric Piston (LuV)
	.fluidInputs(<liquid:soldering_alloy> * 576, <liquid:lubricant> * 250)
	.outputs(<gregtech:meta_item_1:32655>)
	.duration(600).EUt(20480).buildAndRegister();


//LuV Piston
//Removal
assembly_line.findRecipe(15360,
		[<gregtech:meta_item_1:32606>,
		 <gregtech:cable:5200> * 2,
		 <gregtech:meta_item_1:10302> * 2,
		 <gregtech:meta_item_1:14302> * 4,
		 <gregtech:meta_item_2:17302> * 8,
		 <gregtech:meta_item_1:12302> * 8],
		[<liquid:soldering_alloy> * 144, <liquid:lubricant> * 250]).remove();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:2302> * 32, //HSS-G Rounds
			<gregtech:meta_item_1:12302> * 6, //HSS-G Plate
			<gregtech:meta_item_1:18302> * 4, //HSS-G Ring
			<gregtech:meta_item_1:14302> * 4, //HSS-G Rod
			<gregtech:cable:6200> * 2, //2x Yttrium Barium Cuprate Cable
			<gregtech:meta_item_2:17302> * 2, //HSS-G Small Gear
			<gregtech:meta_item_1:32606>, //Electric Motor (LuV)
			<gregtech:meta_item_2:26302>) //HSS-G Gear
//	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
	.fluidInputs(<liquid:soldering_alloy> * 144, <liquid:lubricant> * 250)
	.outputs(<gregtech:meta_item_1:32645>)
	.duration(600).EUt(15360).buildAndRegister();


//LuV Conveyor
//Removal 
assembly_line.findRecipe(15360,
		[<gregtech:cable:5200> * 2,
		 <gregtech:meta_item_1:10302> * 2,
		 <gregtech:meta_item_1:32606> * 2,
		 <gregtech:meta_item_1:14302> * 4,
		 <gregtech:meta_item_2:26302> * 4,
		 <gregtech:meta_item_1:12302> * 8],
		[<liquid:styrene_butadiene_rubber> * 1440, <liquid:lubricant> * 250]).remove();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:2302> * 32, //HSS-G Rounds
			<gregtech:meta_item_1:18302> * 4, //HSS-G Plates
			<gregtech:meta_item_1:32606> * 2, //Electric Motor (LuV)
			<gregtech:meta_item_1:12302> * 2, //HSS-G Plate
			<gregtech:cable:5200> * 2) //1x Yttrium Barium Cuprate Cable
//	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs(<liquid:styrene_butadiene_rubber> * 1440, <liquid:lubricant> * 250)
	.outputs(<gregtech:meta_item_1:32635>)
	.duration(600).EUt(15360).buildAndRegister();

//LuV Pump
//Removal
assembly_line.findRecipe(15360,
		[<gregtech:meta_item_1:32606>,
		 <gregtech:cable:5200> * 2,
		 <gregtech:meta_item_2:18302> * 2,
		 <gregtech:fluid_pipe:1192> * 2,
		 <gregtech:meta_item_1:17302> * 8,
		 <gregtech:meta_item_1:18391> * 16],
		[<liquid:soldering_alloy> * 144, <liquid:lubricant> * 250]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:17302> * 8, //HSS-G Screw
			<gregtech:meta_item_1:18391> * 4, //Silicone Rubber Ring
			<gregtech:fluid_pipe:1192> * 2, //Small Ultimet Pipe
			<gregtech:meta_item_1:12302> * 2, //HSS-G Plate
			<gregtech:meta_item_2:18302> * 2, //HSS-G Rotor
			<gregtech:cable:5200> * 2, //1x Yttrium Barium Cuprate Cable
			<gregtech:meta_item_1:32606>) //Electric Motor (LuV)
	.fluidInputs(<liquid:soldering_alloy> * 144, <liquid:lubricant> * 250)
	.outputs(<gregtech:meta_item_1:32615>)
	.duration(600).EUt(15360).buildAndRegister();

//LuV Motor
//Removal
assembly_line.findRecipe(10240,
		[<gregtech:meta_item_2:19299>,
		 <gregtech:cable:5200> * 2,
		 <gregtech:meta_item_2:19302> * 2,
		 <gregtech:meta_item_1:18302> * 4,
		 <gtadditions:ga_meta_item:2302> * 16,
		 <gregtech:meta_item_2:16087> * 64,
		 <gregtech:meta_item_2:16087> * 64,
		 <gregtech:meta_item_2:16087> * 64,
		 <gregtech:meta_item_2:16087> * 64],
		[<liquid:soldering_alloy> * 144, <liquid:lubricant> * 250]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:16087> * 64, //Fine Annealed Copper Wire
			<gregtech:meta_item_2:16087> * 64,
			<gregtech:meta_item_2:16087> * 64,
			<gregtech:meta_item_2:16087> * 64,
			<gregtech:meta_item_2:19302> * 2, //HSS-G Long Rod
			<gregtech:cable:5200> * 2, //1x Yttrium Barium Cuprate Cable
			<gregtech:meta_item_2:19299>) //Long Magnetic Neodymium Rod
	.fluidInputs(<liquid:soldering_alloy> * 144, <liquid:lubricant> * 250)
	.outputs(<gregtech:meta_item_1:32606>)
	.duration(300).EUt(10240).buildAndRegister();


/* ******* ZPM Components ******* */

//ZPM Field Generator
//Removal
assembly_line.findRecipe(245760,
		[<gregtech:meta_item_1:32725>,
		 <gregtech:frame_hsse>,
		 <gregtech:cable:8200> * 4,
		 <gregtech:meta_item_1:32686> * 4,
		 <gregtech:meta_item_2:32499> * 16,
		 <gregtech:meta_item_2:16047> * 64,
		 <gregtech:meta_item_2:16047> * 64,
		 <gregtech:meta_item_2:16047> * 64,
		 <gregtech:meta_item_2:16047> * 64],
		[<liquid:soldering_alloy> * 1152]).remove();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16047> * 64, //Fine Osmium Wire
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_1:32686> * 4, //Emitter (ZPM)
            <gregtech:frame_tritanium>, //Tritanium Frame
            <moreplates:awakened_draconium_plate> * 8,
            <gregtech:cable:6307> * 6, //2x Naquadah Cable
            <extendedcrafting:material:40>) //Endest Star
    .fluidInputs(<liquid:soldering_alloy> * 1152)
    .outputs(<gregtech:meta_item_1:32676>)
    .duration(600).EUt(122880).buildAndRegister();


//ZPM Sensor
//Removal
assembly_line.findRecipe(61440,
		[<gregtech:frame_hsse>,
		 <gregtech:meta_item_2:25113> * 2,
		 <gregtech:meta_item_1:32695> * 2,
		 <contenttweaker:crystalcircuit> * 8,
		 <gregtech:cable:1195> * 8,
		 <gregtech:meta_item_1:19051> * 64,
		 <gregtech:meta_item_1:19051> * 64,
		 <gregtech:meta_item_1:19051> * 64],
		[<liquid:soldering_alloy> * 576]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:19051> * 64, //Platinum Foil
			<gregtech:meta_item_1:19051> * 64,
			<gregtech:meta_item_1:19051> * 64,
			<gregtech:cable:7195> * 7, //4x Vanadium-Gallium Cable
			<ore:circuitElite> *7, //T5 Circuit
			<gregtech:meta_item_1:32693> * 4, //Sensor (EV)
			<gregtech:meta_item_1:32694> * 2, //Sensor (IV)
			<gregtech:frame_hsse>, //HSS-E Frame
			<gregtech:meta_item_1:32695>) //Sensor (LuV)
	.fluidInputs(<liquid:soldering_alloy> * 576)
	.outputs(<gregtech:meta_item_1:32696>)
	.duration(600).EUt(61440).buildAndRegister();

//ZPM Emitter
//Removal
assembly_line.findRecipe(61440,
		[<gregtech:frame_hsse>,
		 <gregtech:meta_item_2:25113> * 2,
		 <gregtech:meta_item_1:32685> * 2,
		 <contenttweaker:crystalcircuit> * 8,
		 <gregtech:cable:1195> * 8,
		 <gregtech:meta_item_1:19051> * 64,
		 <gregtech:meta_item_1:19051> * 64,
		 <gregtech:meta_item_1:19051> * 64],
		[<liquid:soldering_alloy> * 576]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:19051> * 64, //Platinum Foil
			<gregtech:meta_item_1:19051> * 64,
			<gregtech:meta_item_1:19051> * 64,
			<gregtech:cable:7195> * 7, //4x Vanadium-Gallium Cable
			<ore:circuitElite> *7, //T5 Circuit
			<gregtech:meta_item_1:32683> * 4, //Emitter (EV)
			<gregtech:meta_item_1:32684> * 2, //Emitter (IV)
			<gregtech:frame_hsse>, //HSS-E Frame
			<gregtech:meta_item_1:32685>) //Emitter (LuV)
	.fluidInputs(<liquid:soldering_alloy> * 576)
	.outputs(<gregtech:meta_item_1:32686>)
	.duration(600).EUt(61440).buildAndRegister();

//ZPM Robot Arm
//Removal
assembly_line.findRecipe(81920,
		[<gregtech:meta_item_1:32646>,
		 <gregtech:meta_item_1:10303>,
		 <gregtech:meta_item_1:32607> * 2,
		 <ore:circuitElite>.firstItem * 8,
		 <gregtech:meta_item_1:14303> * 16,
		 <gregtech:meta_item_1:17303> * 16,
		 <gregtech:cable:6195> * 16],
		[<liquid:lubricant> * 750, <liquid:soldering_alloy> * 1152]).remove();

assembly_line.recipeBuilder()
	.inputs(<ore:circuitExtreme> * 12, //T4 Circuit
			<ore:circuitElite> * 4, //T5 Circuit
			<ore:circuitMaster> * 4, //T6 Circuit
			<gregtech:cable:7195> * 6, //4x Vanadium-Gallium Cables
			<gregtech:meta_item_2:19303> * 4, //HSS-E Long Rod
			<gregtech:meta_item_2:17303> * 3, //Small HSS-E Gear
			<gregtech:meta_item_1:32607> * 2, //Electric Motor (ZPM)
			<gregtech:meta_item_2:26303>, //HSS-E Gear
			<gregtech:meta_item_1:32646>) //Electric Piston (ZPM)
	.fluidInputs(<liquid:lubricant> * 750, <liquid:soldering_alloy> * 1152)
	.outputs(<gregtech:meta_item_1:32656>)
	.duration(600).EUt(81920).buildAndRegister();

//ZPM Electric Piston
//Removal
assembly_line.findRecipe(61440,
		[<gregtech:meta_item_1:32607>,
		 <gregtech:cable:5195> * 2,
		 <gregtech:meta_item_1:10303> * 2,
		 <gregtech:meta_item_1:14303> * 4,
		 <gregtech:meta_item_2:17303> * 8,
		 <gregtech:meta_item_1:12303> * 8],
		[<liquid:lubricant> * 750, <liquid:soldering_alloy> * 288]).remove();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:2303> * 32, //HSS-E Rounds
			<gregtech:meta_item_1:12303> * 6, //HSS-E Plate
			<gregtech:meta_item_1:18303> * 4, //HSS-E Ring
			<gregtech:meta_item_1:14303> * 4, //HSS-E Rod
			<gregtech:cable:8195> * 2, //8x Vanadium-Gallium Cable
			<gregtech:meta_item_2:17303> * 2, //HSS-E Small Gear
			<gregtech:meta_item_1:32607>, //Electric Motor (ZPM)
			<gregtech:meta_item_2:26303>) //HSS-E Gear
//	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
	.fluidInputs(<liquid:lubricant> * 750, <liquid:soldering_alloy> * 288)
	.outputs(<gregtech:meta_item_1:32646>)
	.duration(600).EUt(61440).buildAndRegister();

//ZPM Conveyor
//Removal
assembly_line.findRecipe(61440,
		[<gregtech:cable:5195> * 2,
		 <gregtech:meta_item_1:10303> * 2,
		 <gregtech:meta_item_1:32607> * 2,
		 <gregtech:meta_item_1:14303> * 4,
		 <gregtech:meta_item_2:26303> * 4,
		 <gregtech:meta_item_1:12303> * 8],
		[<liquid:styrene_butadiene_rubber> * 2880, <liquid:lubricant> * 750]).remove();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:2303> * 32, //HSS-E Round
			<gregtech:meta_item_1:18303> * 4, //HSS-E Ring
			<gregtech:meta_item_1:32607> * 2, //Electric Motor (ZPM)
			<gregtech:meta_item_1:12303> * 2, //HSS-E Plate
			<gregtech:cable:7195> * 2) //4x Vanadium-Gallium Cable
//	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs(<liquid:styrene_butadiene_rubber> * 2880, <liquid:lubricant> * 750)
	.outputs(<gregtech:meta_item_1:32636>)
	.duration(600).EUt(61440).buildAndRegister();

//ZPM Pump
//Removal
assembly_line.findRecipe(61440,
		[<gregtech:meta_item_1:32607>,
		 <gregtech:cable:5195> * 2,
		 <gregtech:meta_item_2:18303> * 2,
		 <gregtech:fluid_pipe:2192> * 2,
		 <gregtech:meta_item_1:17303> * 8,
		 <gregtech:meta_item_1:18391> * 16],
		[<liquid:soldering_alloy> * 288, <liquid:lubricant> * 750]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:18391> * 16, //Silicone Rubber Ring
			<gregtech:meta_item_1:17303> * 8, //HSS-E Screws
			<gregtech:fluid_pipe:2192> * 2, //Medium Ultimet Pipe
			<gregtech:meta_item_1:12303> * 2, //HSS-E Plate
			<gregtech:meta_item_2:18303> * 2, //HSS-E Rotor
			<gregtech:cable:7195> * 2, //4x Vanadium-Gallium Cable
			<gregtech:meta_item_1:32607>) //Electric Motor (ZPM)
	.fluidInputs(<liquid:soldering_alloy> * 288, <liquid:lubricant> * 750)
	.outputs(<gregtech:meta_item_1:32616>)
	.duration(600).EUt(61440).buildAndRegister();


//ZPM Motor
//Removal
assembly_line.findRecipe(40960,
		[<gregtech:meta_item_2:16051> * 64,
		 <gregtech:meta_item_2:16051> * 64,
		 <gregtech:meta_item_2:16051> * 64,
		 <gregtech:meta_item_2:16051> * 64,
		 <gtadditions:ga_meta_item:2303> * 16,
		 <gregtech:meta_item_1:18303> * 4,
		 <gregtech:meta_item_2:19303> * 2,
		 <gregtech:cable:7195> * 2,
		 <gregtech:meta_item_2:19299>],
		[<liquid:soldering_alloy> * 288, <liquid:lubricant> * 750]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:16051> * 64, //Fine Platinum Wire
			<gregtech:meta_item_2:16051> * 64,
			<gregtech:meta_item_2:16051> * 64,
			<gregtech:meta_item_2:16051> * 64,
			<gtadditions:ga_meta_item:2303> * 16, //HSS-E Rounds
			<gregtech:meta_item_2:19303> * 4, //HSS-E Long Rods
			<gregtech:meta_item_1:18303> * 4, //HSS-E Rings
			<gregtech:meta_item_2:19299> * 2, //Long Magnetic Neodymium Rod
			<gregtech:cable:7195> * 2) //4x Vanadium-Gallium Cable
	.fluidInputs(<liquid:soldering_alloy> * 288, <liquid:lubricant> * 750)
	.outputs(<gregtech:meta_item_1:32607>)
	.duration(600).EUt(40960).buildAndRegister();


/* ******* UV Components ******* */

//UV Electric Pump
//Removal
assembly_line.findRecipe(245760,
    [<gregtech:meta_item_1:18391> * 16,
     <gregtech:meta_item_1:17972> * 8,
     <gregtech:fluid_pipe:3192> * 2,
     <gregtech:meta_item_2:18972> * 2,
     <gregtech:cable:5135> * 2,
     <gregtech:meta_item_1:32608>],
    [<fluid:lubricant> * 2000, <fluid:soldering_alloy> * 1296]).remove();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:18391> * 16, //Silicon-Rubber Rings
            <gregtech:meta_item_1:17972> * 8, //Neutronium Screws
            <gregtech:fluid_pipe:3192> * 2, //Large Ultimet Pipe
            <ore:plateNeutronium> * 2,
            <gregtech:meta_item_2:18972> * 2, //Neutronium Rotor
            <gregtech:cable:7135> * 2, //4x Niobium-Titanium Cable
            <gregtech:meta_item_1:32608>) //Electric Motor (UV)
    .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 1296)
    .outputs(<gregtech:meta_item_1:32617>)
    .duration(600).EUt(245760).buildAndRegister();

//UV Electric Piston
//Removal
assembly_line.findRecipe(245760,
    [<gregtech:meta_item_1:12972> * 8,
     <gregtech:meta_item_1:14972> * 4,
     <gregtech:meta_item_1:10972> * 2,
     <gregtech:cable:5135> * 2,
     <gregtech:meta_item_2:17972> * 8,
     <gregtech:meta_item_1:32608>],
 [<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 1296]).remove();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:2972> * 32, //Neutronium Round
            <ore:plateNeutronium> * 6,
            <gregtech:meta_item_1:18972> * 4, //Neutronium Ring
            <gregtech:meta_item_1:14972> * 4, //Neutronium Rod
            <gregtech:cable:8135> * 2, //8x Niobium-Titanium Cable
            <gregtech:meta_item_2:17972> * 2, //Small Neutronium Gear
            <gregtech:meta_item_1:32608>, // Electric Motor (UV)
            <gregtech:meta_item_2:26972>) //Neutronium Gear
//	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 1296)
    .outputs(<gregtech:meta_item_1:32647>)
    .duration(600).EUt(245760).buildAndRegister();

// UV Conveyor Belt
//Removal
assembly_line.findRecipe(245760,
    [<gregtech:meta_item_1:10972> * 2,
     <gregtech:meta_item_1:14972> * 4,
     <gregtech:meta_item_1:32608> * 2,
     <gregtech:meta_item_1:12972> * 8,
     <gregtech:meta_item_2:26972> * 4,
     <gregtech:cable:5135> * 2],
     [<liquid:lubricant> * 2000, <liquid:styrene_butadiene_rubber> * 2880]).remove();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:2972> * 32, //Neutronium Round
            <gregtech:meta_item_1:18972> * 4, //Neutronium Ring
            <gregtech:meta_item_1:32608> * 2, //Electric Motor (UV)
            <ore:plateNeutronium> * 2,
            <gregtech:cable:7135> * 2) //4x Niobium-Titanium Cables
//    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:lubricant> * 2000, <liquid:styrene_butadiene_rubber> * 2880)
    .outputs(<gregtech:meta_item_1:32637>)
    .duration(600).EUt(245760).buildAndRegister();

//UV Field Generator
//Removal
assembly_line.findRecipe(491520,
    [<gregtech:meta_item_2:32500> * 16,
     <gregtech:meta_item_2:16047> * 64,
     <gregtech:meta_item_2:16047> * 64,
     <gregtech:meta_item_2:16047> * 64,
     <gregtech:meta_item_2:16047> * 64,
     <gregtech:cable:8200> * 4,
     <gregtech:meta_item_1:32687> * 4,
     <gregtech:frame_neutronium>,
     <gregtech:meta_item_1:32726>],
    [<liquid:soldering_alloy> * 2304]).remove();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32446> * 64, //Multi Layer Fiber Reinforced Board
    		<gregtech:meta_item_2:16047> * 64, //Fine Osmium Wire
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:meta_item_2:16047> * 64,
            <gregtech:cable:7135> * 8, //4x Niobium-Titanium Cables
            <ore:plateNeutronium> * 6,
            <gregtech:meta_item_1:32687> * 4, //Emitter (UV)
            <gregtech:frame_neutronium>, //Neutronium Frame
            <gregtech:meta_item_1:32726>) //Gravi Star
    .fluidInputs(<liquid:soldering_alloy> * 2304)
    .outputs(<gregtech:meta_item_1:32677>)
    .duration(600).EUt(491520).buildAndRegister();

//UV Emitter
//Removal
assembly_line.findRecipe(245760,
		[<gregtech:meta_item_1:19207> * 64,
		 <gregtech:meta_item_1:19207> * 64,
		 <gregtech:meta_item_1:19207> * 64,
		 <gregtech:cable:1135> * 8,
		 <gregtech:meta_item_1:32686> * 2,
		 <gregtech:meta_item_2:25111> * 2,
		 <gregtech:frame_neutronium>,
		 <gregtech:meta_item_2:32498> * 8],
		[<liquid:soldering_alloy> * 576]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:19207> * 64, //Osmiridium Foil
			<gregtech:meta_item_1:19207> * 64,
			<gregtech:meta_item_1:19207> * 64,
			<gregtech:cable:7135> * 7, //4x Niobium-Titanium Cable
			<ore:circuitMaster> * 7, //T6 Circuit
			<gregtech:meta_item_1:32684> * 4, //Emitter (IV)
			<gregtech:meta_item_1:32685> * 2, //Emitter (LuV)
			<gregtech:frame_neutronium>, //Neutronium Frame
			<gregtech:meta_item_1:32686>) //Emitter (ZPM)
	.fluidInputs(<liquid:soldering_alloy> * 576)
	.outputs(<gregtech:meta_item_1:32687>)
	.duration(600).EUt(245760).buildAndRegister();

//UV Robot Arm
//Removal
assembly_line.findRecipe(327680,
		[<gregtech:meta_item_1:32647>,
		 <gregtech:meta_item_1:10972>,
		 <gregtech:meta_item_1:32608> * 2,
		 <gregtech:cable:6135> * 16,
		 <gregtech:meta_item_1:17972> * 16,
		 <gregtech:meta_item_1:14972> * 16,
		 <gregtech:meta_item_2:32498> * 8],
		[<liquid:soldering_alloy> * 2304, <liquid:lubricant> * 2000]).remove();

assembly_line.recipeBuilder()
	.inputs(<ore:circuitExtreme> * 24, //T4 Ciruit
			<ore:circuitElite> * 8, //T5 Circuit
			<ore:circuitMaster> *8, //T6 Circuit
			<gregtech:cable:7135> * 6, //4x Niobium-Titanium Cable
			<gregtech:meta_item_2:19972> * 4, //Neutronium Long Rod
			<gregtech:meta_item_2:17972> * 3, //Small neutronium Gear
			<gregtech:meta_item_1:32608> * 2, //Electric Motors (UV)
			<gregtech:meta_item_2:26972>, //Neutronium Gear
			<gregtech:meta_item_1:32647>) //Electric Piston (UV)
	.fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 2304)
	.outputs(<gregtech:meta_item_1:32657>)
	.duration(600).EUt(327680).buildAndRegister();

//UV Motor
//Removal
assembly_line.findRecipe(163840,
		[<gregtech:meta_block_compressed_18:11>,
		 <gregtech:cable:7135> * 2,
		 <gregtech:meta_item_2:19972> * 2,
		 <gregtech:meta_item_1:18972> * 4,
		 <gtadditions:ga_meta_item:2972> * 16,
		 <gregtech:cable:354> * 64,
		 <gregtech:cable:354> * 64,
		 <gregtech:cable:354> * 64,
		 <gregtech:cable:354> * 64],
		[<liquid:soldering_alloy> * 1296, <liquid:lubricant> * 2000]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:cable:354> * 64, //1x Superconducting Wire
			<gregtech:cable:354> * 64,
			<gregtech:cable:354> * 64,
			<gregtech:cable:354> * 64,
			<gtadditions:ga_meta_item:2972> * 16, //Neutronium Rounds
			<gregtech:meta_item_2:19972> * 4, //Neutronium Long Rod
			<gregtech:meta_item_1:18972> * 4, //Neutronium Ring
			<gregtech:cable:7135> * 2, //4x Niobium-Titanium Wires
			<gregtech:meta_block_compressed_18:11>) //Block of Magnetic Neodynium
	.fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 1296)
	.outputs(<gregtech:meta_item_1:32608>)
	.duration(600).EUt(163840).buildAndRegister();

//UV Sensor
//Removal
assembly_line.findRecipe(245760,
		[<gregtech:meta_item_2:32498> * 8,
		 <gregtech:frame_neutronium>,
		 <gregtech:meta_item_2:25111> * 2,
		 <gregtech:meta_item_1:32696> * 2,
		 <gregtech:cable:1135> * 8,
		 <gregtech:meta_item_1:19207> * 64,
		 <gregtech:meta_item_1:19207> * 64,
		 <gregtech:meta_item_1:19207> * 64],
		[<liquid:soldering_alloy> * 576]).remove();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:19207> * 64, //Osmiridium Foil
			<gregtech:meta_item_1:19207> * 64,
			<gregtech:meta_item_1:19207> * 64,
			<gregtech:cable:7135> * 7, //4x Niobium-Titanium Cable
			<ore:circuitMaster> * 7, //T6 Circuit
			<gregtech:meta_item_1:32694> * 4, //Sensor (IV)
			<gregtech:meta_item_1:32695> * 2, //Sensor (LuV)
			<gregtech:frame_neutronium>, //Neutronium Frame
			<gregtech:meta_item_1:32696>) //Sensor (ZPM)
	.fluidInputs(<liquid:soldering_alloy> * 576)
	.outputs(<gregtech:meta_item_1:32697>)
	.duration(600).EUt(245760).buildAndRegister();

//MAX Battery
assembly_line.findRecipe(300000,
    [<gregtech:meta_item_2:32479> * 64, <gregtech:meta_item_2:32479> * 64,
     <gregtech:cable:354> * 32, <gregtech:meta_item_1:12972> * 16,
     <gregtech:meta_item_2:32457> * 16, <gregtech:meta_item_1:32598> * 8,
     <gregtech:meta_item_1:32677> * 2, <gregtech:meta_item_2:32501>,
     <gregtech:meta_item_2:32501>, <gregtech:meta_item_2:32501>,
     <gregtech:meta_item_2:32501> ],
    [<liquid:water> * 16000, <liquid:soldering_alloy> * 2880]).remove();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32479> * 64, <gregtech:meta_item_2:32479> * 64,
            <gregtech:cable:354> * 32, <ore:plateNeutronium> * 16,
            <gregtech:meta_item_2:32457> * 16, <gregtech:meta_item_1:32598> * 8,
            <gregtech:meta_item_1:32677> * 2, <gregtech:meta_item_2:32501> * 4)
    .fluidInputs(<liquid:water> * 16000, <liquid:soldering_alloy> * 2880)
    .outputs(<gtadditions:ga_meta_item:32124>)
    .duration(2000).EUt(300000).buildAndRegister();

//Wetware Mainframe
assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32456> * 4,
			<gregtech:frame_tritanium> * 4,
			<gregtech:meta_item_2:32457> * 16,
			<gregtech:meta_item_2:32458> * 24,
			<gregtech:meta_item_2:32485> * 16,
			<gregtech:meta_item_2:32500> * 8,
			<gregtech:cable:354> * 32,
			<gregtech:meta_item_2:32460> * 32,
			<gregtech:meta_item_1:19391> * 64,
			<gregtech:meta_item_2:32459> * 64)
	.fluidInputs(<liquid:water> * 10000, <liquid:soldering_alloy> * 2880)
	.outputs(<gregtech:meta_item_2:32501>)
	.duration(2000).EUt(300000).buildAndRegister();

assembly_line.findRecipe(300000,
	[<gregtech:meta_item_2:32456> * 4, <gregtech:frame_tritanium> * 4,
	 <gregtech:meta_item_2:32458> * 32, <gregtech:meta_item_2:32485> * 16,
	 <gregtech:meta_item_2:32500> * 8, <gregtech:cable:1354> * 16,
	 <gregtech:meta_item_2:32460> * 32, <gregtech:meta_item_1:19391> * 64,
	 <gregtech:meta_item_2:32459> * 32, <gregtech:meta_item_2:32457> * 32],
	 [<liquid:water> * 10000, <liquid:soldering_alloy> * 2880]).remove();