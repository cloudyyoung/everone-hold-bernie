local _G = GLOBAL
local require = _G.require
local assert = _G.assert
local Ingredient = _G.Ingredient
local RECIPETABS = _G.RECIPETABS
local TECH = _G.TECH

Assets = {}

AddPrefabPostInit("bernie_inactive", function(inst)
    if inst.components.equippable and inst.components.inventoryitem then
        inst.components.inventoryitem.canbepickedup = true
        inst.components.equippable.restrictedtag = nil
    end
end)
