#let doc(info, it) = {
  set page(
    paper: "a4",
    margin: (
      x: 3.18cm,
      y: 2.54cm,
    ),
  )
  set document(
    author: info.author,
    title: info.title,
  )

  it
}
