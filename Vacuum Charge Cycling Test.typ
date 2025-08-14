// #import "@preview/min-manual:0.1.0": manual, arg, univ, pip, crate, pkg, extract
#import "template.typ": manual, arg, univ, pip, crate, pkg, extract

#show: manual.with(
  title: "Vacuum Charge Cycling Test",
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

= Baseline for Test
A vacuum test measures how well a system or component holds a vacuum, with acceptable changes in parameters depending on the system type and test purpose. In leak detection scenarios, such as vacuum decay testing, a chamber is evacuated and monitored for pressure changes over time. Minimal pressure rise indicates a leak free system. Industry standards vary, autoclaves may require a leak rate of ≤1 mmHg/min, industrial systems should see no more than a 10% rise from base pressure over 24 hours, and high vacuum systems are often limited to a 1% rise. Vacuum furnaces may have stricter standards, such as a 10 microns/hour leak rate, though this depends on chamber volume and application. Temperature fluctuations can influence test results, so sufficient cool down time is essential before evaluating pressure drops. For engine health diagnostics, vacuum readings at idle should range from 17-22 inHg at sea level, decreasing about 1 inHg per 1000 feet of altitude. During a snap throttle test, vacuum should momentarily drop to 0-3 inHg, spike to around 25 inHg, then stabilize signaling healthy valves and piston rings. Deviations such as low, steady vacuum may point to leaks or poor valve timing. Low, fluctuating readings may indicate worn valve guides and high vacuum could stem from early ignition timing or intake restrictions. Ultimately, normal parameter changes in vacuum tests are characterized by limited pressure variation or expected fluctuations, with deviations signaling underlying issues that warrant further investigation.
The base line of this test is a charge cycling test. Conducting this test is what will happen for each test but the main difference between the tests are its environment.
== Charge Cycling Test
The Charge Cycling Test is a test that requires the repeated charge and discharge of a lithium-ion battery. Normal battery use involves repeated charging and discharging cycles. This gradually ages a battery and can trigger internal fault protection systems. These safety systems are designed  to prevent battery failures while under harsh conditions and protect surrounding electronic equipment from damage. As lithium-ion batteries are cycled from full to low charge, their capacity slowly degrades, they lose the ability to hold a full charge, and cannot recharge fully like the battery used to when new. With proper use and high-quality construction, these batteries can withstand hundreds to thousands of charge/discharge cycles, depending on how they are used. To ensure efficient and complete charging and discharging, it is important to understand the battery's charging behavior. Cycling the batteries from maximum to minimum charge not only helps assess their health and recharge capacity but also allows us to see that they are operating as expected and are reliable under actual use conditions. This test will be done two times. Once before the vibrational test and once after the vacuum test.
=== Warning
 Never leave a lithium-ion battery unattended during the test. In case of swelling, venting, or rapid temperature increase (>45°C in < 10 Seconds), immediately stop the test and remove the battery to a fire-safe location. 

== Over-Charge and Over-Discharge process
The purpose of overcharging and overdischarging a battery is to test the behavior, saftey mechanisms, and limits of a lithium-ion battery. This test will simulate the scenario of a charger malfunction, user error, or system malfunction. The results of this test include thermal and electrical stability under abnormal operating conditions, activation of protective circuitry i.e. PTCs, CID, BMS FETs (still need to research), onset of thermal runaway or venting events, mechanical deformation like swelling or rupture, and degradation in capacity, voltage response, and internal impedance.

== Equipment for Safety
This test should take place in a controlled lab the has the following equipment.
- Fire Suppression System (Class D dry power extinguisher)
- Fume Extraction Hood or sealed thermal containment box
- Thermal Runaway Detection System (thermocouple arrays, IR camera monitoring)
- Blast Sheild or Explosion-Proof Chamber
- PPE: Face sheild, flame-resistant lab coat, gloves

== Equipment and Instrumentation
- Programmable DC Power Supply 
 - The purpose of this is to apply constant or controlled overvoltage during overcharge testing
 - Model Number : R&S®NGM200
Programmable Electronic Load : The purpose of this is to drain the battery during overdischarge with precise control

Battery Analyzer (e.g., Arbin, MACCOR) : The purpose of this is that it performs cycle control, data logging, and abuse testing sequences

Multimeter/Data Acquisition System : The purpose of this is to give real time voltage and current measurements

Thermocouples or IR Camera : The purpose of this is to give surface temperature monitoring at multiple battery locations

Pressure/Displacement Sensors : The purpose of this is to detect swelling or venting

Thermal Containment Chamber : This device is used for safe observation of thermal events. 


== Overcharge Procedure
Purpose: Determine failure mode under overvoltage condition.
- Connect battery to programmable DC power supply with current limiting enabled.
- Set current limit to battery's maximum charge current (1.0 C CC - 1320 mA).
- Begin with battery at ~30-50% state of charge.
- Set power supply voltage to start at 4.2V (nominal full charge).
- Increase charge voltage slowly in steps of +0.1V every 10 minutes, up to 6.0V max or until venting/swelling/thermal runaway is observed.
- Hold each voltage level for 30 minutes while monitoring:
 - Cell temperature (abort if >80°C/176°F)
 - Voltage and current behavior
 - Physical deformation or gas venting
- Abort test if any of the following occurs:
 - Cell exceeds 80°C
 - Voltage drops under constant current (sign of internal damage)
 - Audible hissing, swelling, or smoke

== Overdischarge Procedure
Purpose: Simulate abnormal deep discharge beyond cut-off voltage.
- Fully charge battery to 4.2V using manufacturer-specified charge profile.
- Connect battery to programmable electronic load in constant current (CC) mode.
- Set discharge current to nominal or maximum rated discharge current.
- Begin discharge and monitor voltage in real-time.
- Discharge down to cut-off voltage (typically ~3.0V).
- Continue discharging past this limit down to 0V or until load terminates (equipment safety cutoff).
- For destructive testing, continue down to -1.0V reverse voltage only if equipment and containment allow.
- Watch for:
 - Sudden voltage drop
 - Temperature increase (>80°C/176°F)
 - Irregular current behavior
- Abort if:
 - Temperature exceeds safe limit (>80°C/176°F)
 - Voltage rebounds erratically
 - Battery swells or shows signs of venting

== Post-Test Actions
- Let the battery cool in containment for 1 hours before handling.
- Record:
 - Voltage, Current, and Tempurature profiles
 - Time of failure
 - Failure Voltage
 - Observed failure mode (i.e swelling, venting, thermal event)



== Procedure
=== Set up
Connect the battery leads to the test station. Like the multimeter, connect the red lead to the positive lead and the black lead to the negative lead. Attach a thermocouple to monitor battery surface temperature. A thermocouple is a sensor that measures temperature. It consists of two different types of metals joined together at one end. When the combination end of it is heated there is a current that flows through the thermoelectric circuit. After that, configure the parameters on the analyzer. The necassary parameters are listed below.

=== Parameters
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


=== Conducting the Test
To conduct a charge cycle test on a lithium-ion polymer battery, a programmable power supply, multimeter, battery analyzer, thermal sensor, and possibly a data acquisition system will be required. 
Begin by connecting the renata battery to a programmable power supply. This makes it possible to safely control the charging voltage and current. Set the charge voltage to 4.2V per cell and set the current to 0.5C. Use a multimeter to double check voltage readings across the terminals before and during the test to ensure the setup is safe and accurate. A battery analyzer automates the charge/discharge cycles, records data like capacity, internal resistance, and cycle life, and makes it possible to set charge/discharge cutoffs. Attach a thermal sensor to the surface of the battery to monitor temperature throughout the test. If the battery exceeds safe temperature limits (usually around 60°C/140°F), the test must stop to prevent thermal runaway. To collect real time data, a data acquisition system or logging software is often used alongside the analyzer. Throughout the test, it is required to repeatedly charge the battery to full capacity and discharge it to the lower voltage limit usually around 3.0V per cell. This will mimick real world usage. This process evaluates battery aging, capacity fade, and safety characteristics over time.
Begin the automated charge-discharge cycle. Ensuring to log the following data: Voltage(V),Current(mA), Temperature(°C), Capacity (mAh), and Internal resistance. 
Rest for 30 minutes after charge.
After the rest, discharge to 3.0V using the Constant Charge method. Discharge at 0.5C (660 mA). Then rest the battery again. Repeat this cycle greater than or equal to 500 cycles.
=== Monitor and Observe
Make sure to watch for any temperature rises. If the battery reaches a temperature greater than 45°C then stop the test. Watch for capacity drops and any swelling, venting, or irregular behavior.
=== Data Analysis
Recommended analysis points include the initial cycle (Cycle 0), an early cycle (Cycle 10), ongoing checks (Every 25 to 50 Cycles), half-life cycle (Cycle 250), and the End-Life Cycle (Cycle 500). The key metrics to assess include capacity, internal resistance (IR), and State of Health (SoH).
- Capacity (mAh) : Decreases 
- Internal Resistance (IR) : Increases
- State of Health (SoH) : Calculated using this formula
 - SoH = ((Measured Capacity/Nominal Capacity)x100%)
 Nominal Capacity : Rated capacity of the battery
 
 Measured Capacity : Obtained during testing
 
This analysis ensures accurate monitoring of the battery's health and longevity across its lifespan.
== Results
After this test (about 300-500 cycles), the batteries capacity should decrease but remain above 80% of its nominal value (Find using the SoH equation). Internal Resistance is expected to increase slowly indicating the wear on the battery is normal. Charge and discharge voltage profiles should be consistant between cycles. The temperature should typically stay below 60°C. There should be no signs of physical damage such as swelling, leakage, or deformation. All of these results together confirm wether the battery is performing as expected. 
= Charge Cycling Test without vacuum and thermal
Repeatedly charge and discharge the battery in a vacuum chamber (like space), and record:
Thermal properties: How hot/cold it gets while operating
Electrical properties: Voltage, current, capacity, efficiency
Where to look/do:
- Use a vacuum chamber
- Use a programmable power supply to charge/discharge
- Use thermal sensors to measure temperatures on battery surface
- Use a battery analyzer or DAQ system to monitor voltage, current, etc.

= Charge Cycling Test with vacuum without thermal
== Set up
First do a OCV test and then a visual check of the battery, look for any damage, swelling, corrosion, or leakage. Also, make sure that the battery is not fully charged. It should be about 30-60% charged. 
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
= Charge Cycling Test with thermal without vacuum
Is generally executed in ambient pressure through the use of environmental
chambers. This test is usually executed to subsystem or system level. The test article will be exposed to a series of
cycles of hot and cold temperatures. The thermal cycling generate an environmental stress in the test article that
allows to identify material and workmanship defects
= Charge Cycling Test with vacuum and thermal
This test subjects the test article to a series of cycles of hot and
cold temperatures in a high vacuum environment. Space simulation chambers and thermal vacuum chambers are
used to perform this type of test. This test is executed to subsystem or system level. During the development of
TVCT, are performed functional tests for the performance verification of the subsystem or system.

