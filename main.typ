#import "template.typ": *

#show: thesis.with(
  title: [Title ],
  subtitle: [Subtitle],
  author: [Author],
  dept: [My Department],
  year: [Year],
  month: [Month],
  day: [Day],
  committee: (
    (
      name: "Committee Member 1",
      title: "Ph.D.",
    ),
    (
      name: "Committee Member 2",
      title: "Ph.D.",
    ),
    (
      name: "Committee Member 3",
      title: "Ph.D.",
    ),
    (
      name: "Committee Member 4",
      title: "Ph.D.",
    ),
  ),
  dedication: [[Dedication/thanks to. This page is optional.]],
  acknowledgement: lorem(100),
  abstract: lorem(100),
  keywords: [#lorem(20)]
)

= Introduction

#lorem(100)

== Background

#lorem(100)

#align(center)[
  #figure(emoji.explosion, caption: [Kapow!])
]

#lorem(200)

#iuquote([#lorem(50)])

=== More History

$ delta S &= delta integral cal(L) dif t = 0 $

Look in for more info.

#align(center)[
  #figure(
    table(
      columns: 3,
      table.header([], [*Thing 1*], [*Thing 2*]),
      [Experiment 1], [1.0], [2.0],
      [Experiment 2], [3.0], [4.0],
    ),
    caption: [My table],
  )
]

= Methods

== Insert pictures, figures and tables

To insert pictures, select the style sheet ORU\_Insert picture. By doing
so your picture will be placed correctly in the document. Do not forget
to add alternative text (“Alt Text\")!

#figure(image("media/image3.png", height: 1.87361in, width: 4.48681in),
  caption: [
    #strong[Figure 1.] To add an image or figure description
    \[bild/figurtext\] to your picture, right-click the picture and
    select “Insert caption”. Apply ORU\_Description and make “Figure X”
    bold.
  ]
)

#figure(image("media/image4.png", height: 2.44792in, width: 3.375in),
  caption: [
    #strong[Figure 2.] If you use the function “Insert caption”
    \[\"Infoga beskrivning\"\] the numbering of the figure will adjust
    automatically.
  ]
)

=== Use the tool for tables and charts

Use the Table tool and Chart tool \[diagramverktyget\] in Word to insert
tables and charts \[diagram\]. The tools, if used correctly, support
accessibility.

Table 1#strong[.] Table descriptions are normally inserted above the
table.

#figure(
  align(center)[#table(
    columns: (26.62%, 24.45%, 24.45%, 24.47%),
    align: (auto,auto,auto,auto,),
    table.header([ORU\_Table\_ \
      Heading], [ORU\_Table\_ \
      Heading], [ORU\_Table\_ \
      Heading], [ORU\_Table\_ \
      Heading],),
    table.hline(),
    [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content],
    [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content],
    [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content],
    [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content], [ORU\_Table\_ \
    content],
  )]
  , kind: table
  )

If you want body text to continue directly after your table, you should
add some extra space by selecting the text and change the Spacing
settings for the first paragraph to for example 12 pt before.

#figure(image("media/image5.png", height: 3.67708in, width: 2.95833in),
  caption: [
    #strong[Figure 3.] Shows how to adjust spacing in the paragraph
    settings.
  ]
)

Charts \[diagram\] as well as figures and pictures must have an
alternative text. Right-click the chart \[diagram\] or figure to add or
edit your alternative text (“Alt Text”). It is also important to use
colours or patterns with sufficient contrast to other elements. Print
your diagram or figure in black and white to check that the contrast
ratio is high enough.

#figure(image("media/image6.png", height: 3.12885in, width: 4.54167in),
  caption: [
    #strong[Figure 4.];You should check with your supervisor whether the
    term Diagram or Figure is used in your discipline. Do not forget to
    add alternative text!
  ]
)

#strong[Figure 5];. Please choose monochrome colors.

#figure(image("media/image7.png", height: 3.12885in, width: 4.54167in),
  caption: [
    #strong[Figure 4.];You should check with your supervisor whether the
    term Diagram or Figure is used in your discipline. Do not forget to
    add alternative text!
  ]
)


= References without numbers
<references-without-numbers>
Bryman, Alan. (2008). #emph[Social research methods];. 3. ed. Oxford:
Oxford University Press.

Goworek, H., Fisher, T., Cooper, T., Woodward, S. & Hiller, A. (2012).
The sustainable clothing market: an evaluation of potential strategies
for UK retailers. #emph[International Journal of Retail & Distribution
Management];, 40(12), 935--955. doi:10.1108/09590551211274937

Lorig K. (2000). #emph[Patient education: A practical approach];. 3 ed.
Thousand Oaks, Calif: Sage Publications.

= References with numbers
<references-with-numbers>
+ Bryman, Alan. #emph[Social research methods];. 3. ed. Oxford: Oxford
  University Press; 2008.

+ Goworek, H., Fisher, T., Cooper, T., Woodward, S. & Hiller, A. The
  sustainable clothing market: an evaluation of potential strategies for
  UK retailers. #emph[International Journal of Retail & Distribution
  Management];. 2012; 40(12): 935--955. doi:10.1108/09590551211274937

+ Lorig K. #emph[Patient education: A practical approach];. 3 ed.
  Thousand Oaks, Calif: Sage Publications; 2000.
