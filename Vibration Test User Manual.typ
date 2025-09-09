// #import "@preview/min-manual:0.1.0": manual, arg, univ, pip, crate, pkg, extract
#import "template.typ": manual, arg, univ, pip, crate, pkg, extract

#show: manual.with(
  title: "Vibration Test",
  type_of_manual: "User Manual",
  description: "Revision 3                     2 September 2025",
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
== Importance
This test will be performed once after the the first Open Circuit Voltage Test and Charge Cycle Test. Vibration tests are performed to determine a product's ability to withstand vibrational forces and to identify potential weakness when used for real
world handling. The Lithium Ion battery is often exposed to continuous vibrations. This test allows the user to see how the battery will respond to vibrations on all three axes allowing you to see how the battery will react with long term use.

#image("diagram.jpg", width: 500pt)

= Equipment
- Vibration Shaker : This tool generates the vibrations for the battery.
- Slip Tables: Platforms that simulate multi-axis vibration and test large or heavy payloads that would exceed the capabilities of standard shakers
- Amplifier : Provides power to the shaker to create the desired vibration profile.
- Vibration Controller : Generates vibration profiles and programmed to control the shaker.
- Head Expanders : Accessories that increase the mounting surface area on a shaker table
- Accelerometers (Sensors) : Accelerometers are mounted on or near the battery. This is used to measure the input vibration levels. Accelerometers are devices that measure the proper acceleration of an object. Proper acceleration refers to the acceleration (the rate of change of velocity) of the object relative to an observer who is in free fall (that is, relative to an inertial frame of reference)
- Thermocouples : This is a sensor that measures temperature. It consists of two different types of metals joined together. This thermocouple junction creates a voltage that changes with temperature and is then measured and converted to a temperature reading. 
- Fixtures : Used to securely mount the battery on the vibration shaker or table.
- Bump Machine : This simulates real world transportation and handling by repeatedly dropping an object from a controlled height onto a surface, applying a controlled impact
= Procedure
== Safety
Ensure the battery is in good condition before you begin the test. Check for swelling, leakage, corrosion, and any kind of physical damage. The battery should be at a low state of charge perferably at 30% charge. This reduces the risk of thermal runaway during testing. The PPE that should be worn during this test are safety glasses, gloves, and lab coats. 
== Mounting the Battery
The battery must be securely mounted to a vibration shaker, which is then attached to the shaker table (or electrodynamic vibration system). The fixture needs to replicate how the battery would be mounted in real world use, such as within a vehicle or device enclosure, without altering its natural response to vibration. The mounting should be tight enough to prevent slipping but not so tight that it messes with the mechanics. Vibration testing is typically performed along three orthogonal axes (X,Y, and Z), so either the battery must be repositioned after each test or the table must be able to switch orientations. All cables to the battery, like those for voltage monitoring or thermocouples, should be strain relieved and routed carefully to avoid becoming entangled or interfering with the test. 

== Parameters
The parameters are typically defined by standards such as UN 38.3 for transportation safety. It requites testing across 7Hz-200Hz frequency range with specific amplitude and acceleration values. IEC 62660-2 is automotive applications. Includes high-frequency testing up to 2000Hz with acceleration up to 30g. UL 1642 Ensures consumer electronics safety. Specifies vibration testing at 10Hz–55Hz with a displacement amplitude of 0.8mm. Key parameters include frequency range, acceleration amplitude, duration, and axis of testing. In some test scenarios, environmental conditions such as temperature and humidity may also be controlled by an environmental chamber to simulate combine stress factors.
== Vibration Test
After reviewing the testing standard (UN 38.3 and/or IEC 62133) and documenting the open circuit voltage baseline taken before this, you should have your lithium ion battery to its specified State of Charge (100%). Secure the battery onto the vibration shaker using the brackets or clamps. Make sure to secure the battery without over-constraining. The vibration shaker is programmed by a vibration controller. This controller is going to make the shaker go into a sinusoidal sweep which means it is going to vibrate in a sine wave pattern for about 7 Hz to 200 Hz. The Accelerometers are going to be mounted to the battery or vibration chamber to record mechanical stress the battery experiences in real time. 
You will run a test along the three orthogonal axes (x,Y, and Z). According to the UN 38.3, Test T.3, “The battery is subjected to a vibration test using a sinusoidal waveform with a logarithmic sweep between 7 Hz and 200 Hz and back to 7 Hz in 15 minutes. This cycle is repeated 12 times for a total of 3 hours per axis.” So, the entire test should take a total of 9 hours. 
== Monitor and Observation
Throughout this test, make sure to monitor the state of the battery. Most vibration chambers will have a small window and through that, make sure to observe the physical characteristics of the battery. Like, deformation, smoke, or venting. If any signs show during the test, stop. 
= Result
After the test, remove the battery from the chamber and fully inspect it. Do a visual check for cracks, swelling, or leakage. Then, you should take another open circuit voltage test to detect any performance degradation. Finally, you should remove the Accelerometers from the vibration chamber and collect the data from them. After collecting that data, collect the observations you made during the test and the before and after voltage readings. Then, use the report from the UN to assess whether or not the battery passed or failed.
