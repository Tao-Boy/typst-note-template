#import "style.typ": 字体, 字号
#let header(it, title: "") = {
  counter(page).update(1)
  set page(
    header: context {
      set text(font: 字体.楷体, size: 14pt, fill: blue)
      let page_num = counter(page).get().first()
      if calc.even(page_num) {
        box(stroke: (bottom: 1pt + black), width: 100%, inset: 3pt)[ #title #h(1fr) #str(page_num) ]
      } else {
        box(stroke: (bottom: 1pt + black), width: 100%, inset: 3pt)[#str(page_num) #h(1fr) #title]
      }
    },
  )
  it
}
