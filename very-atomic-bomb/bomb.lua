--bomb.lua

local veryBomb=table.deepcopy(data.raw["ammo"]["atomic-bomb"])
veryBomb.name="very-atomic-bomb"
veryBomb.icons = {
  {
    icon = veryBomb.icon,
    tint = {r=0.5, g=1, b=0.5, a=1}
  }
}
veryBomb.stack_size=5
veryBomb.ammo_type = {
  action = {
    action_delivery = {
      projectile = "very-atomic-rocket",
      source_effects = {
        entity_name = "very-explosion-hit",
        type = "create-entity"
      },
      starting_speed = 0.005,
      type = "projectile"
    },
    type = "direct"
  },
  category = "rocket",
  cooldown_modifier = 20,
  range_modifier = 5,
  target_type = "position"
}

local recipe = table.deepcopy(data.raw["recipe"]["atomic-bomb"])
recipe.enabled = false
recipe.name = "very-atomic-bomb"
recipe.ingredients = {{"explosives", 50}, {"rocket-control-unit", 30}, {"uranium-235", 100}, {"atomic-bomb", 1}}
recipe.result = "very-atomic-bomb"

local tech = table.deepcopy(data.raw['technology']['atomic-bomb'])
tech.name="very-atomic-bomb"
tech.effects = {
  {
    recipe = "very-atomic-bomb",
    type = "unlock-recipe"
  }
}

tech.icon="__very-atomic-bomb__/thumbnail.png"

tech.prerequisites = {
  "military-4",
  "kovarex-enrichment-process",
  "rocket-control-unit",
  "rocketry",
  "atomic-bomb"
}

tech.unit = {
  count = 10000,
  ingredients = {
    {
      "automation-science-pack",
      1
    },
    {
      "logistic-science-pack",
      1
    },
    {
      "chemical-science-pack",
      1
    },
    {
      "military-science-pack",
      5
    },
    {
      "production-science-pack",
      1
    },
    {
      "utility-science-pack",
      1
    }
  },
  time = 30
}

data:extend{veryBomb, recipe, tech}