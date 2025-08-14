// #import "@preview/min-manual:0.1.0": manual, arg, univ, pip, crate, pkg, extract
#import "template.typ": manual, arg, univ, pip, crate, pkg, extract

#show: manual.with(
  title: "Bake Out Test",
  type_of_manual: "User Manual",
  description: "Revision 2                     7 July 2025",
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

= What is a Bakeout Test
A bakeout test involves heating a system in a controlled vacuum or inert environment to clear out any contaiminants. These contaminants could include water vapor, solvents, and other outgassed materials.

= What is the purpose of a Bakeout Test
The purpose of this test is to prevent these volatile substances from releasing later.

= Procedure
The bakeout procedure consists of heating the flight hardware in a clean, certified vacuum
system (< 1 x 10-5 Torr pressure) at the highest temperature permitted without endangering the
hardware but at least 10 degree Celsius ( C ) above its in-flight operating extreme, assuming this
temperature does not exceed the maximum exposure temperature. During this bakeout the
outgassing level is monitored using a temperature controlled quartz crystal microbalance
(TQCM) and a temperature controlled optical witness sample (OWS). The TQCM and the OWS
are held at a minimum of 10 degrees C below the on-orbit temperature of the contamination
sensitive element (such as an optical mirror, lens, detector, solar cell, or thermal control surface). 
= Equipment
Include measurements and recording of chamber pressure, temperatures (hardware, TQCM,
OWS), and TQCM frequency output. During atmospheric operations include measurements of
humidity, particulate fallout, air particulate levels and the total hydrocarbon levels. 
== What is a TQCM
The TQCM's recommended are temperature controlled quartz crystal microbalances, which sense mass deposition with a change in resonance frequency from a matched set of quartz crystals (cut for minimum temperature change at 0 degrees C, AT cut). The minimum sensitivity level required is 1.56 x 10^-9 grams/cm^2 - Hz)  In order to achieve this sensitivity level and long term stability, thermally matched 15-MHz crystal sets are utilized. Precision temperature control is achieved using a Peltier (thermoelectric) cooler and monitoring thermistor built into the sensor head for active temperature control. In addition, the whole sensor head must be mounted on a temperature controlled heat sink. This combination provides for both the required sensitivity and long term stability for mass deposition rate measurements. 