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

#image("diagram.jpg", width: 500pt)
Vibration tests are performed to determine a product's ability to withstand vibrational forces and to identify potential weakness.
= Equipment
- Vibration Shaker 
#image("vibrationchamber.jpg", width: 180pt)
Generates the vibrations

#text("--", fill: white)

#text("--", fill: white)

#text("--", fill: white)

- Amplifier
#image("amplifier.jpg", width: 180pt)
Provides power to the shaker to create the desired vibration profile
- Vibration Controller
#image("vibration controller.jpg", width: 180pt)
Generates vibration profiles and controlling the shaker
- Sensors (Accelerometers)
#image("Accelerometers.jpg", width: 140pt)
Accelerometers are mounted on or near the battery. This is used to measure the input vibration levels. Measure the vibration acceleration of the battery or the test object
- Thermocouples
#image("thermocouple copy.jpg", width: 270pt)
This is a sensor that measures temperature. It consists of two different types of metals, 
- Fixtures : Used to securely mount the battery on the vibration shaker or table

= Procedure
== Set up
- Safety
Ensure the battery is in good condition before you begin the test. Check for swelling, leakage, corrosion, and any kind of physical damage. The battery should be at a low state of charge perferably at 30% charge. This reduces the risk of thermal runaway during testing. 
- Personal Protective Equipement
The PPE that should be worn during this test are safety glasses, gloves, and lab coats. 
- Mounting the Battery
The battery must be securely mounted to a vibration fixture, which is then attached to the shaker table (or electrodynamic vibration system). The fixture needs to replicate how the battery would be mounted in real world use, such as within a vehicle or device enclosure, without altering its natural response to vibration. The mounting should be tight enough to prevent slipping but not so tight that it messes with the mechanics. Vibration testing is typically performed along three orthogonal axes (X,Y, and Z), so either the battery must be repositioned after each test or the table must be able to switch orientations. All cables to the battery, like those for voltage monitoring or thermocouples, should be strain relieved and routed carefully to avoid becoming entangled or interfering with the test.
- Pre-Test Verification 
Before starting the actual vibration test, a pre-test verification is essential to make sure the system is functioning correctly. This often includes performing a low-amplitude dry run

== Parameters
The parameters are typically defined by standards such as UN 38.3 (for transportation safety), IEC 62133 is for consumer batteries like Lithium Ion Batteries. Key parameters include frequency range, acceleration amplitude, duration, and axis of testing. In some test scenarios, environmental conditions such as temperature and humidity may also be controlled by an environmental chamber to simulate combine stress factors.
== Vibration Test

== Monitor and Observation

= Result

