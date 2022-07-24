FSR_Endstop
===========

Force-Sensitive Resistor controller designed for Delta 3D printers for automatic bed leveling.


## Availability
These circuit boards are now available for purchase from here:

* [Tridprinting.com](http://www.tridprinting.com/Electronics/#3D-Printer-FSR)
* [UltiBots.com](http://www.ultibots.com/fsr-leveling)

You can find my blog post about having these manufactured here: http://trains.socha.com/2014/09/manufacturing-fsr-endstop-controller.html

## History
Back in Februray 2014, Johann modified the Marlin firmware to support force sensitive resistors (FSRs) to allow the firmware to locate the print surface by moving the print nozzle down until the firmware detected that it was touching the bed. FSRs have a very high resistance until you apply pressure, at which point the resistance drops very quickly. You can find more information about his work here: http://reprap.org/wiki/FSR.

I built my own delta printer (http://trains.socha.com/2013/11/building-3dr-simple-delta-printer-part-i.html) and decided to try FSRs. Johann's original branch used one of the thermister inputs, but he later changed to using one of the standard endstop inputs, which I learned when I talked to him at the Seattle Mini Makerfaire. So I tried the endstops.

I had a devel of a time getting it to work. Getting the threshold just right took quite a bit of effort, plus I had to use just the right version of the firmware and get it to load on my Printrboard. It took a little head scratching, and some measurements, to realize that the weight of my glass bed was enough to move the voltage low enough to trigger the end stop. I tried lots of things, and finally used the tape he suggested. That worked better, but I wasn't happy because it was so finiky.

That's how this project got started. I figured it wouldn't be that much effort to use a microcontroller to automatically adjust for the ambient pressure. I'd been wanting to learn how to design and build circuit boards, so my friend Stephen helped me design version 1.0 of this circuit board (in other words, I watched while he layed it out). He also showed me how to hand-solder my first circuit board. You can find more information here:

* [FSR Bed Leveling Trials and Tribulations](http://trains.socha.com/2014/05/fsr-bed-leveling-trials-and-tribulations.html?showComment=1400160705176)
* [Auto Adjust FSR End Stop Detector](http://trains.socha.com/2014/05/auto-adjust-fsr-end-stop-detector.html?showComment=1399251889736)
* [Building the FSR Circuit Boards](http://trains.socha.com/2014/07/building-fsr-circuit-boards.html)

## FSR Endstop Controller
Although not a clever name, it certainly describes what this board does. To use the board, you connect a cable to the endstop on your printer board, and then you connect three FSRs to the inputs of the board. And that's it. The board receives power from the printer board and automatically adjusts to the ambient pressure on the sensors. Whenever the head hits the build plate, the board will detect this and trigger the end stop.

To date, we've made two different versions of the board. Revision 1.1 is shown on the left, and 1.2 is on the right:

![Board Versions](https://github.com/JohnSL/FSR_Endstop/raw/master/Photos/P7131966_Cropped_1000_Marked.jpg)

The difference between these two is the arrangement of pins that can be used to modify the behavior of the board. In the revision 1.1 board, these pins are labeld IO1, IO2, and IO3. While the same pins are labeled SN2, SN1, and NC on the revision 1.2 boards. Additionally, the 1.2 boards allow you to solder in a 2 by 3 array of header pins and then use jumpers to connect any combination of these three pins to ground (GND), whereas the 1.1 boards require using wires to connect any combination of these pins to GND.

### Wiring the Endstop
Use a three-wire cable to connect the endstop on your printer board to this circuit board. These should be connected to the three pins labeled "+/-", "+/-", and "SIG" in the upper-left corner of the image above. On all the printer boards I've looked at, the signal wire is on the outside. The 5V connection is either on the middle pin or the outside pin. You'll want to check your printer board to ensure you attach the connector with the correct orientation.

### Setting the Sensitivity
There are two jumpers  you can use to modify the sensitivy of this board. By default (no jumpers), the force much be such that the voltage drops below 0.92 of the ambient value before the output is triggered. Each FSR is monitored independently of the others, so the output will trigger when at least one FSR triggers an input. In the table below, GND means you've connected that pin to ground.

| SN1 / IO2 | SN2 / IO1 | Sensitivity |
|-----------|-----------|-------------|
| GND | GND | 0.8 |
| GND |  -  | 0.85 |
|  -  | GND | 0.95 |
|  -  |  -  | 0.92 |

### Setting NC/NO Behavior
By default, the end stop output will be normally open (NO), which should work fine with any printer. However if you want to change this to normally closed (NC), connect pin NC/IO3 to GND.
