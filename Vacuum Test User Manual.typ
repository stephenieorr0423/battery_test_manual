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
This test will be performed once after the vibration test. 
== Importance
A vacuum test is performed to ensure the battery's integrity before using it and prevents potential safety hazards. 
= Equipment

#text(16pt, [- Vacuum Chamber])
A vacuum chamber is a sealed enclosure from which air
and other gases are removed to create a low-pressure environment
that simulates conditions like high altitudes or outer space. 
When testing a Li-ion battery, the vacuum chamber 
allows engineers to observe how the battery performs 
under extreme pressure changes, such as those experienced 
in aerospace applications. This helps evaluate the battery’s 
structural integrity, safety, and electrical behavior in 
low-pressure environments, ensuring it can operate reliably 
in conditions far different from normal atmospheric pressure.

 Shown in Figure 1 
#image("vacuumchamber.jpg", width: 180pt)
#text("--", fill: white)

#text("--", fill: white)

#text("--", fill: white)

#text("--", fill: white)

#text("--", fill: white)

#text(16pt, [- Vacuum Pump])
A vacuum pump is a device that removes air and gas 
molecules from a sealed space to create a vacuum. 
In the context of testing a Li-ion battery, the vacuum 
pump is used to evacuate the air from a vacuum chamber, 
simulating low-pressure environments such as high altitudes 
or space. This setup allows researchers to test how the 
battery responds to reduced pressure, including potential 
swelling, leakage, or changes in performance. The vacuum pump 
is essential for creating controlled conditions that help 
ensure the battery’s safety and reliability in extreme 
environments. 
Shown in Figure 2
#image("vacuumpump.jpg", width: 140pt)
#text(16pt, [- Pressure Gauge])
This tool is used to measure the difference in pressure between the device and the surrounding atmosphere.
#image("pressuregauge.jpg", width: 80pt)

#text(16pt, [- Timer])
This tool is used to ensure the test is done for a precise and defined duration.
#text(16pt, [- Insulated Battery Tray])

This tool prevents the battery from shifting and moving and prevents any damage to the battery that is not caused from the altitude or pressure 
#image("tray.jpg", width: 130pt)
#text(16pt, [- Microscope])

This is optional but can be used to better the inspection of the battery
#image("microscope.jpg", width: 110pt)
#text(16pt, [- Multimeter]) 
This is used to measure voltage before and after the test
#image("multimeter.jpg", width: 50pt)
= Procedure
== Set up
First do a OCV test and then a visual check of the battery, look for any damage, swelling, corrosion, or leakage. Also, make sure that the battery is not fully charged. It should be about 30%-60% charged. 
== Preparing the Vacuum Chamber
Place the battery in the vacuum on a non-conductive, flat surface. Use a tray to isolate the battery from direct contact with the metal of the vacuum. 
== Set up instruments
Connect the vacuum pump to the chamber, make sure the pressure gauge is zeroed, ensure the chamber is sealed and their is a pressure relief system.
== Vacuum Test
Start the vacuum pump and gradually reduce the pressure inside the chamber. Bring the pressure down to around 11.6 kPa (87 mmHg) this is simulating about 50,000 feet of altitude. Maintain the vacuum for at least 6 hours. 
== Monitor and Observation 
Make sure to check for physical deformation like swelling, gas formation like bubbling or hissing, and leaks or ruptures. Utilize the camera and/or microscope for a more precise oberservation. 

== Restore Pressure
After 6 hours, slowly return the chamber to atmospheric pressure. A quick pressure change can stress the battery which would mess with the results. 

= Results
After the test, ensure there is no mass loss, leakage, venting, rupture, fire, or visible deformation. The voltage should remain within acceptable limits.