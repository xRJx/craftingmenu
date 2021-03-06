local BLUEPRINT = Clockwork.item:New("blueprint_base");

BLUEPRINT.name = "Shotgun Blueprint";
BLUEPRINT.model = "models/weapons/w_shotgun.mdl";
BLUEPRINT.weight = 0.8;

BLUEPRINT.category = "Weapon Blueprints";
BLUEPRINT.crafting = true;

-- A function to check for the required materials for a craft.
function BLUEPRINT:HasMaterials(player)
	return
	{
		{"Broken Shotgun", 1},
		{"Refined Metal", 2},
		{"Box Of Screws", 1},
		{"Screw Driver", 1}
	}
end;

-- A function to take the required materials for a craft.
function BLUEPRINT:TakeMaterials(player)
	return
	{
		{"Broken Shotgun", 1},
		{"Refined Metal", 2},
		{"Box Of Screws", 1}
	}
end;

-- A function to give a player a crafted item.
function BLUEPRINT:GiveCraft(player)
	return
	{
		{"Weapon Shotgun", 1}
	}
end;

BLUEPRINT:Register();