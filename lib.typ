#import "pages/cover.typ": cover_page
#import "pages/outline.typ": chinese_outline
#import "layouts/doc.typ": doc
#import "@preview/physica:0.9.5": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "layouts/mainmatter.typ": (
  mainmatter,
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

#let documentclass(
  cover_image: "../cover.png",
  title: "Typst笔记模板",
  author: "你的名字",
  date: datetime.today(),
  it,
) = {
  let info = (
    cover_image: cover_image,
    title: title,
    author: author,
    date: date,
  )

  show: doc.with(info)
  cover_page(..info)
  chinese_outline()
  show: mainmatter.with(title: info.title)
  it
}
