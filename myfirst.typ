= Introduction
== Level 2

This is my _first_ *typst*.

```typst
#set page(
  size: 157mm x 223mm,
  margin: ( // inner/outer for dynapic page when mirred pages. left/right for fixed margins.
    top: 25mm,
    bottom: 20mm,
    inner: 30mm, // Inner margin (binding side)
    outer: 20mm  // Outer margin
  ),
  mirrored: true // Enable alternating margins
)

#set text(
  align: justify,       // Justify the text for a polished look
  line-height: 1.5em    // Line spacing
)
```


```typst
#set page(
  size: 6.18in x 8.78in, // Page size in inches (157mm x 223mm converted to inches)
    margin: (
      top: 0.71in, // Top margin
      bottom: 0.98, // Bottom margin
      inner: 0.98in, // Inner margin - left for binding
      outer: 0.71in  // Outer - right margin
  ),
  mirrored: true // Alternating margins for double-sided printing,
  footer: context {
    if counter(page).get().first() > 1 [ //conditional to remove footer on first page
    Thesis Title
    #h(1fr)
    #counter(page).display("1")
  ]
})

#set text(
  align: justify,       // Justify text alignment
  line-height: 1.5em    // Line spacing
)
```


== Different footer on odd and even pages.

```typst
#set page(
  size: 157mm x 223mm,
  margin: (
    top: 25mm,
    bottom: 20mm,
    inner: 30mm,
    outer: 20mm
  ),
  mirrored: true
)

#show footer(
  left: none,
  center: none,
  right: none,
  content: {
    if counter(page).get().first() > 1 [ //conditional to remove footer on first page
      #if(page() % 2 == 0, [ //conditional footer for odd/even page.
        Even page footer
        #h(1fr)
        #counter(page).display("1")
      ], [
        Odd page footer
        #h(1fr)
        #counter(page).display("1")
      ])
    ]
  }
)

```
