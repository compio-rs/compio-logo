#import "@preview/cetz:0.3.1"
#import "base.typ": *

#let variants = (
  "blue-fill": (fill: blue, stroke: dark + .17em),
  "dark-fill": (fill: dark, stroke: none),
  "dark-stroke": (fill: none, stroke: dark + .17em),
)

#let current = variants.at(
  sys.inputs.at("variant", default: "blue-fill"),
)

#set page(
  margin: 2pt,
  fill: none,
  width: auto,
  height: auto,
)

#cetz.canvas(
  length: 1pt,
  cetz.draw.merge-path(close: true, fill: current.fill, stroke: current.stroke, logo(40, 1.15)),
)