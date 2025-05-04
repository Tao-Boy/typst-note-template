#import "../utils/style.typ": 字号, 字体
#let cover_page(
  cover_image: "",
  title: "",
  author: "",
  date: datetime.today(),
) = {
  // 临时设置页边距为零
  set align(center)
  set page(
    paper: "a4",
    margin: 0pt,
  )
  stack(
    dir: ttb,
    image(
      cover_image,
      width: 100%,
      height: 55%,
    ),
    rect(width: 100%, height: 5%, fill: orange),
  )
  v(2em)
  text(font: 字体.宋体, size: 字号.一号, weight: "bold", tracking: .5em, title)
  set text(font: 字体.楷体, size: 字号.小三, fill: gray.darken(30%))
  place(
    dx: 70%,
    dy: 10%,
    grid(
      rows: (1em, 1em),
      row-gutter: 10pt,
      [作者: #author],
      [日期: #date.display("[year]年[month]月[day]日")]
    ),
  )

  pagebreak()
}
