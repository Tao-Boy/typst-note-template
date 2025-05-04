#import "@preview/numbly:0.1.0": numbly
#import "style.typ": 字体, 字号
#let custom_heading(body) = {
  set heading(
    numbering: numbly(
      "第{1:一}章",
      "{1}.{2}",
      "{1}.{2}.{3}",
    ),
    supplement: "标题"
  )
  show heading: it => {
    if it.level == 1 {
      set align(center)
      set text(font: 字体.宋体, size: 字号.小二, fill: blue)
      pagebreak(weak: true)
      block(
        below: 3em,
        it,
      )
    } else {
      set text(font: 字体.宋体, size: 字号.中四, fill: blue)
      block(
        below: 2em,
        it,
      )
    }
  }
  body
}
