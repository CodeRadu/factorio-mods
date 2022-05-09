--rocket.lua
local atomicRocket=table.deepcopy(data.raw['projectile']['atomic-rocket'])
atomicRocket.name="very-atomic-rocket"
atomicRocket.action.action_delivery.target_effects = {
  {
    apply_projection = true,
    radius = 30,
    tile_collision_mask = {
      "water-tile"
    },
    tile_name = "nuclear-ground",
    type = "set-tile"
  },
  {
    explosion = "explosion",
    radius = 30,
    type = "destroy-cliffs"
  },
  {
    entity_name = "nuke-explosion",
    type = "create-entity"
  },
  {
    delay = 0,
    duration = 150,
    ease_in_duration = 5,
    ease_out_duration = 60,
    effect = "screen-burn",
    full_strength_max_distance = 800,
    max_distance = 6400,
    strength = 6,
    type = "camera-effect"
  },
  {
    audible_distance_modifier = 3,
    max_distance = 1000,
    play_on_target_position = false,
    sound = {
      aggregation = {
        max_count = 1,
        remove = true
      },
      variations = {
        {
          filename = "__base__/sound/fight/nuclear-explosion-1.ogg",
          volume = 0.9
        },
        {
          filename = "__base__/sound/fight/nuclear-explosion-2.ogg",
          volume = 0.9
        },
        {
          filename = "__base__/sound/fight/nuclear-explosion-3.ogg",
          volume = 0.9
        }
      }
    },
    type = "play-sound"
  },
  {
    audible_distance_modifier = 3,
    max_distance = 1000,
    play_on_target_position = false,
    sound = {
      aggregation = {
        max_count = 1,
        remove = true
      },
      variations = {
        {
          filename = "__base__/sound/fight/nuclear-explosion-aftershock.ogg",
          volume = 0.4
        }
      }
    },
    type = "play-sound"
  },
  {
    damage = {
      amount = 2000,
      type = "explosion"
    },
    type = "damage"
  },
  {
    check_buildability = true,
    entity_name = "huge-scorchmark",
    offsets = {
      {
        0,
        -0.5
      }
    },
    type = "create-entity"
  },
  {
    repeat_count = 1,
    type = "invoke-tile-trigger"
  },
  {
    decoratives_with_trigger_only = false,
    include_decals = true,
    include_soft_decoratives = true,
    invoke_decorative_trigger = true,
    radius = 70,
    type = "destroy-decoratives"
  },
  {
    apply_projection = true,
    decorative = "nuclear-ground-patch",
    spawn_max = 40,
    spawn_max_radius = 12.5,
    spawn_min = 30,
    spawn_min_radius = 11.5,
    spread_evenly = true,
    type = "create-decorative"
  },
  {
    action = {
      action_delivery = {
        projectile = "atomic-bomb-ground-zero-projectile",
        starting_speed = 0.47999999999999998,
        starting_speed_deviation = 0.075,
        type = "projectile"
      },
      radius = 20,
      repeat_count = 1000,
      target_entities = false,
      trigger_from_target = true,
      type = "area"
    },
    type = "nested-result"
  },
  {
    action = {
      action_delivery = {
        projectile = "atomic-bomb-wave",
        starting_speed = 1,
        starting_speed_deviation = 0.075,
        type = "projectile"
      },
      radius = 100,
      repeat_count = 1000,
      target_entities = false,
      trigger_from_target = true,
      type = "area"
    },
    type = "nested-result"
  },
  {
    action = {
      action_delivery = {
        projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
        starting_speed = 1,
        starting_speed_deviation = 0.075,
        type = "projectile"
      },
      radius = 100,
      repeat_count = 1000,
      show_in_tooltip = false,
      target_entities = false,
      trigger_from_target = true,
      type = "area"
    },
    type = "nested-result"
  },
  {
    action = {
      action_delivery = {
        projectile = "atomic-bomb-wave-spawns-fire-smoke-explosion",
        starting_speed = 0.325,
        starting_speed_deviation = 0.075,
        type = "projectile"
      },
      radius = 20,
      repeat_count = 700,
      show_in_tooltip = false,
      target_entities = false,
      trigger_from_target = true,
      type = "area"
    },
    type = "nested-result"
  },
  {
    action = {
      action_delivery = {
        projectile = "atomic-bomb-wave-spawns-nuke-shockwave-explosion",
        starting_speed = 0.325,
        starting_speed_deviation = 0.075,
        type = "projectile"
      },
      radius = 8,
      repeat_count = 1000,
      show_in_tooltip = false,
      target_entities = false,
      trigger_from_target = true,
      type = "area"
    },
    type = "nested-result"
  },
  {
    action = {
      action_delivery = {
        projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
        starting_speed = 0.325,
        starting_speed_deviation = 0.075,
        type = "projectile"
      },
      radius = 26,
      repeat_count = 300,
      show_in_tooltip = false,
      target_entities = false,
      trigger_from_target = true,
      type = "area"
    },
    type = "nested-result"
  },
  {
    action = {
      action_delivery = {
        target_effects = {
          {
            entity_name = "nuclear-smouldering-smoke-source",
            tile_collision_mask = {
              "water-tile"
            },
            type = "create-entity"
          }
        },
        type = "instant"
      },
      radius = 8,
      repeat_count = 10,
      show_in_tooltip = false,
      target_entities = false,
      trigger_from_target = true,
      type = "area"
    },
    type = "nested-result"
  }
}

data:extend{atomicRocket}