// #import "@preview/min-manual:0.1.0": manual, arg, univ, pip, crate, pkg, extract
#import "template.typ": manual, arg, univ, pip, crate, pkg, extract

#show: manual.with(
  title: "Open Circuit Voltage Test",
  type_of_manual: "User Manual",
  description: "Revision 1                     12 June 2025",
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
== When the Test Will Take place
The Open Circuit Voltage (OCV) Measurement will be done three times. Once before the vibration test, once between the two tests (after vibration, before vacuum), and once after the vacuum test.
== What is an Open Circuit Voltage Test
An open circuit voltage test measures the voltage of a power source when it's not connected to a load. It is a way to assess the condition of the source by observing its potentail difference under ideal conditions with no current being drawn. 
== Importance
You need to perform this test to measure the voltage of a battery or other electrical source when no current is flowing. The open circuit voltage is an imporant aspect to know when testing batteries. It allows the tester to assess the batteries health for potential use. Open Circuit Voltage also allows for us to understand how much energy is remaining in the battery after a certain amount of charges which helps optimize performance, safety, and lifespan. 
= Equipment
#text(16pt, [- Multimeter]) 
#image("pngtree-cartoon-multimeter-electrical-equipment-png-image_5633205.png", width: 180pt)
- This tool is used to measure voltage before and after the test.
#text("--", fill: white)

#text("--", fill: white)
  
#text("--", fill: white)

#text("--", fill: white)

#text(16pt, [- Battery])
 - Renata ICP543759PMT
#image("download.jpg", width: 180pt)
= Procedure
== Safety
When testing Open Circuit Voltage the safety procedure, personal protective equipment (PPE) is recommended for this test.  
== Set up
For most accurate readings, the batteries must remain idle (no charging, no discharging) for at least 8 hours, preferably 24. Make sure there is nothing connected to the negative (black) and positive (red) terminals. Set the multimeter to DC Voltage. 
== Open Circuit Voltage Testing
After setting the multimeter dial to DC Voltage, which is usually marked with a "V" and a straight line with a dashed line beneath it. Then, you take the positive lead of the multimeter and connect it to the positive lead of the battery (red). Then take the negative lead of the multimeter and connect it to the negative lead of the battery (black). This will measure the correct polarity of the voltage. It is important that the two leads be connected on their correct terminal because if they do not, the reading would be negative which can be confusing and misleading. Read the voltage displayed on the screen of the multimeter. That number is your Open Circuit Voltage asnd represents the voltage of the battery without any load attached.   
The image that is figure 1, is a better representation. Disregard the white lead, it is a temperature sensor and will not be used with the multimeter.
#image("multimeter.to.renata.png")
Figure 1 
= Result
The result should be read on the multimeter and should be the maximum potential difference between the positive and negative terminals of a battery when no load is connected. If the battery was left idle, had no charge/load connected to it, and was read on DC voltage then you should have the correct Open Circuit Voltage. 
