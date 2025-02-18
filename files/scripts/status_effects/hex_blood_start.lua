local entity_id = GetUpdatedEntityID()
entity_id = EntityGetRootEntity(entity_id)

local dmg = 0.0006
--Original amount was 0.003, no MHP scaling

local comp = EntityGetFirstComponentIncludingDisabled(entity_id,"DamageModelComponent")
if comp then

    local hp = ComponentGetValue2(comp,"max_hp")
    local dmgscaled = dmg * (hp / 4)

    local materials = {
        "blood",
        "apotheosis_blood_infectious",
        "apotheosis_eviltemple_stone",
        "apotheosis_redstone",
    }

    for k=1,#materials do
        EntitySetDamageFromMaterial( entity_id, materials[k], dmgscaled)
    end

end