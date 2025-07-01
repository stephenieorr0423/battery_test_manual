// #import "@preview/min-manual:0.1.0": manual, arg, univ, pip, crate, pkg, extract
#import "template.typ": manual, arg, univ, pip, crate, pkg, extract

#show: manual.with(
  title: "Vacuum Test",
  type_of_manual: "User Manual",
  description: "Revision 1                     13 June 2025",
  // authors: "Mitchell Bailey <@mitbailey>",
  package: "Name of Software",
  license: "",
)

#let note(where, body) = place(
  center + where,
  float: true,
  clearance: 6pt,
  body,
)

#show raw: set text(font: "JetBrains Mono")
#show raw.where(block:false): it=>box(
 	fill: luma(210),
  	inset: (x: 3pt, y: 0pt),
  	outset: (y: 3pt),
  	radius: 2pt,
    text(fill: black,ligatures: true,[#it])
 )

#note(bottom)[
// #image("../myimg.png")
  #set align(left)
  #set par(leading: 1em, justify: true, first-line-indent: 0em, spacing: 0.5em)
**

*PHONE:* 978 412 2248

*EMAIL:* stephenie_orr   student.uml.edu

*WEB:* LoCSST
]


#let my_block(back_color, frame_color, title_color, content_color, title, content) = {
  block(radius: 4pt, stroke: back_color + 2pt)[
    #block(width: 100%,fill: back_color, inset: (x: 20pt, y: 5pt), below: 0pt)[#text(title_color)[#title]]
    #block(width: 100%, fill: frame_color, inset: (x: 20pt, y: 10pt))[#text(content_color)[#content]]
  ]
}

#pagebreak()


#outline()

#pagebreak()

#set heading(numbering: "1.")

= Introduction
== When the test will take place
This test will be performed once after the the first Open Circuit Voltage Test and Charge Cycle Test.
== Importance
Vibration tests are performed to determine a product's ability to withstand vibrational forces and to identify potential weakness.
= Equipment
- Vibration Shaker : Generates the vibrations
- Amplifier : Provides power to the shaker to create the desired vibration profile
- Vibration Controller : Generates vibration profiles and controlling the shaker
- Sensors (Accelerometers) : Measure the vibration acceleration of the battery or the test object
- Fixtures : Used to securely mount the battery on the vibration shaker or table

= Procedure
== Set up

== Parameters

== Vibration Test

== Monitor and Observation

= Result

