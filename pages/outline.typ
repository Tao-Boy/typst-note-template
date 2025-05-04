#import "../utils/style.typ": 字体, 字号
#let chinese_outline(
  below: (25pt, 14pt),
  above: (25pt, 14pt),
  depth: 3,
  font_size: (字号.三号, 字号.小四),
) = {
  set align(center)
  set outline(indent: 2em)
  block(
    below: 4em,
    text(font: 字体.宋体, size: 字号.小一, weight: "bold", fill: blue, "目  录"),
  )
  show outline.entry: entry => block(
    width: 100%,
    below: below.at(entry.level - 1, default: below.last()),
    above: above.at(entry.level - 1, default: below.last()),
    link(
      entry.element.location(),
      entry.indented(
        none,
        {
          text(
            font: 字体.宋体,
            size: font_size.at(entry.level - 1, default: font_size.last()),
            weight: if entry.level == 1 { "bold" } else { "regular" },
            {
              if entry.prefix() not in (none, []) {
                entry.prefix()
                h(1em)
              }
              entry.body()
            },
          )
          box(
            width: 1fr,
            inset: (x: 0.25em),
            if entry.level > 1 {
              repeat([.], gap: 0.6em)
            } else {
              h(1fr)
            },
          )
          text(
            font: "Times New Roman",
            size: 14pt,
            fill: red.darken(40%),
            weight: if entry.level == 1 {
              "bold"
            } else {
              "regular"
            },
            entry.page(),
          )
        },
        gap: 0pt,
      ),
    ),
  )

  outline(title: none, depth: depth)
  pagebreak(weak: true, to: "even")
}
