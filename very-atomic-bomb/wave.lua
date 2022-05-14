--wave.lua

local wave=table.deepcopy(data.raw['projectile']['atomic-bomb-wave'])
wave.name="very-abw"
wave.action={
  {
    action_delivery = {
      target_effects = {
        damage = {
          amount = 10000,
          type = "explosion"
        },
        lower_damage_modifier = 5,
        lower_distance_threshold = 0,
        type = "damage",
        upper_damage_modifier = 2.5,
        upper_distance_threshold = 65,
        vaporize = true
      },
      type = "instant"
    },
    ignore_collision_condition = true,
    radius = 3,
    type = "area"
  }
}

data:extend{wave}