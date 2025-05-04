#import "style.typ": 字体, 字号
#import "@preview/theorion:0.3.3": make-frame
#import "@preview/showybox:2.0.4": showybox

#let _fancy_color = (
  definition: rgb("#00a652"),
  law: rgb("#7B39BC"),
  theorem: rgb("#ff8618"),
  lemma: rgb("#ff8618"),
  corollary: rgb("#ff8618"),
  proposition: rgb("#ffd706"),
  example: rgb("#00aef7"),
  exercise: rgb("#00aef7"),
  remark: rgb("#00a652"),
)

#let _fancy-box(
  border_color: none,
  title_color: none,
  end_symbol: none,
  t_font: 字体.宋体,
  t_size: 字号.小四,
  t_color: white,
  t_weight: "bold",
  b_font: 字体.楷体,
  b_size: 字号.小四,
  b_color: black,
  b_weight: "regular",
  prefix: none,
  title: "",
  full-title: auto,
  breakable: true,
  body,
) = context showybox(
  frame: (
    thickness: .05em,
    radius: .3em,
    inset: (x: 1.2em, top: if full-title != "" { .7em } else { 1.2em }, bottom: 1.2em),
    border-color: border_color,
    title-color: border_color,
    body-color: border_color.lighten(90%),
    title-inset: (x: 1em, y: .5em),
  ),
  title-style: (
    boxed-style: (
      anchor: (x: start, y: horizon),
      radius: 0em,
    ),
    color: white,
    weight: "bold",
  ),
  breakable: breakable,
  title: {
    if full-title == auto {
      if prefix != none {
        text(font: t_font, size: t_size, fill: t_color, weight: t_weight)[#prefix (#title)]
      } else {
        text(font: t_font, size: t_size, fill: t_color, weight: t_weight, title)
      }
    } else {
      text(font: t_font, size: t_size, fill: t_color, weight: t_weight, full-title)
    }
  },
  {
    set par(first-line-indent: (amount: 0pt, all: true), justify: true)
    text(font: b_font, size: b_size, weight: b_weight, body)
    if end_symbol != none {
      place(
        end + bottom,
        dy: .8em,
        dx: .9em,
        text(size: 1em, fill: border_color, end_symbol),
      )
    }
  },
)

/// Register global colors.



/// Create corresponding theorem box.
#let (theorem-counter, theorem-box, theorem, show-theorem) = make-frame(
  "theorem",
  "定理",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.theorem),
)

#let (definition-counter, definition-box, definition, show-definition) = make-frame(
  "definition",
  "定义",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.definition),
)

#let (law-counter, law-box, law, show-law) = make-frame(
  "law",
  "定律",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.law),
)

#let (lemma-counter, lemma-box, lemma, show-lemma) = make-frame(
  "lemma",
  "引理",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.lemma),
)

#let (corollary-counter, corollary-box, corollary, show-corollary) = make-frame(
  "corollary",
  "推论",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.corollary),
)

#let (proposition-counter, proposition-box, proposition, show-proposition) = make-frame(
  "proposition",
  "命题",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.proposition),
)

#let (example-counter, example-box, example, show-example) = make-frame(
  "example",
  "例",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.example),
)

#let (exercise-counter, exercise-box, exercise, show-exercise) = make-frame(
  "exercise",
  "练习",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.exercise),
)

#let (remark-counter, remark-box, remark, show-remark) = make-frame(
  "remark",
  "注",
  inherited-levels: 1,
  render: _fancy-box.with(border_color: _fancy_color.remark),
)

#let proof(
  body,
) = [
  #text(font: 字体.宋体, size: 字号.小四, weight: "bold")[证明:]
  #h(0.5em)
  #body
  #linebreak()
  #h(1fr)
  #sym.square.stroked
]

#let solution(
  body,
) = [
  #text(font: 字体.宋体, size: 字号.小四, weight: "bold")[解:]
  #h(0.5em)
  #body
]

#let theorion_box(it) = {
  show: show-definition
  show: show-law
  show: show-theorem
  show: show-lemma
  show: show-corollary
  show: show-proposition
  show: show-example
  show: show-exercise
  show: show-remark
  it
}
