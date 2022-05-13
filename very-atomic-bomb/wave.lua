--wave.lua

local wave=table.deepcopy(data.raw['projectile']['atomic-bomb-wave'])
wave.name="very-abw"
wave.action={
  {
    action_delivery = {
      target_effects = {
        damage = {
          amount = 1000,
          type = "explosion"
        },
        lower_damage_modifier = 1,
        lower_distance_threshold = 0,
        type = "damage",
        upper_damage_modifier = 0.1,
        upper_distance_threshold = 35,
        vaporize = false
      },
      type = "instant"
    },
    ignore_collision_condition = true,
    radius = 3,
    type = "area"
  }
}

data:extend{wave}