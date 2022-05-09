--explosion.lua

local veryExplosion=table.deepcopy(data.raw["explosion"]["explosion-hit"])

veryExplosion.name="very-explosion-hit"

veryExplosion.animations = {
  {
    animation_speed = 2,
    draw_as_glow = true,
    filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
    frame_count = 13,
    height = 38,
    priority = "extra-high",
    shift = {
      0,
      -0.3125
    },
    width = 34
  }
}
veryExplosion.smoke_count=5

data:extend{veryExplosion}