#import "@preview/i-figured:0.2.4"
#import "../utils/style.typ": 字号
#let math-equation(it) = {
  show math.equation.where(block: false): it => math.display(it)
  show math.equation.where(block: true): i-figured.show-equation.with(
    numbering: "(1.1.1)",
    level: 2,
    only-labeled: true,
  )
  set math.equation(supplement: "公式")

  show math.equation: set text(size: 字号.小四)

  set math.cases(gap: 1em)
  show math.cases: it => {
    math.mat(gap: it.gap, delim: (it.delim.at(0), none), ..it.children.map(x => (math.display(x),)), align: left)
  }
  it
}
