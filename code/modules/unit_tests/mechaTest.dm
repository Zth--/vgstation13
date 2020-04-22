/datum/unit_test/fatmecha
/datum/unit_test/fatmecha/start()

	var/turf/centre = locate(100, 100, 1) // Nice place with a good atmosphere and shit
	var/mob/living/carbon/human/H = new(centre)
	sleep(1) // Poor human needs to handle his birth (and the spawn() involved). Be patien
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/space/rig/security(H), slot_wear_suit)
	var/obj/mecha/combat/durand/mech = new(centre)
	mech.moved_inside(H)
	for(var/entry in mech.log)
		world.log << entry
	var/is_wearing_hardsuit = H.is_wearing_item(/obj/item/clothing/suit/space/rig/security, slot_wear_suit)
	world.log << "[is_wearing_hardsuit]"
	ASSERT(is_wearing_hardsuit)
	H.mutations.Add(M_FAT)
	H.update_mutations()
	var/is_wearing_hardsuit = H.is_wearing_item(/obj/item/clothing/suit/space/rig/security, slot_wear_suit)
	ASSERT(is_wearing_hardsuit)
	// var/fat = M_FAT in H.mutations
	// world.log << "[fat]"