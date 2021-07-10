# Update Notes

This document containts only the most important things required to know when updating Omnifactory to the next version. Please see the changelog for a complete desciption of everything that has been changed.

## Updating to 1.3.0

There are several things to be aware of when updating to Omnifactory version 1.3.0, and will be important to do when you get your world running.

1. Run the command `/bq_admin default load` or click on the **Update Quests** button on the Main Menu of the Better Questing Questbook. This will update your Questbook to the latest version.
2. Due to several issues, it was decided to remove the mod **Modular Machinery** and replace it with a custom Multiblock implementation creating Multiblocks using the api of GregTech Community Edition. These Multiblocks are created through a new mod called **Multiblock Tweaker**. There are several changes that need to be made due to this change, and your Multiblock structures from Modular Machinery will not function anymore.
    - Conversion recipes have been provided to convert your old Modular Machinery items and blocks to the new items and blocks.
    - Your structures can be rebuilt in the same form after converting the old materials.
    - These conversion recipes will be removed in the next update, along with the Modular Machinery mod, which will result in losing any items not converted.
    - Due to the structures being implemented through the GTCE api, the Multiblocks will now only accept EU power.
    - Greater flexability in the placement of inputs and outputs is now possible due to the Multiblocks being implemented through the GCTE api.
    - Each Multiblock now has a custom controller, instead of using the same controller for each Multiblock.
3. Due to being a redundant item, it was decided to remove the **ContentTweaker** version of **Endstone Dust**. A conversion recipe to the GregTech Community Edition version has been provided. These conversion recipes will be removed in the next update, result in losing any items not converted.
4. **Pulsating Iron Wire** has been implemented as a GregTech Community Edition item, instead of as a **ContentTweaker** item. This means that the **ContentTweaker** variant of the item will be removed in the next update, and a tempory conversion recipe has been provided to freely convert the old ContentTweaker variants into the new GregTech Community Edition variants. Any items not converted before the next update will be lost.
5. Due to several Chemistry updates in **Gregtech Community Edition**, some existing chemistry recipes have been changed. If you are having issues, please check to see if the recipe has been changed before reporting an issue.
6. The mod **Simple Fluid Tanks** will be removed in the next version due to general bad performace, and a plethora of substitutes. See the Gregtech multiblock tank structures if you want a similar looking replacement.