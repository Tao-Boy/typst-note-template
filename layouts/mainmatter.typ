#import "../utils/style.typ": 字体, 字号
#import "../utils/custom-heading.typ": custom_heading
#import "../utils/header.typ": header
#import "../utils/custom-figure.typ": custom-figure
#import "../utils/math-equation.typ": math-equation
#import "../utils/theorion.typ": (
  theorion_box,
  definition,
  law,
  theorem,
  lemma,
  corollary,
  proposition,
  example,
  remark,
  exercise,
  proof,
  solution,
)

#let mainmatter(it, title: "") = {
  show: header.with(title: title)
  show: custom_heading
  show: custom-figure
  show: math-equation
  show: theorion_box
  set text(font: 字体.宋体, size: 字号.小四)
  set par(first-line-indent: (amount: 2em, all: true), justify: true)
  it
}
