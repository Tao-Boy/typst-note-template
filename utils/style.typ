#let 字号 = (
  初号: 42pt,
  小初: 36pt,
  一号: 26pt,
  小一: 24pt,
  二号: 22pt,
  小二: 18pt,
  三号: 16pt,
  小三: 15pt,
  四号: 14pt,
  中四: 13pt,
  小四: 12pt,
  五号: 10.5pt,
  小五: 9pt,
  六号: 7.5pt,
  小六: 6.5pt,
  七号: 5.5pt,
  小七: 5pt,
)

#let 字体 = (
  宋体: (
    (name: "Times New Roman", covers: "latin-in-cjk"),
    "Noto Serif SC",
  ),
  黑体: (
    (name: "Arial", covers: "latin-in-cjk"),
    "Noto Sans SC",
  ),
  // 楷体
  楷体: ((name: "Times New Roman", covers: "latin-in-cjk"), "FZKai-Z03S"),
  // 仿宋
  仿宋: ((name: "Times New Roman", covers: "latin-in-cjk"), "FZFangSong-Z02S"),
)
