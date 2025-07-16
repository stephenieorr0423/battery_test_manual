// #import "@preview/min-manual:0.1.0": manual, arg, univ, pip, crate, pkg, extract
#import "template.typ": manual, arg, univ, pip, crate, pkg, extract

#show: manual.with(
  title: "Charge Cycling Test",
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

= Charge Cycling Test
The Charge Cycling Test is a test that requires the repeated charge and discharge of a lithium-ion battery. Normal battery use involves repeated charging and discharging cycles. This gradually ages a battery and can trigger internal fault protection systems. These safety systems are designed to prevent battery failures while under harsh conditions and protect surrounding electronic equipment from damage. As lithium-ion batteries are cycled from full to low charge, their capacity slowly degrades, they lose the ability to hold a full charge, and cannot recharge fully like the battery used to when new. With proper use and high-quality construction, these batteries can withstand hundreds to thousands of charge/discharge cycles, depending on how they are used. To ensure efficient and complete charging and discharging, it is important to understand the battery's charging behavior. Cycling the batteries from maximum to minimum charge not only helps assess their health and recharge capacity but also allows us to see that they are operating as expected and are reliable under actual use conditions. This test will be done two times. Once before the vibrational test and once after the vacuum test.
== Warning
 Never leave a lithium-ion battery unattended during the test. In case of swelling, venting, or rapid temperature increase (>45°C in < 10 Seconds), immediately stop the test and remove the battery to a fire-safe location. 

= Over-Charge and Over-Discharge process

The purpose of overcharging and overdischarging a battery is to test the behavior, saftey mechanisms, and limits of a lithium-ion battery. This test will simulate the scenario of a charger malfunction, user error, or system malfunction. The results of this test include thermal and electrical stability under abnormal operating conditions, activation of protective circuitry i.e. PTCs, CID, BMS FETs (still need to research), onset of thermal runaway or venting events, mechanical deformation like swelling or rupture, and degradation in capacity, voltage response, and internal impedance.

== Equipment for Safety
This test should take place in a controlled lab the has the following equipment.
- Fire Suppression System (Class D dry power extinguisher)
- Fume Extraction Hood or sealed thermal containment box
- Thermal Runaway Detection System (thermocouple arrays, IR camera monitoring)
- Blast Sheild or Explosion-Proof Chamber
- PPE: Face sheild, flame-resistant lab coat, gloves

== Equipment and Instrumentation
Programmable DC Power Supply : The purpose of this is to apply constant or controlled overvoltage during overcharge testing

Programmable Electronic Load : The purpose of this is to drain the battery during overdischarge with precise control

Battery Analyzer (e.g., Arbin, MACCOR) : The purpose of this is that it performs cycle control, data logging, and abuse testing sequences

Multimeter/Data Acquisition System : The purpose of this is to give real time voltage and current measurements

Thermocouples or IR Camera : The purpose of this is to give surface temperature monitoring at multiple battery locations

= Procedure
== Set up
Connect the battery leads to the test station. Like the multimeter, connect the red lead to the positive lead and the black lead to the negative lead. Attach a thermocouple to monitor battery surface temperature. A thermocouple is a sensor that measures temperature. It consists of two different types of metals joined together at one end. When the combination end of it is heated there is a current that flows through the thermoelectric circuit. After that, configure the parameters on the analyzer. The necassary parameters are listed below.

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


== Conducting the Test
To conduct a charge cycle test on a lithium-ion polymer battery, a programmable power supply, multimeter, battery analyzer, thermal sensor, and possibly a data acquisition system will be required. 
Begin by connecting the renata battery to a programmable power supply. This makes it possible to safely control the charging voltage and current. Set the charge voltage to 4.2V per cell and set the current to 0.5C. Use a multimeter to double check voltage readings across the terminals before and during the test to ensure the setup is safe and accurate. A battery analyzer automates the charge/discharge cycles, records data like capacity, internal resistance, and cycle life, and makes it possible to set charge/discharge cutoffs. Attach a thermal sensor to the surface of the battery to monitor temperature throughout the test. If the battery exceeds safe temperature limits (usually around 60°C/140°F), the test must stop to prevent thermal runaway. To collect real time data, a data acquisition system or logging software is often used alongside the analyzer. Throughout the test, it is required to repeatedly charge the battery to full capacity and discharge it to the lower voltage limit usually around 3.0V per cell. This will mimick real world usage. This process evaluates battery aging, capacity fade, and safety characteristics over time.
Begin the automated charge-discharge cycle. Ensuring to log the following data: Voltage(V),Current(mA), Temperature(°C), Capacity (mAh), and Internal resistance. 
Rest for 30 minutes after charge.
After the rest, discharge to 3.0V using the Constant Charge method. Discharge at 0.5C (660 mA). Then rest the battery again. Repeat this cycle greater than or equal to 500 cycles.
== Monitor and Observe
Make sure to watch for any temperature rises. If the battery reaches a temperature greater than 45°C then stop the test. Watch for capacity drops and any swelling, venting, or irregular behavior.
== Data Analysis
Recommended analysis points include the initial cycle (Cycle 0), an early cycle (Cycle 10), ongoing checks (Every 25 to 50 Cycles), half-life cycle (Cycle 250), and the End-Life Cycle (Cycle 500). The key metrics to assess include capacity, internal resistance (IR), and State of Health (SoH).
- Capacity (mAh) : Decreases 
- Internal Resistance (IR) : Increases
- State of Health (SoH) : Calculated using this formula
 - SoH = ((Measured Capacity/Nominal Capacity)x100%)
 Nominal Capacity : Rated capacity of the battery
 
 Measured Capacity : Obtained during testing
 
This analysis ensures accurate monitoring of the battery's health and longevity across its lifespan.
= Results
After this test (about 300-500 cycles), the batteries capacity should decrease but remain above 80% of its nominal value (Find using the SoH equation). Internal Resistance is expected to increase slowly indicating the wear on the battery is normal. Charge and discharge voltage profiles should be consistant between cycles. The temperature should typically stay below 60°C. There should be no signs of physical damage such as swelling, leakage, or deformation. All of these results together confirm wether the battery is performing as expected. 