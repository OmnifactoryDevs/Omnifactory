import scripts.CommonVars.makeShaped as makeShaped;

print("--- loading FluxNetworks.zs ---");

//Remove all default recipes
recipes.remove(<fluxnetworks:fluxcore>);
recipes.remove(<fluxnetworks:fluxconfigurator>);
recipes.remove(<fluxnetworks:fluxblock>);
recipes.remove(<fluxnetworks:fluxplug>);
recipes.remove(<fluxnetworks:fluxpoint>);
recipes.remove(<fluxnetworks:fluxcontroller>);
recipes.remove(<fluxnetworks:fluxstorage>);
recipes.remove(<fluxnetworks:herculeanfluxstorage>);
recipes.remove(<fluxnetworks:gargantuanfluxstorage>);

//Flux Plug
makeShaped("of_flux_plug", <fluxnetworks:fluxplug>,
    ["CSC",
     "XIX",
     "CUC"],
    { C : <ore:circuitMaster>, //T6 Circuit
      S : <gregtech:meta_item_1:32695>, //LuV Sensor
      X : <enderio:item_endergy_conduit:11>, //Superconductor Wire
	  I : <actuallyadditions:block_phantom_energyface>, //Phantom Energyface
	  U : <gregtech:machine:10704> //LuV CEU 16x
      });

//Flux Point
makeShaped("of_flux_point", <fluxnetworks:fluxpoint>,
    ["CUC",
     "XIX",
     "CSC"],
    { C : <ore:circuitMaster>, //T6 Circuit
      S : <gregtech:meta_item_1:32695>, //LuV Sensor
      X : <enderio:item_endergy_conduit:11>, //Superconductor Wire
	  I : <actuallyadditions:block_phantom_energyface>, //Phantom Energyface
	  U : <gregtech:machine:10704> //LuV CEU 16x
      });
	  
//Flux Controller
makeShaped("of_flux_controller", <fluxnetworks:fluxcontroller>,
    ["SPE",
     "CBC",
     "XIX"],
    { C : <ore:circuitMaster>, //T6 Circuit
      S : <gregtech:meta_item_1:32695>, //LuV Sensor
	  E : <gregtech:meta_item_1:32685>, //LuV Emitter
      X : <enderio:item_endergy_conduit:11>, //Superconductor Wire
	  I : <actuallyadditions:block_phantom_energyface>, //AA Phantom Energyface
	  B : <gregtech:machine:637>, //LuV Battery Buffer 16x
	  P : <actuallyadditions:block_player_interface> //AA Player Interface
      });

//Flux Configurator
makeShaped("of_flux_configurator", <fluxnetworks:fluxconfigurator>,
    ["  S",
     " R ",
     "R  "],
    { S : <gregtech:meta_item_1:32695>, //LuV Sensor
      R : <ore:stickEnderium> //Enderium Rod
      });
