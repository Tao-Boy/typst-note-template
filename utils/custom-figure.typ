#import "style.typ": 字体, 字号
#import "@preview/i-figured:0.2.4"
#let custom-figure(it) = {
  show figure: i-figured.show-figure.with(level: 2, numbering: "1.1.1")
  show figure.where(kind: image): set figure(supplement: [图])
  show figure.where(kind: table): set figure(supplement: [表])
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.caption: set text(font: 字体.楷体, size: 字号.五号)
  set figure.caption(separator: "  ")
  it
}
