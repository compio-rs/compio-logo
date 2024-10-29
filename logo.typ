#import "@preview/cetz:0.3.1"
#import "base.typ": *

#let match = (value, cases) => {
  for case in cases {
    if case.at(0) == value {
      return case.at(1)(value)
    }
  }
  panic("No match found for " + value)
}

#let draw(fill: none, stroke: none, ratio: 1, text-fill: none) = {
  set page(margin: 1em, fill: none, width: auto, height: auto)

  let canvas = cetz.canvas(
    length: 1pt,
    cetz.draw.merge-path(
      close: true,
      fill: fill,
      stroke: stroke,
      logo(40, ratio),
    ),
  )

  if text-fill != none {
    grid(
      align: horizon,
      columns: (auto, auto),
      gutter: .4em,
      canvas,
      move(
        text(
          font: "Metropolis",
          weight: 700,
          size: 76pt,
          fill: text-fill,
          baseline: 2pt,
          "ompio",
        ),
      ),
    )
  } else {
    canvas
  }
}


#match(
  sys.inputs.at("variant", default: "bold-with-text"),
  (
    ("outline", v => draw(stroke: dark + 4pt, ratio: 1.3)),
    ("bold", v => draw(fill: dark, ratio: 1.2)),
    ("bold-with-text", v => draw(fill: dark, text-fill: dark, ratio: 1.2)),
    ("colored-bold", v => draw(fill: blue, ratio: 1.2)),
    ("colored-outline", v => draw(fill: blue, stroke: dark + 4pt, ratio: 1.3)),
    ("colored-with-text", v => draw(fill: blue, text-fill: dark.lighten(20%), ratio: 1.2)),
  ),
)

