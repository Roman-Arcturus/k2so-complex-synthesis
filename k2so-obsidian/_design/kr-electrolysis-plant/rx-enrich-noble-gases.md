recipe: rx-enrich-noble-gases


```lua
data:extend({
{
    type = "recipe",
    name = "rx-enrich-noble-gases",
    categories = { "kr-electrolysis" }, 
    energy_required = 12.0,
    ingredients = {
      { type = "fluid", name = "rx-noble-gases",        amount = 24 },
      { type = "fluid", name = "kr-hydrogen",           amount = 72 },
      { type = "item",  name = "kr-rare-metals",        amount = 2 }, -- Noble metal catalyst
      { type = "item",  name = "rx-filter-liquid",      amount = 1 }, -- Dehydration filter
    },
    results = {
      { type = "fluid", name = "rx-noble-gases",        amount = 72 },
      { type = "fluid", name = "water",                 amount = 24 },
      -- Catalyst Loop (May be destroyed in process)
      { type = "item",  name = "kr-rare-metals",        amount = 2,
	      independent_probability = 0.90 },
      -- Filter Loop (Degradation Check)
      { type = "item",  name = "rx-filter-liquid",      amount = 1, 
	      independent_probability = 0.70 },
      { type = "item",  name = "rx-filter-liquid-used", amount = 1, 
	      independent_probability = 0.60 },
    },
}
})
```