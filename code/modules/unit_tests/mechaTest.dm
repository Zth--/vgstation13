/datum/unit_test/fatmecha
/datum/unit_test/fatmecha/start()

	var/turf/centre = locate(100, 100, 1) // Nice place with a good atmosphere and shit
    var/mob/living/carbon/human/H = new(centre)
	sleep(1) // Poor human needs to handle his birth (and the spawn() involved). Be patien
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/space/rig/security(H), slot_wear_suit)
	/obj/mecha/combat/durand/mech = new(centre)
	mecha.moved_inside(H)
	for(var/entry in mecha.log)
		world.log << entry