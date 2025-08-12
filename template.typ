//set heading functions
#let TOC_Heading(content, spacing: 18pt) = [
  #text(16pt, font: "Trade Gothic Next HvyCd")[#content]
  #v(18pt)
]
#let ORU_H1_Heading_1(content) = text(16pt, font: "Trade Gothic Next HvyCd")[#content]
#let ORU_H2_Heading_2(content) = text(13pt, font: "Trade Gothic Next HvyCd")[#content]
#let ORU_H3_Heading_3(content) = text(13pt, font: "Trade Gothic Next HvyCd", fill: rgb(101, 101, 108))[#content]
#let ORU_H4_Heading_4(content) = text(12pt, font: "Trade Gothic Next")[#content]

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
  // global settings
//How to achieve MS Word line spacing exactly 13.5pt (baseline-to-baseline in Typst)
//1. Set the font size to 11pt (as in your template).
//2. Set the top-edge and bottom-edge so that their sum is 0 (default is usually top-edge: 0.8em, bottom-edge: -0.2em).
//3. Set par.leading so that the total from baseline to baseline is 13.5pt.

set text(
  lang: "en", 
  font: "Sabon Next",
  size: 11pt, 
  weight: "regular", 
) 
set par(
  leading: 0.65em, //1.125em,      // Line spacing: 13.5pt
  first-line-indent: 0em, // Opt
  justify: false,
  spacing: 1.5em, //-- Spacing after: 8pt,
  )
set text(
  hyphenate: true,
  tracking: 0em, // -- set distance between letters in a word
)


  let page-nr = [#context here().page()]
  let is-odd-page() = calc.rem(counter(page).get().first(), 2) == 1
  set page(
    width: 157mm,
    height: 223mm,
    margin: (
      top: 1.8cm,      // Word's Top margin
      bottom: 2.5cm,   // Word's Bottom margin
      inside: 2.5cm,   // Word's Inside margin (binding side)
      outside: 1.8cm,  // Word's Outside margin
    )
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
  )
    pagebreak()

  // Abstract
 // align(left, TOC_Heading([Abstract]))

//v(-2.55em)
// Abstract
// Position grid to end at exactly 18cm from page top
// Abstract
// Position grid to end at exactly 18cm from page top
{
  set page(
    header-ascent: 1.25cm,  // Header distance from edge
    footer-descent: 0.6cm,  // Footer distance from edge
    header: none,           // No header content
    footer: none,           // No footer content
  )
  
  // Abstract
  place(
    top + left,
    dy: 0cm,  // Start immediately after previous content
    grid(
      columns: (11.4cm),
      rows: (0.79cm, 16.05cm, 2.46cm),  // Specific heights for each row
      row-gutter: 0em,
      align: left,
      stroke: 0.5pt,
      
      // Row 1: Abstract heading (0.79cm height)
      //align(left + top)[#text(16pt, font: "Trade Gothic Next HvyCd")[Abstract]],
      TOC_Heading([Abstract]),
      
      // Row 2: Abstract content (16.05cm height)
      pad(top: 18pt)[#abstract],
      
      // Row 3: Keywords (1.46cm height)
      [Keywords: #keywords]
    )
  )
//  pagebreak()
}

// Remove the v(16.2cm) since the grid now has fixed dimensions
//pagebreak()
 //grid(
    //columns: (1fr),
    //rows: (auto, auto),
    //row-gutter: 0.5em,
  //text(11pt)[#abstract],
  //v(0.5em),
  //text(11pt)[Keywords: #keywords]
 //)
  pagebreak()

  // Dedication
  if dedication != none {
    align(left + top)[#dedication]
    pagebreak()
  }

// Table of contents
show outline: set par(leading: 0.75em)

show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  ORU_H1_Heading_1(it)
}

show outline.entry.where(level: 2): it => {
  block(
    inset: (left: 1em),
    ORU_H2_Heading_2(it)
  )
}

show outline.entry.where(level: 3): it => {
  block(
    inset: (left: 1em),
    ORU_H3_Heading_3(it)
  )
}

show outline.entry.where(level: 4): it => {
  block(
    inset: (left: 1em),
    ORU_H4_Heading_4(it)
  )
}

outline(
  title: align(left, TOC_Heading([Table of contents])),
  indent: 0em,  // Disable automatic indentation
)


  pagebreak()


//  outline(
//    target: figure.where(kind: image),
//    indent: auto,
//    title:  align(left, text(16pt, font: "Trade Gothic Next HvyCd")[List of Figures]),
//  )
//
//  pagebreak()
//
//  outline(
//    target: figure.where(kind: table),
//    indent: auto,
//    title: [List of Tables],
//  )
//
//  pagebreak()

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

show heading.where(level: 1): it => {
  if it.body == [List of papers] {
    set par(leading: 1.25em, spacing: 0.333em)
    align(left)[#ORU_H1_Heading_1(it.body)]
  } else {
    pagebreak(weak: true)
    set par(leading: 1.25em, spacing: 0.333em)
    align(left)[#ORU_H1_Heading_1([#counter(heading).display(it.numbering) #it.body])]
  }
}

show heading.where(level: 2): it => {
  set par(leading: 1.25em, spacing: 0.333em)
  align(left)[#ORU_H2_Heading_2([#counter(heading).display(it.numbering) #it.body])]
}

show heading.where(level: 3): it => {
  set par(leading: 1.25em, spacing: 0.333em)
  align(left)[#ORU_H3_Heading_3([#counter(heading).display(it.numbering) #it.body])]
}

show heading.where(level: 4): it => {
  set par(leading: 1.25em, spacing: 0.333em)
  align(left)[#ORU_H4_Heading_4([#counter(heading).display(it.numbering) #it.body])]
}

  if list-of-papers != none {
    heading(level: 1, outlined: true, numbering: none)[List of papers]
    
    set enum(numbering: "I.", body-indent: 0.3cm, number-align: left)
    set par(
      leading: 0.75em,// 13.5pt line height for base 11pt font 
      spacing: 1.25em,
    )
    list-of-papers
  }

  pagebreak()

  set page(
    numbering: "1",
    footer:
      context {
        v(0.6cm - 0.7cm) //moves the footer content up so it sits 0.6-0.7 cm from the bottom edge, assuming your bottom margin is at least 0.6 cm
        if is-odd-page() [
          #set text(
            font: "Trade Gothic Next",
            size: 9pt
          )
          #set align(right)
            #grid(
              columns: (1fr, auto),
              rows: (2pt),
              column-gutter: 1cm,
              [#title], [#counter(page).display("1")]
            )
        ]
        else [
          #set text(
            font: "Trade Gothic Next",
            size: 9pt
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


show figure: set align(left)
show figure.caption: it => context {
  set par(leading: 0.917em)    // 11pt line spacing
//  v(0.3em)                     // space before caption
  text(
    font: "Trade Gothic Next",
    size: 0.8em,               // 9.5pt
  )[
    #strong[#it.supplement #it.counter.display().] #it.body
  ]
//  v(2em)                       // 24pt space after caption
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