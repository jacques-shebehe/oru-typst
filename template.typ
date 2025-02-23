#let thesis(
  title: none,
  subtitle: none,
  author: none,
  dept: none,
  year: none,
  month: none,
  day: none,
  committee: (),
  dedication: none,
  acknowledgement: [],
  abstract: [],
  keywords: [],
  doc,
) = {
  set text(size: 0.9em, font: "Sabon Next LT") //11pt
  set par(leading: 0.7em, first-line-indent: 0em, justify: false, spacing: 1.0em)
  set page(
  width: 15.7cm,
  height: 22.3cm,
  margin: (
    top: 2.5cm,
    bottom: 2.0cm,
    inside: 3.0cm,
    outside: 2.0cm,
  ),
    footer: context {
 //     set align(center)
      if counter(page).get().at(0) != 1 {
        []
      } else {
        []
      }
    },
  )
  show math.equation: it => {
    if it.has("label") {
      math.equation(
        block: true,
        numbering: it1 => (
          context {
            let count = counter(heading.where(level: 1)).get()
            numbering("(1.1)", count.at(0), it1)
          }
        ),
        it,
      )
    } else {
      it
    }
  }
  show ref: it => {
    let el = it.element
    if el != none and el.func() == math.equation {
      link(
        el.location(),
        [Eq.~#context {
            let count = counter(heading.where(level: 1)).get()
            numbering("(1.1)", count.at(0), counter(math.equation).at(el.location()).at(0) + 1)
          }],
      )
    } else {
      it
    }
  }

  grid(
 //   fill: yellow,
    columns: (1fr),
    row-gutter: 1.5em,
    rows: (auto, auto, auto, auto, auto),
    v(0.5em),
    align(center + horizon)[Örebro University in [text]],
    v(0.5em),
    align(center + horizon)[#image(width: 70pt, "oru-logo.svg")],
    v(0.5em),
    align(center + horizon)[#author],

    align(center, text(16pt, font: "Trade Gothic Next HvyCd")[#title]),

    align(center, text(12pt, font: "Trade Gothic Next HvyCd")[#subtitle]),
    )

  pagebreak()

//   align(center)[Accepted by the Graduate Faculty, Indiana University, in partial fulfillment of the requirements for the degree of Doctor of Philosophy.]

//   v(2em)

//   [Doctoral Committee]

//   v(3em)

//   for member in committee {
//     [
//       #align(right)[#line(length: 50%, stroke: 0.5pt)]
//       #v(-0.75em)
//       #align(right)[#member.name, #member.title]
//       #v(3em)
//     ]
//   }

//   v(1fr)

//   align(left)[#day #month #year]

//   pagebreak()

//   align(center + horizon)[Copyright \u{00a9} #year \ #author]

//   pagebreak()

  grid(
//  fill: yellow,
  columns: (1fr),
   row-gutter: 0.5em,
    rows: (1fr, auto, auto, auto, auto),
    v(1.0em),
   // {align(left + horizon)[Örebro University in [text]]}\
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    *Author:* #author]),
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    *Title:* #title, #subtitle
    ]),
    v(0.4em),
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    *Publisher:* Örebro University, Year
    ]),
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    www.oru.se/publikationer
    ]),
    v(0.4em),
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    *Print:* Örebro University, Repro MM/YYYY (remove if not relevant)]),
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    *Cover image:* (remove if not relevant)
    ]),
    v(0.4em),
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    *ISBN:* 978-91- XXXX-XXX-X (print)]),
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    *Title:* #title, #subtitle
    ]),
    align(left + horizon, text(0.8em, font: "Trade Gothic Next")[
    *ISBN:* 978-91- XXXX-XXX-X (pdf)
    ])


    // align(center + horizon)[#image(width: 70pt, "oru-logo.svg")],
    // v(0.5em),
    // align(center + horizon)[#author],

    // align(center, text(16pt, font: "Trade Gothic Next HvyCd")[#title]),

    // align(center, text(12pt, font: "Trade Gothic Next HvyCd")[#subtitle]),
    )

    pagebreak()

  if dedication != none {
    align(left + top)[#dedication]
    pagebreak()
  }

//   text(16pt)[#align(center)[
//       *Acknowlegements*
//     ]]

//   [#acknowledgement]

//   pagebreak()

//  align(center)[#author]


  align(left, text(16pt, font: "Trade Gothic Next HvyCd")[Abstract])

 grid(
    columns: (1fr),
    rows: (auto, auto),
    row-gutter: 0.5em,
  text(0.9em)[#abstract],     //11pt
  text(0.9em)[Keywords: #keywords]
 )
  pagebreak()

  show outline: set par(leading: 0.75em)

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    it
  }

  outline(indent: auto)

  pagebreak()

  outline(
    target: figure.where(kind: image),
    indent: auto,
    title: [List of Figures],
  )

  pagebreak()

  outline(
    target: figure.where(kind: table),
    indent: auto,
    title: [List of Tables],
  )

  pagebreak()

  set page(
    numbering: "1",
    footer: context [
      #set align(center)
      #counter(page).display()
    ],
  )
  set heading(numbering: "1.1.1")
  show heading: it => [
    #v(12pt)
    #it
    #v(12pt)
  ]
  show heading.where(level: 1): it => {
    counter(math.equation).update(0)
    if it.body == [Bibliography] {
      it
    } else {
      pagebreak(weak: true)
      align(center)[Chapter
        #counter(heading).display(it.numbering):
        #it.body
        #v(12pt)
      ]
    }
  }
  show figure.caption: it => {
    set par(leading: 0.65em)
    set text(size: 11pt)
    emph(it)
  }

  doc
}

#let iuquote(body) = {
  set par(leading: 0.65em)
  pad(x: 30pt, y: 15pt, body)
}

Author: Author
Title: Thesis Title, Subtitle
