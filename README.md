FSR_Endstop
===========

Force-Sensitive Resistor controller designed for Delta 3D printers for automatic bed leveling.


## History
Back in Februray 2014, Johann modified the Marlin firmware to allow using force sensitive resistors (FSRs) to allow the firmware to locate the print surface by moving the print nozzle down until the firmware detected that it was touching the bed. FSRs have a very high resistance until you apply pressure, at which point the resistance drops very quickly.

I had my own printer (http://trains.socha.com/2013/11/building-3dr-simple-delta-printer-part-i.html) and decided to try FSRs on my printer. I had lots of problems. Getting the threshold just right took quite a bit of effort, plus I had to use just the right version of the firmware. Johann's branch used one of the thermister inputs, but he later changed to using one of the standard endstop inputs. That's what I tried.

I had a devel of a time getting it to work. It took a little head scratching, and some measurements, to realize that the weight of my glass bed was enough to move the voltage down enough to trigger the end stop. I tried lots of things, and finally used the tape he suggested. That worked better, but I wasn't happy because it was so finiky.

## FSR Endstop Controller
Although not a clever name, it certainly describes what this board does. To use the board, you connect a cable to the endstop on your printer board, and then you connect three FSRs to the inputs of the board. And that's it. The board receives power from the printer board and automatically adjusts to the ambient pressure on the sensors. Whenever the head hits the build plate, the board will detect this and trigger the end stop.
