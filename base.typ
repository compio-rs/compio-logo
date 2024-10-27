#import "@preview/cetz:0.3.1"
#import calc: sin, cos

#let blue = rgb("#2cc9d7")
#let dark = rgb("#202a2c")

#let path(width, ratio) = {
  import cetz.draw: *

  let ratio = ratio * width / 30

  let left(len) = (rel: (-len, 0))
  let right(len) = (rel: (len, 0))
  let above(len) = (rel: (0, len))
  let below(len) = (rel: (0, -len))
  let here() = (rel: (0, 0))

  line((-15deg, width), (-15deg, ratio * 15))
  arc((-15deg, ratio * 15), start: -15deg, stop: -90deg, radius: ratio * 10)
  arc(left(ratio * 4), start: 90deg, stop: 180deg, radius: ratio * 1)
  arc(here(), start: 0deg, stop: -90deg, radius: ratio * 1)
  arc(left(ratio * 4), start: 270deg, stop: 180deg, radius: ratio * 1)
  line(here(), above(ratio * 6))
  arc((left(ratio * 9)), start: 210deg, stop: 150deg, radius: ratio * 3)

  line(right(ratio * 9), above(ratio * 6.37))

  arc((left(ratio * 9)), start: 210deg, stop: 150deg, radius: ratio * 3)
  line(right(ratio * 9), above(ratio * 6))
  arc(here(), start: 180deg, stop: 90deg, radius: ratio * 1)
  arc(right(ratio * 4), start: 90deg, stop: 0deg, radius: ratio * 1)
  arc(here(), start: 180deg, stop: 270deg, radius: ratio * 1)
  arc(right(ratio * 4), start: 90deg, stop: 15deg, radius: ratio * 10)
}

#let logo(width, ratio) = {
  import cetz.draw: *

  arc-through(
    (15deg, width),
    (-180deg, width),
    (-15deg, width),
  )
  path(width, ratio)
}