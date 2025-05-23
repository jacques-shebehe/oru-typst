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
  list-of-papers: [],

  doc,
) = {
  set text(size: 0.9em, font: "Sabon Next LT") //11pt
  set par(
    leading: 1.125em, //exactly 13.5pt
    first-line-indent: 0em,
    justify: false,
    spacing: 0.73em, //exactly 8.75pt
  )
  let page-nr = [#context here().page()]
  let is-odd-page() = calc.rem(counter(page).get().first(), 2) == 1
  set page(
    width: 157mm,
    height: 223mm,
    margin: (
      top: 2.5cm,
      bottom: 2.0cm,
      inside: 3.0cm,
      outside: 2.0cm
    ),
      // footer: context {
      //   set align(center)
      //   if counter(page).get().at(0) != 1 {
      //     [#counter(page).display("i")]
      //   } else {
      //     []
      //   }
      // },
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


  align(left,  text(size:16pt, font: "Trade Gothic Next HvyCd")[Abstract])

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

show outline.entry.where(level: 1): it => {
  text(16pt, font: "Trade Gothic Next HvyCd")[
     #{it}
  ]
}

show outline.entry.where(level: 2): it => {
  text(13pt, font: "Trade Gothic Next HvyCd")[#{it}]
}

show outline.entry.where(level: 3): it => {
  text(13pt, font: "Trade Gothic Next HvyCd", fill: rgb(101, 101, 108))[#{it}]
}

show outline.entry.where(level: 4): it => {
  text(12pt, font: "Trade Gothic Next")[#{it}]
}

  outline(
    title:  align(left, text(16pt, font: "Trade Gothic Next HvyCd")[Table of contents]),
    indent: 0.85em
    )


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

  if list-of-papers != none {
    align(left, text(size:16pt, font: "Trade Gothic Next HvyCd",
    heading(level:1, outlined: true, numbering: none)[List of papers]
      )
    )
    //v(8pt)
    {
      set enum(numbering: "I.", body-indent: 1cm)
      set list(spacing: 0.5em)
      set par(
      //  leading: 1.227em,// 13.5pt line height for base 11pt font 
        spacing: 1em
      )    //  v(8pt)
      list-of-papers
    }
  }

  pagebreak()

  set page(
    numbering: "1",
    footer:
      context {
      if is-odd-page() [
        #set text(
          fill: red,
          font: "Trade Gothic Next",
          size: 8pt
        )
        #set align(right)
          #grid(
            columns: (1fr, auto),
            column-gutter: 1cm,
            [#title], [#counter(page).display("1")]
          )
      ]
      else [
        #set text(
          font: "Trade Gothic Next",
          size: 8pt
        )
        #set align(left)
          #grid(
            columns: (auto, 1fr),
            column-gutter: 1cm,
            [#counter(page).display("1")], [#author]
          )
      ]
    }
  )

  set heading(numbering: "1.1.1.1", bookmarked: auto)

  // show heading.where(level: 1): it => {
  //   counter(math.equation).update(0)
  //   if it.body == [Bibliography] {
  //     it
  //   } else {
  //     pagebreak(weak: true)
  //     align(left, text(16pt, font: "Trade Gothic Next HvyCd")[
  //       #counter(heading).display(it.numbering) #it.body]
  //     )
  //   }
  // }

  show heading.where(level: 1): it =>  {
    pagebreak(weak: true)
    set text(16pt, font: "Trade Gothic Next HvyCd")
    set par(
      leading: 1.667em,    // 20pt 
      spacing: 0.667em,    // After 8pt
    )
    align(left, text(16pt, font: "Trade Gothic Next HvyCd")[
      #counter(heading).display(it.numbering) #it.body]
    )
  }

  show heading.where(level: 2): it => {
    set text(13pt, font: "Trade Gothic Next HvyCd")   
    set par(
      leading: 1.25em,     // 15pt 
      spacing: 0.333em,    // After 4pt 
    )
    block(above: 1.167em) // Before 14pt 
    align(left)[
      #counter(heading).display(it.numbering) #it.body
    ]
  }


  show heading.where(level: 3): it => {
    set text(
      size: 13pt, 
      font: "Trade Gothic Next HvyCd", 
      fill: rgb(101, 101, 108)
    )
    set par(
      leading: 1.25em,     // 15pt 
      spacing: 0.333em,    // After 4pt 
    )
    block(above: 1.167em)       // Before 14pt 
    align(left)[
      #counter(heading).display(it.numbering) #it.body
    ]    
  }

  show heading.where(level: 4): it => {
    set text(12pt, font: "Trade Gothic Next")   
    set par(
      leading: 1.25em,     // 15pt 
      spacing: 0.333em,    // After 4pt 
    )
    block(above: 1.167em)       // Before 14pt 
    align(left)[
      #counter(heading).display(it.numbering) #it.body
      ]
  }


//show figure.caption: it => context {
//  set align(left)
//  set par(
//    leading: 0.917em, // line spacing: 11pt
//  )
//  v(0.5em) // before: 6pt 
//  text(
//    font: "Trade Gothic Next",
//    size: 0.8em, // 9.5pt
//  )[
//    #strong[#it.supplement #it.counter.display().] #it.body
//  ]
//  v(0.5em) // after: 24pt
//}
show figure: set align(left)

show figure.caption: it => context {
  set par(leading: 0.917em)    // 11pt line spacing
  v(0.5em)                     // space before caption
  text(
    font: "Trade Gothic Next",
    size: 0.8em,               // 9.5pt
  )[
    #strong[#it.supplement #it.counter.display().] #it.body
  ]
  v(2em)                       // 24pt space after caption
}


  doc
}

#let iuquote(body) = {
  set par(leading: 0.65em)
  pad(x: 30pt, y: 15pt, body)
}

#show bibliography: set heading(numbering: "1")

Author: Author
Title: Thesis Title, Subtitle