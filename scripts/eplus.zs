import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.jei.JEI;


recipes.remove(<eplus:advanced_table>);
recipes.remove(<eplus:table_upgrade>);

recipes.addShaped("Table Upgrade", <eplus:table_upgrade>,[
	[<minecraft:gold_block>, <minecraft:writable_book>, <minecraft:gold_block>],
    [<minecraft:obsidian>, <simpleores:mythril_ingot>, <minecraft:obsidian>],
    [<minecraft:gold_block>, <minecraft:ender_eye>, <minecraft:gold_block>]
]);
      


mods.jei.JEI.hideCategory("minecraft.anvil");
mods.jei.JEI.hideCategory("endreborn.user");


mods.rockytweaks.Anvil.remove([<dungeontactics:silver_sword>]); // true darks edge
mods.rockytweaks.Anvil.remove([<msmlegacy:dawn_star:*>]); // true lights edge
mods.rockytweaks.Anvil.remove([<msmlegacy:eye_end_blade:*>]); // interdim blade
mods.rockytweaks.Anvil.remove([<msmlegacy:glacial_blade:*>]); // dragons bane
mods.rockytweaks.Anvil.remove([<msmlegacy:crystaline_blade:*>]); // lights edge
mods.rockytweaks.Anvil.remove([<msmlegacy:wither_bane:*>]); // darks edge
mods.rockytweaks.Anvil.remove([<msmlegacy:relic_aqueous:*>]);
mods.rockytweaks.Anvil.remove([<msmlegacy:relic_candy:*>]);





////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             REMOVING ENCHANTMENT BOOKS FROM JEI AND LOOT TABLES
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

mods.ltt.LootTable.removeModItem("randomenchantments");
mods.ltt.LootTable.removeModItem("msmlegacy");
mods.ltt.LootTable.removeModItem("livingenchantment");

mods.ltt.LootTable.removeModEntry("randomenchantments");
mods.ltt.LootTable.removeModEntry("msmlegacy");
mods.ltt.LootTable.removeModEntry("livingenchantment");

mods.ltt.LootTable.removeModTable("randomenchantments");
mods.ltt.LootTable.removeModTable("msmlegacy");
mods.ltt.LootTable.removeModTable("livingenchantment");


mods.jei.JEI.hide(<minecraft:enchanted_book>);

/*

val disabledEnchantments = [<enchantment:mod_lavacow:lifesteal>, <enchantment:msmlegacy:feast>] as IEnchantmentDefinition[];
val disabledEnchantmentLevels = [1,2,3];





//////////////////////////////////////////////////////////////////////////
var enchantLoopCounter = 0; //Enchant Array Locater
var enchantNameLevelTag = disabledEnchantments[0].makeEnchantment(1).makeTag().ench[0];
var enchantMap = {}  as IData;

for enchant in disabledEnchantments {
	for enchantLevel in disabledEnchantmentLevels {

		enchantNameLevelTag = disabledEnchantments[enchantLoopCounter].makeEnchantment(enchantLevel).makeTag().ench[0];

		enchantMap = {StoredEnchantments: [enchantNameLevelTag]};

		mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag(enchantMap));

	} 

	enchantLoopCounter += 1;
}
*/