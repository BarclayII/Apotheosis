CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")
dofile_once("data/scripts/lib/utilities.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xffc812e3, "spawn_gate")

function spawn_small_enemies( x, y ) end
function spawn_big_enemies( x, y ) end
function spawn_items( x, y ) end
function spawn_props( x, y ) end
function spawn_props2( x, y ) end
function spawn_props3( x, y ) end
function spawn_lamp( x, y ) end
function load_pixel_scene( x, y ) end
function load_pixel_scene2( x, y ) end
function spawn_unique_enemy( x, y ) end
function spawn_unique_enemy2( x, y ) end
function spawn_unique_enemy3( x, y ) end
function spawn_ghostlamp( x, y ) end
function spawn_candles( x, y ) end
function spawn_potions( x, y ) end
function spawn_wands( x, y ) end

function init( x, y, w, h )
	SetRandomSeed(444,777)
	if Random(1,6) == 1 or (1 == 1) then
		LoadPixelScene( "mods/apotheosis/files/biome_impl/dev_test/demo_scene.png", "", x, y, "", true )
	end
end

function spawn_gate(x, y)
	--EntityLoad at this location
	--EntityLoad( "mods/Apotheosis/files/entities/projectiles/orb_poly_crystal_chaotic.xml", x, y )
end