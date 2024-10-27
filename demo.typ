#import "@preview/cetz:0.3.1"
#import "base.typ": *

#show heading.where(level: 1): set block(inset: (y: 1em))

#set page(margin: (x: 4em, y: 2em), width: auto, height: 9.5in)

#let vertical(width) = {
  import cetz.draw: *

  arc-through((285deg, width), (270deg, width), (255deg, width))
  rotate(-90deg)
  path(width, 1)
}

#let one-size-grid(ratio) = {
  import cetz.draw: merge-path

  grid(
    columns: (auto, auto, auto),
    gutter: 3em,
    [
      #cetz.canvas(
        length: 1pt,
        merge-path(close: true, fill: blue, stroke: none, logo(40, ratio)),
      )
      No stroke, blue fill
    ],
    [
      #cetz.canvas(
        length: 1pt,
        merge-path(close: true, fill: blue, stroke: black, logo(40, ratio)),
      )
      Black stroke, blue fill
    ],
    [
      #cetz.canvas(
        length: 1pt,
        merge-path(close: true, fill: blue, stroke: black + .15em, logo(40, ratio)),
      )
      THICC stroke, blue fill
    ],

    [
      #cetz.canvas(
        length: 1pt,
        merge-path(close: true, fill: none, stroke: black, logo(40, ratio)),
      )
      Black stroke, no fill
    ],
    [
      #cetz.canvas(
        length: 1pt,
        merge-path(close: true, fill: none, stroke: black + .2em, logo(40, ratio)),
      )
      THICC stroke, no fill
    ],
    [
      #cetz.canvas(
        length: 1pt,
        merge-path(close: true, fill: black, stroke: black, logo(40, ratio)),
      )
      Black stroke, black fill
    ],
  )
}


Color: #box(height: 1.3em, baseline: 21%, fill: blue, inset: 3pt, blue.to-hex())

= Original

#one-size-grid(1)

= Ratio: 1.15

#one-size-grid(1.15)

#pagebreak()

= Ratio: 1.3

#one-size-grid(1.3)

= Vertical

#grid(
  columns: (auto, auto, auto),
  gutter: 3em,
  [#cetz.canvas(
      length: 1pt,
      cetz.draw.merge-path(close: true, fill: black, stroke: black, vertical(30)),
    )],
  [#cetz.canvas(
      length: 1pt,
      cetz.draw.merge-path(close: true, fill: none, stroke: black + 0.15em, vertical(30)),
    )],
  [#cetz.canvas(
      length: 1pt,
      cetz.draw.merge-path(close: true, fill: none, stroke: black, vertical(30)),
    )],
)



