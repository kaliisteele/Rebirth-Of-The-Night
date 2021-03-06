import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish) {
	if (event.isPlayer) {
		if (event.player.world.isRemote()) {
			return;
		}
	}
	if (event.isPlayer & event.item.definition.id == <rustic:ironberries>.definition.id) {
		event.player.clearActivePotions();
		var weight = <potion:potioncore:weight>.makePotionEffect(200, 49, false, false) as IPotionEffect;
		var resist = <potion:minecraft:resistance>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		var fireres = <potion:minecraft:fire_resistance>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		var slow = <potion:minecraft:slowness>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		var minfat = <potion:minecraft:mining_fatigue>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		var weak = <potion:minecraft:weakness>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		event.player.addPotionEffect(weight);
		event.player.addPotionEffect(resist);
		event.player.addPotionEffect(fireres);
		event.player.addPotionEffect(slow);
		event.player.addPotionEffect(minfat);
		event.player.addPotionEffect(weak);
	}
	if (event.isPlayer & event.item.definition.id == <minecraft:mushroom_stew>.definition.id) {
		event.player.give(<minecraft:bowl>);
	}
});

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
	if (event.world.isRemote()) {
		return;
	}
	if (event.block.definition.id == "biomesoplenty:plant_0" & event.block.meta == 5) {
		var poisonEffect = <potion:minecraft:poison>.makePotionEffect(40, 1) as IPotionEffect;
		event.player.addPotionEffect(poisonEffect);
		event.player.attackEntityFrom(<damageSource:CACTUS>, 4);
	}
});