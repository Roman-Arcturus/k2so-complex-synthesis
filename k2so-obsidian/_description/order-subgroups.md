Factorio sorts `order` strings using **literal ASCII character comparison** from left to right. The game engine has no special logic or parser for `[...]` brackets—they are strictly a human readability convention used by developers.

To the engine, `w`, `[`, `a`, `-`, and `]` are just individual characters evaluated by their raw ASCII values.

### Why `order = "w[waste]-b[waste-liquid]"` Behaves Erratically

- **Text Mismatches Inside Brackets Break Sorting:** If you attempt to sort two recipes using different bracket labels (e.g., Recipe 1 has `w[waste]-b[...]` and Recipe 2 has `w[waste-refining]-a[...]`), the comparison fails at character 8:
    
    - Recipe 1 character 8 is `]` (ASCII 93).
        
    - Recipe 2 character 8 is `-` (ASCII 45).
        
    - Because ASCII 45 (`-`) comes before ASCII 93 (`]`), Recipe 2 will sort **before** Recipe 1, completely overriding your intended `-a` vs `-b` ordering.
        
- **Subgroup Overrides Recipe Order:** Factorio sorts by `subgroup.order` **first**. If two recipes do not share the exact same `subgroup` string, the recipe-level `order` field is completely ignored until the subgroups are sorted.
    
- **ASCII Symbol Precedence Rules:** Standard ASCII ordering sorts symbols and letters in this sequence:
    
    $$\text{`-` (45)} < \text{`0-9` (48-57)} < \text{`A-Z` (65-90)} < \text{`[` (91)} < \text{`]` (93)} < \text{`a-z` (97-122)}$$
    
    Mixing dashes, brackets, and lowercase letters across string positions causes items to jump unexpectedly in the craft menu.
    

### How to Fix It

**1. Keep Prefix Brackets 100% Identical**

Ensure every recipe in the same group shares the exact same primary bracket string so the engine reaches your secondary `a`, `b`, `c` keys:

```lua
-- Recipe 1 (First)
order = "w[waste]-a[waste-liquid]"

-- Recipe 2 (Second)
order = "w[waste]-b[waste-solid]"
```

**2. Standardize Your Subgroups** Verify in your Lua definitions that all related recipes share the exact same `subgroup` property (e.g., `subgroup = "raw-material"` or `subgroup = "rx-waste"`).

**3. Use Clean Lettering (Alternative)** If you want to avoid bracket mismatch bugs entirely, place descriptive names at the very end of the string:

```lua
order = "a-a[liquid-waste]"
order = "a-b[solid-waste]"
```
SO I guess I will need to delve inside K2 lua to find the ordering it uses, If I want to place my ingredients nearby theirs

Exactly—matching K2's exact `subgroup` string and bracket prefix is the only way to place your items right alongside theirs in the crafting menu.

You can save time digging through K2's codebase with a few practical shortcuts:

- **In-Game Debug Tooltips (Fastest Method):** Press **F4** in-game, tick **`show-prototype-bag`** (or enable prototype tooltips in interface settings). When you hover over any K2 item in your inventory or craft menu, the tooltip will display its raw prototype name, `subgroup`, and exact `order` string in real time.
    
- **Inherit Properties Dynamically in Lua:** Instead of hardcoding order strings, you can read K2's values directly during the `data-updates.lua` or `data-final-fixes.lua` phase:

```lua
local k2_gear = data.raw.item["kr-steel-gear-wheel"]
if k2_gear then
  data.raw.item["rx-rare-metals-gear"].subgroup = k2_gear.subgroup
  data.raw.item["rx-rare-metals-gear"].order = k2_gear.order .. "-b[rare-metals]"
end
```
**K2 Subgroup File Paths:** If you prefer reading the source code directly, K2 defines its category layouts inside `Krastorio2/prototypes/subgroups/` and its raw item prototypes in `Krastorio2/prototypes/items/`.

---

Understood. I will try to read #mod_Krastorio2 values and use them. 
#mod_Krastorio2  itself stopped developing since Space Exploration, but compatibility fixes, like #mod_nulls-k2so-tweaks is updated frequently, so instead of static constants is better to use dynamic reading.


-------

Executing dynamic property inheritance inside **`data-final-fixes.lua`** is the safest way to build mod compatibility. Because tweak mods like `nulls-k2so-tweaks` frequently mutate recipe categories, item order strings, and subgroups during earlier data phases, reading values dynamically guarantees your RX items automatically adapt to whatever K2 ecosystem tweaks the player has installed.

**Best Practices for Dynamic Lua Reading**

- **Use `data-final-fixes.lua`:** Run your sorting overrides in this file rather than `data.lua` or `data-updates.lua`. This ensures all other compatibility and overhaul mods finish their alterations first.
    
- **Add Defensive Nil Checks:** Always verify the target K2 prototype exists before attempting to read its properties, preventing game startup crashes if a tweak mod modifies or conditionally removes an item.
    
- **Declare Mod Dependencies:** In your `info.json`, add K2 and common tweak mods to your dependencies array (e.g., `"?(mod_name)"`) so Factorio enforces the correct Lua execution order.
    
---

**Robust Dynamic Inheritance Pattern**

```lua
-- data-final-fixes.lua

-- Helper function to safely place an RX item directly after a K2 reference item
local function match_k2_sorting(rx_item_name, k2_reference_name, order_suffix)
    local rx_item = data.raw.item[rx_item_name] or data.raw.fluid[rx_item_name]
    local k2_item = data.raw.item[k2_reference_name] or data.raw.fluid[k2_reference_name]

    if rx_item and k2_item then
        -- Inherit the exact subgroup K2 (or a tweak mod) assigned to it
        rx_item.subgroup = k2_item.subgroup
        -- Append a unique sub-order key so RX sits cleanly right next to K2
        rx_item.order = k2_item.order .. (order_suffix or "-a[rx]")
    end
end

-- Examples:
match_k2_sorting("rx-rare-metals-gear", "kr-steel-gear-wheel", "-b[rare-metals]")
match_k2_sorting("fluid_rx-liquid-waste", "kr-dirty-water", "-a[liquid-waste]")
```


This pattern completely decouples your mod from static string constants, allowing RX to seamlessly integrate into any K2/Space Age tweak stack automatically.



