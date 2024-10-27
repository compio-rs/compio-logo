#import "@preview/cetz:0.3.1"
#import cetz.draw: *
#import "base.typ": *

#let variants = (
  "bold": (fill: dark, stroke: none, ratio: 1.15),
  "colored-bold": (fill: blue, stroke: none, ratio: 1.15),
  "outline": (fill: none, stroke: dark + .4em, ratio: 1.25),
  "colored-outline": (fill: blue, stroke: dark + .4em, ratio: 1.25),
)

#let current = variants.at(
  sys.inputs.at("variant", default: "colored-outline"),
)

#set page(
  margin: 2pt,
  fill: none,
  width: auto,
  height: auto,
)

#cetz.canvas(
  length: 1pt,
  merge-path(
    close: true,
    fill: current.fill,
    stroke: current.stroke,
    logo(40, current.ratio),
  ),
)