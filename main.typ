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