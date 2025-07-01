// #import "@preview/min-manual:0.1.0": manual, arg, univ, pip, crate, pkg, extract
#import "template.typ": manual, arg, univ, pip, crate, pkg, extract

#show: manual.with(
  title: "Charge Cycling Test",
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
The Charge Cycling Test will be done two times. Once before the vibrational test and once after the vacuum test.
== Importance
 You perform a charge cycling test to evaluate the performance of the battery, predict their lifespan, and assess their durability in real world conditions. The purpose of this test is to apply a constant current to batteries, super capacitors, or electrode materials in order to charge and discharge between defined voltage limits. This will allow you to see how a material or cell's capacity, efficiency, and similar parameters are affected as a function of cycle number.
 == Warning
 Never leave a lithium-ion battery unattended during the test. In case of swelling, venting, or rapid temperature increase (>45°C in < 10 Seconds), immediatly stop the test and remove the abttery to a fire safe location.
= Equipment
- Voltmeter
#image("voltmeter.jpg", width: 180pt)
This tool is used to measure voltage and potential difference between two points in a circuit
- Programmable Power Supply
#image("Programmable power supply.jpg", width: 180pt) 
This is the device that is going to doing the actual charging and discharging of the Lithium Ion battery
- Battery Analyzer 
#image("battery analyser.jpg", width: 180pt)
This tool is used to monitor and evaluate the performance of a battery during repeated charge and discharge
- Thermal sensor or thermocouple
This tool is used to monitor the batteries temperature during the charging and discharging
- Protective casing (if required) 
This is used to enhance the performance, stability, and safety of the battery
- Datasheet for reference

#text("--", fill: white)

#text("--", fill: white)

#text("--", fill: white)

#text("--", fill: white)


= Procedure
== Set up
Connect the battery leads to the test station. Like the multimeter, connect the red lead to the positive lead and the black lead to the negative lead. Attach a thermocouple to monitor battery surface temperature. A thermocouple is a sensor that measures temperature. It consists of two different types of metals joined together at one end. When the combination end of it is heated there is a current that flows through the thermoelectric circuit. Then your going to configure the parameters on the analyzer. The necassary parameters are listed below.

== Parameters
Parameters are used to control and monitor the charging and discharging of a battery over a period of time.
 - Voltage
  - Average Working : 4.2V
  - Charging Voltage : 3.7V at 0.2C rate 
  - Capacity : 1260 mAh
  - Internal Resistance : r = (E/I) - R 
  - Energy Density : 4884 (Wh/L)
   - Energy Density (Wh/L) = battery capacity (mAh) x 3.2 (V) or 3.7 (V)/thickness (cm)/length (cm)
  - Discharge Current : 1.0C
  - Charge Current : 1.0C
  - Cycle Life : ≥500 cycles, more than 80% at 0.5C rate discharge
 - Cycle Profile
  - Charge to 4.2V:
   - Constant Current : 0.5C So, 660 mA for this 1320 mAh battery 
   - Constant Voltage : Hold at 4.2V until current drops below 0.05C (66 mA)

#text("--", fill: white)

#text("--", fill: white)

== Charge Cycling Test
Begin the automated charge-discharge cycle. Ensuring to log the following data: Voltage(V),Current(mA), Temperature(°C), Capacity (mAh), and Internal resistance. 

Rest for 30 minutes after charge
Then you are going to discharge to 3.0V using the Constant Charge method. Discharge at 0.5C (660 mA). Then rest the battery again. Repeat this cycle greater than or equal to 500 cycles.
== Monitor and Observation
Make sure to watch for any temperature rises. If the battery reaches a temperature greater than 45°C then stop the test. Watch for capacity drops and any swelling, venting, or irregular behavior.
== Data Analysis
After a certain amount of cycles it is important to do quality checks on the battery to see how it is performing in between the test. Recommended analysis points include the initial cycle (Cycle 0), an early cycle (Cycle 10), ongoing checks (Every 25 to 50 Cycles), half-life cycle (Cycle 250), and the End-Life Cycle (Cycle 500). The key metrics to assess include capacity, internal resistance (IR), and State of Health (SoH).
- Capacity (mAh) : Decreases 
- Internal Resistance (IR) : Increases
- State of Health (SoH) : Calculated using this formula
 - SoH = ((Measured Capacity/Nominal Capacity)x100%)
 Nominal Capacity : Rated capacity of the battery
 
 Measured Capacity : Obtained during testing
 
This analysis ensures accurate monitoring of the battery's health and longevity across its lifespan.
= Results
After this test (about 300-500 cycles), the batteries capacity should decrease but remain above 80% of its nominal value (Find using the SoH equation). Internal Resistance is expected to increase slowly indicating the wear on the battery is normal. Charge and discharge voltage profiles should be consistant between cycles. The temperature should typically stay below 60°C. There should be no signs of physical damage such as swelling, leakage, or deformation. All of these results together confirm wether the battery is performing as expected. 