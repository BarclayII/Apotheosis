    

local pools = {
    g_big_enemies,
    g_small_enemies,
}

local path = "data/entities/animals/"
local opts = {
    "bubbles/acid/bubble_liquid.xml",
    "bubbles/ambrosia/bubble_liquid.xml",
    "bubbles/blood/bubble_liquid.xml",
    "bubbles/cursed_liquid/bubble_liquid.xml",
    "bubbles/freezing_liquid/bubble_liquid.xml",
    "bubbles/water/bubble_liquid.xml",
    "bubbles/berserkium/bubble_liquid.xml",
    "bubbles/milk/bubble_liquid.xml",
    "alchemist.xml"
}

if ModIsEnabled("Hydroxide") then
    local mats = {
        "deceleratium",
        "pandorium",
        "sliceLiquid",
        "stophittingyourself"
    }
    for k=1,#mats do
        table.insert(opts,mats[k])
    end
end

for k=1,#pools do
    if pools[k] then
        for z=1,#opts do
            table.insert(pools[k],
            {
                prob           = 0.01,
                min_count    = 1,
                max_count    = 1,
                entity     = table.concat({path,opts[z]})
            })
        end
    end
end
