#import "template.typ": *

#show: thesis.with(
  title: [Thesis Title],
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
  abstract: [
    This is fictitious abstract regarding the scientific literature on the association between obesity and type 2 diabetes mellitus. It was reported that our high BMI was associated with an increased risk of T2DM. This association was graded with higher BMI associated with a higher risk of T2DM. Also, among people with BMI ≥ 30, the risk of T2DM was greater before than after age 50. What are the mechanisms explaining these associations? Please add references of peer.

    Regarding the scientific literature on the association between obesity and type 2 diabetes millets. It was reported that our high BMI was associated with an increased risk of T2DM. This association was graded with higher BMI associated with a higher risk of T2DM. Also, among people with BMI ≥ 30, the risk of T2DM was greater before than after age 50. What are the mechanisms explaining these associations? Please add references of peer.

    Regarding the scientific literature on the association between obesity and type 2 diabetes mellites. It was reported that our high BMI was associated with an increased risk of T2DM. This association was graded with higher BMI associated with a higher risk of T2DM. Also, among people with BMI ≥ 30, the risk of T2DM was greater before than after age 50. What are the mechanisms explaining these associations? Please add references of peer.

    The mechanisms explaining these associations? Please add refer regarding the scientific literature on the association between obesity and type 2 diabetes mellitus. It was reported that our high BMI. The mechanisms explaining these associations? Please add refer regarding the scientific literature on the association between obesity and type 2 diabetes mellitus. It was reported that our high BMI.
  ],
  keywords: [
   Health literacy, Chronic diseases, Diabetes, Obesity, Hypertension, Cardiovascular disease, Diabetes mellitus, Obesity, Cardiovascular disease, Diabetes mellitus, Diabetes mellitus, Obesity, Card. Is even last line.
  ],
  list-of-papers: [
    This thesis is based on the following studies, referred to in the text by their Roman numerals.

    + Use the style sheet ORU_List of Papers. If not needed, the page should be deleted.

    + LastName, FirstName, 2021. “Title of article. And possible subtitle”. Name of journal, 1:1, 90–95 [volume, number and pages]. 

    + Article/Study 3

    Reprints were made with permission from the respective publishers.
  ]
)

= [ORU_H1_Heading 1]

Start to write here. The template will automatically use ORU_Body text unless you make changes manually. Do not add extra space between headings and body text or between paragraphs unless you have a specific reason to do so. If so, you should add space in the paragraph settings, otherwise it will complicate the per-ception of the text for those who use different kinds of accessibility aids.

When you want to start a new paragraph, just press Enter.


== [ORU_H2_Heading 2]

ORU_Body text will always follow the style sheets for headings (ORU_H1–ORU_H5). 
Citat/quotation. Use the stylesheet ORU_Quotation for all longer quotations and an indent and smaller font will automatically be used [@Zomer-2016; @Arbaje-2008].

=== [ORU_H3_Heading 3]
Replace this text.

==== [ORU_H4_Heading 4]
Replace this text.

= ORU_H1_Heading #1

If you need numbered headings, please use the style sheets ORU_H1_Heading #1–ORU_H4_Heading #4, see below. Otherwise delete this page.
When you want to start a new paragraph, just press Enter.

== ORU_H2_Heading #2
ORU_Body text will always follow the style sheets for headings (ORU_H1_Heading #1–ORU_H4_Heading #4).

=== ORU_H3_Heading #3
ORU_Body text will always follow the style sheets for headings (ORU_H1_Heading #1–ORU_H4_Heading #4).

==== ORU_H4_Heading #4
ORU_Body text will always follow the style sheets for headings (ORU_H1_Heading #1–ORU_H4_Heading #4).

= Use the built-in format lists

By using the built-in format lists you ensure that the structure is correct also for those who use different kinds of accessibility aids. 

== Letter list

a. ORU_Letter list – Et vel mossus moluptatio. Rum non re nam et di dipsam quia ditibus earum nonem niendebis dolorepro. 
b. Et re alist, volorent evenduntion pora illam, sequod quat escil ilicatendis nem expersp ercidi tem. 

== Bulleted list

- ORU_Bullet list - Et vel mossus moluptatio. Rum non re nam et di dipsam quia ditibus earum nonem niendebis dolorepro.
- Et re alist, volorent evenduntion pora illam, sequod quat escil ilicatendis nem expersp ercidi tem. 

== Numbered list

1. ORU_Numbered list – Et vel mossus moluptatio. Rum non re nam et di dipsam quia ditibus earum nonem niendebis dolore-pro. 
2. Et re alist, volorent evenduntion pora illam, sequod quat escil ilicatendis nem expersp ercidi tem.

When you want body text to apply again, you must select the style sheet ORU_Body text.

= Insert pictures, figures and tables

To insert pictures, select the style sheet ORU_Insert picture. By do-ing so your picture will be placed correctly in the document. Do not forget to add alternative text (“Alt Text")!

#figure(
  image("media/image3.png", height: 4.73cm, width: 11.4cm),
  caption: [
    To add an image or figure description
    \[bild/figurtext\] to your picture, right-click the picture and
    select “Insert caption”. Apply ORU\_Description and make “Figure X”
    bold.
  ]
)

#figure(image("media/image4.png", height: 6.22cm, width: 8.57cm),
  caption: [
    If you use the function “Insert caption”
    \[\"Infoga beskrivning\"\] the numbering of the figure will adjust
    automatically.
  ]
)

== Use the tool for tables and charts

Use the Table tool and Chart tool \[diagramverktyget\] in Word to insert tables and charts \[diagram\]. The tools, if used correctly, support accessibility.

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

If you want body text to continue directly after your table, you should add some extra space by selecting the text and change the Spacing settings for the first paragraph to for example 12 pt before.

#figure(image("media/image5.png", height: 3.67708in, width: 2.95833in),
  caption: [
    Shows how to adjust spacing in the paragraph
    settings.
  ]
)

Charts [diagram] as well as figures and pictures must have an alter-native text. Right-click the chart [diagram] or figure to add or edit your alternative text (“Alt Text”). It is also important to use colours or patterns with sufficient contrast to other elements. Print your diagram or figure in black and white to check that the contrast ratio is high enough.

#figure(image("media/image6.png", height: 3.12885in, width: 4.54167in),
  caption: [
    You should check with your supervisor whether the
    term Diagram or Figure is used in your discipline. Do not forget to add alternative text!

    Please choose monochrome colors.
  ]
)


#figure(image("media/image7.png", height: 3.12885in, width: 4.54167in),
  caption: [
    You should check with your supervisor whether the
    term Diagram or Figure is used in your discipline. Do not forget to add alternative text!
  ]
)

= References without numbers
<references-without-numbers>
Use a .csl file numbered (e.g. vancouver.csl) or unnumbered (e.g. vancouver-author-date.csl) style.

//#bibliography(
//  "reference.bib",
//  style: "vancouver-author-date.csl" ,
//  title: none
//),

Below are an example of numbered references.

= References with numbers
<references-with-numbers>

#bibliography(
  "reference.bib",
  style: "vancouver.csl" , // for unnumbered reference, use a .csl file numbered unnumbered style (e.g. vancouver-author-date.csl).
  title: none
)