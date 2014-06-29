<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="11" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="_sg_misc">
<packages>
<package name="SOIC-20">
<wire x1="3.81" y1="-6.35" x2="-3.81" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-6.35" x2="-3.81" y2="6.35" width="0.127" layer="21"/>
<wire x1="-3.81" y1="6.35" x2="3.81" y2="6.35" width="0.127" layer="21"/>
<wire x1="3.81" y1="6.35" x2="3.81" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-6.35" y1="5.715" x2="-6.985" y2="6.35" width="0.127" layer="21"/>
<wire x1="-6.985" y1="6.35" x2="-6.985" y2="5.08" width="0.127" layer="21"/>
<wire x1="-6.985" y1="5.08" x2="-6.35" y2="5.715" width="0.127" layer="21"/>
<circle x="-1.905" y="4.445" radius="0.898" width="0.127" layer="21"/>
<smd name="P$1" x="-5.08" y="5.715" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$2" x="-5.08" y="4.445" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$3" x="-5.08" y="3.175" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$4" x="-5.08" y="1.905" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$5" x="-5.08" y="0.635" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$6" x="-5.08" y="-0.635" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$7" x="-5.08" y="-1.905" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$8" x="-5.08" y="-3.175" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$9" x="-5.08" y="-4.445" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$10" x="-5.08" y="-5.715" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$11" x="5.08" y="-5.715" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$12" x="5.08" y="-4.445" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$13" x="5.08" y="-3.175" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$14" x="5.08" y="-1.905" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$15" x="5.08" y="-0.635" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$16" x="5.08" y="0.635" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$17" x="5.08" y="1.905" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$18" x="5.08" y="3.175" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$19" x="5.08" y="4.445" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<smd name="P$20" x="5.08" y="5.715" dx="0.4" dy="1.6" layer="1" rot="R90"/>
<text x="-5.08" y="7.62" size="0.8128" layer="21" font="vector">&gt;NAME</text>
<rectangle x1="-5.08" y1="-6.35" x2="5.08" y2="6.35" layer="39"/>
</package>
<package name="AVR6">
<wire x1="-2.54" y1="3.81" x2="2.54" y2="3.81" width="0.127" layer="21"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="-3.81" width="0.127" layer="21"/>
<wire x1="2.54" y1="-3.81" x2="-2.54" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="3.81" width="0.127" layer="21"/>
<pad name="P$1" x="-1.27" y="2.54" drill="0.9" shape="square"/>
<pad name="P$2" x="1.27" y="2.54" drill="0.9"/>
<pad name="P$3" x="-1.27" y="0" drill="0.9"/>
<pad name="P$4" x="1.27" y="0" drill="0.9"/>
<pad name="P$5" x="-1.27" y="-2.54" drill="0.9"/>
<pad name="P$6" x="1.27" y="-2.54" drill="0.9"/>
<text x="3.175" y="-0.635" size="1.27" layer="21" font="vector">MOSI</text>
<text x="3.175" y="1.905" size="1.27" layer="21" font="vector">VCC</text>
<text x="-6.35" y="-0.635" size="1.27" layer="21" font="vector">SCK</text>
<text x="-6.985" y="1.905" size="1.27" layer="21" font="vector">MISO</text>
<text x="-6.35" y="-3.175" size="1.27" layer="21" font="vector">RST</text>
<text x="3.175" y="-3.175" size="1.27" layer="21" font="vector">GND</text>
<text x="-2.54" y="4.445" size="1.27" layer="25" font="vector">&gt;NAME</text>
<rectangle x1="-3.175" y1="-4.445" x2="3.175" y2="4.445" layer="39"/>
</package>
</packages>
<symbols>
<symbol name="ATTINY461">
<wire x1="0" y1="2.54" x2="0" y2="-50.8" width="0.254" layer="94"/>
<wire x1="0" y1="-50.8" x2="-48.26" y2="-50.8" width="0.254" layer="94"/>
<wire x1="-48.26" y1="-50.8" x2="-48.26" y2="2.54" width="0.254" layer="94"/>
<wire x1="-48.26" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<text x="-43.18" y="-48.26" size="1.778" layer="95" font="vector" rot="R90">&gt;NAME</text>
<text x="-43.18" y="-35.56" size="1.778" layer="96" font="vector" rot="R90">&gt;VALUE</text>
<pin name="1_PB0_MOSI/DI/SDA/OC1A#/PCINT8" x="5.08" y="0" length="middle" rot="R180"/>
<pin name="2_PB1_MISO/DO/OC1A/PCINT9" x="5.08" y="-2.54" length="middle" rot="R180"/>
<pin name="3_PB2_SCK/USCK/SCL/OC1B#/PCINT10" x="5.08" y="-5.08" length="middle" rot="R180"/>
<pin name="4_PB3_OC1B/PCINT11" x="5.08" y="-7.62" length="middle" rot="R180"/>
<pin name="5_VCC" x="5.08" y="-10.16" length="middle" rot="R180"/>
<pin name="6_GND" x="5.08" y="-12.7" length="middle" rot="R180"/>
<pin name="7_PB4_ADC7/OC1D#/CLKI/XTAL1/PCINT12" x="5.08" y="-15.24" length="middle" rot="R180"/>
<pin name="8_PB5_ADC6/OC1D/CLK0/XTAL2/PCINT13" x="5.08" y="-17.78" length="middle" rot="R180"/>
<pin name="9_PB6_ADC9/INT0/T0/PCINT14" x="5.08" y="-20.32" length="middle" rot="R180"/>
<pin name="10_PB7_ADC10/RESET#/PCINT15" x="5.08" y="-22.86" length="middle" rot="R180"/>
<pin name="11_PA7_ADC6/AIN1/PCINT7" x="5.08" y="-25.4" length="middle" rot="R180"/>
<pin name="12_PA6_ADC5/AIN0/PCINT6" x="5.08" y="-27.94" length="middle" rot="R180"/>
<pin name="13_PA5_ADC4/AIN2/PCINT5" x="5.08" y="-30.48" length="middle" rot="R180"/>
<pin name="14_PA4_ADC3/ICP0/PCINT4" x="5.08" y="-33.02" length="middle" rot="R180"/>
<pin name="15_AVCC" x="5.08" y="-35.56" length="middle" rot="R180"/>
<pin name="16_AGND" x="5.08" y="-38.1" length="middle" rot="R180"/>
<pin name="17_PA3_AREF/PCINT3" x="5.08" y="-40.64" length="middle" rot="R180"/>
<pin name="18_PA2_ADC2/INT1/USCK/SCL/PCINT2" x="5.08" y="-43.18" length="middle" rot="R180"/>
<pin name="19_PA1_ADC1/DO/PCINT1" x="5.08" y="-45.72" length="middle" rot="R180"/>
<pin name="20_PA0_ADC0/DI/SDA/PCINT0" x="5.08" y="-48.26" length="middle" rot="R180"/>
</symbol>
<symbol name="AVR6">
<wire x1="0" y1="2.54" x2="-15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="-15.24" y1="2.54" x2="-15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-15.24" x2="0" y2="-15.24" width="0.254" layer="94"/>
<wire x1="0" y1="-15.24" x2="0" y2="2.54" width="0.254" layer="94"/>
<text x="-12.7" y="-12.7" size="1.27" layer="95" font="vector" rot="R90">&gt;NAME</text>
<pin name="1_MISO" x="5.08" y="0" length="middle" rot="R180"/>
<pin name="2_VCC" x="5.08" y="-2.54" length="middle" rot="R180"/>
<pin name="3_SCK" x="5.08" y="-5.08" length="middle" rot="R180"/>
<pin name="4_MOSI" x="5.08" y="-7.62" length="middle" rot="R180"/>
<pin name="5_RST" x="5.08" y="-10.16" length="middle" rot="R180"/>
<pin name="6_GND" x="5.08" y="-12.7" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATTINY461" prefix="U">
<gates>
<gate name="G$1" symbol="ATTINY461" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="SOIC-20">
<connects>
<connect gate="G$1" pin="10_PB7_ADC10/RESET#/PCINT15" pad="P$10"/>
<connect gate="G$1" pin="11_PA7_ADC6/AIN1/PCINT7" pad="P$11"/>
<connect gate="G$1" pin="12_PA6_ADC5/AIN0/PCINT6" pad="P$12"/>
<connect gate="G$1" pin="13_PA5_ADC4/AIN2/PCINT5" pad="P$13"/>
<connect gate="G$1" pin="14_PA4_ADC3/ICP0/PCINT4" pad="P$14"/>
<connect gate="G$1" pin="15_AVCC" pad="P$15"/>
<connect gate="G$1" pin="16_AGND" pad="P$16"/>
<connect gate="G$1" pin="17_PA3_AREF/PCINT3" pad="P$17"/>
<connect gate="G$1" pin="18_PA2_ADC2/INT1/USCK/SCL/PCINT2" pad="P$18"/>
<connect gate="G$1" pin="19_PA1_ADC1/DO/PCINT1" pad="P$19"/>
<connect gate="G$1" pin="1_PB0_MOSI/DI/SDA/OC1A#/PCINT8" pad="P$1"/>
<connect gate="G$1" pin="20_PA0_ADC0/DI/SDA/PCINT0" pad="P$20"/>
<connect gate="G$1" pin="2_PB1_MISO/DO/OC1A/PCINT9" pad="P$2"/>
<connect gate="G$1" pin="3_PB2_SCK/USCK/SCL/OC1B#/PCINT10" pad="P$3"/>
<connect gate="G$1" pin="4_PB3_OC1B/PCINT11" pad="P$4"/>
<connect gate="G$1" pin="5_VCC" pad="P$5"/>
<connect gate="G$1" pin="6_GND" pad="P$6"/>
<connect gate="G$1" pin="7_PB4_ADC7/OC1D#/CLKI/XTAL1/PCINT12" pad="P$7"/>
<connect gate="G$1" pin="8_PB5_ADC6/OC1D/CLK0/XTAL2/PCINT13" pad="P$8"/>
<connect gate="G$1" pin="9_PB6_ADC9/INT0/T0/PCINT14" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AVR6" prefix="AVR">
<gates>
<gate name="G$1" symbol="AVR6" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="AVR6">
<connects>
<connect gate="G$1" pin="1_MISO" pad="P$1"/>
<connect gate="G$1" pin="2_VCC" pad="P$2"/>
<connect gate="G$1" pin="3_SCK" pad="P$3"/>
<connect gate="G$1" pin="4_MOSI" pad="P$4"/>
<connect gate="G$1" pin="5_RST" pad="P$5"/>
<connect gate="G$1" pin="6_GND" pad="P$6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="_sg_lib">
<description>Collection of fine, handcrafted, artisanal eagle components.</description>
<packages>
<package name="PIN_1.2MM">
<pad name="P$1" x="0" y="0" drill="1.2" shape="octagon"/>
<text x="1.5" y="-0.5" size="1.016" layer="21" font="vector">&gt;NAME</text>
</package>
<package name="PIN_0.8MM">
<pad name="P$1" x="0" y="0" drill="0.8" shape="octagon"/>
<text x="1.5" y="-0.5" size="1.016" layer="21" font="vector">&gt;NAME</text>
</package>
<package name="PIN_1.0MM">
<pad name="P$1" x="0" y="0" drill="1" shape="octagon"/>
<text x="1.5" y="-0.5" size="1.016" layer="21" font="vector">&gt;NAME</text>
</package>
<package name="PIN_1.4MM">
<pad name="P$1" x="0" y="0" drill="1.4" shape="octagon"/>
<text x="1.5" y="-0.5" size="1.016" layer="21" font="vector">&gt;NAME</text>
</package>
<package name="PIN_2.2MM">
<pad name="P$1" x="0" y="0" drill="2.2" shape="octagon"/>
<text x="2.77" y="-0.5" size="1.016" layer="21" font="vector">&gt;NAME</text>
</package>
<package name="0603_DIODE">
<wire x1="-0.4" y1="0.3" x2="-0.3" y2="0.3" width="0.127" layer="21"/>
<wire x1="-0.3" y1="0.3" x2="-0.2" y2="0.3" width="0.127" layer="21"/>
<wire x1="-0.2" y1="0.3" x2="0.4" y2="0.3" width="0.127" layer="21"/>
<wire x1="-0.4" y1="-0.3" x2="-0.3" y2="-0.3" width="0.127" layer="21"/>
<wire x1="-0.3" y1="-0.3" x2="-0.2" y2="-0.3" width="0.127" layer="21"/>
<wire x1="-0.2" y1="-0.3" x2="0.4" y2="-0.3" width="0.127" layer="21"/>
<wire x1="-0.9" y1="0.5" x2="0.9" y2="0.5" width="0.04" layer="51"/>
<wire x1="0.9" y1="0.5" x2="0.9" y2="-0.5" width="0.04" layer="51"/>
<wire x1="0.9" y1="-0.5" x2="-0.9" y2="-0.5" width="0.04" layer="51"/>
<wire x1="-0.9" y1="-0.5" x2="-0.9" y2="0.5" width="0.04" layer="51"/>
<wire x1="-0.8" y1="0.5" x2="-0.4" y2="0.5" width="0.127" layer="21"/>
<wire x1="-0.4" y1="0.5" x2="-0.4" y2="0.6" width="0.127" layer="21"/>
<wire x1="-0.4" y1="0.6" x2="-0.8" y2="0.6" width="0.127" layer="21"/>
<wire x1="-0.8" y1="-0.5" x2="-0.4" y2="-0.5" width="0.127" layer="21"/>
<wire x1="-0.4" y1="-0.5" x2="-0.4" y2="-0.6" width="0.127" layer="21"/>
<wire x1="-0.4" y1="-0.6" x2="-0.8" y2="-0.6" width="0.127" layer="21"/>
<wire x1="-0.3" y1="0.3" x2="-0.3" y2="-0.3" width="0.127" layer="21"/>
<wire x1="-0.2" y1="0.3" x2="-0.2" y2="-0.3" width="0.127" layer="21"/>
<smd name="-" x="-0.8" y="0" dx="0.8" dy="0.6" layer="1" rot="R90"/>
<smd name="+" x="0.8" y="0" dx="0.8" dy="0.6" layer="1" rot="R90"/>
<text x="-0.7" y="0.7" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-0.8" y="0.1" size="0.3048" layer="51" font="vector">&gt;NAME</text>
<text x="-0.8" y="-0.3" size="0.3048" layer="51" font="vector">&gt;VALUE</text>
<rectangle x1="-0.9" y1="-0.5" x2="0.9" y2="0.5" layer="39"/>
</package>
<package name="0603">
<wire x1="-0.4" y1="0.3" x2="0.4" y2="0.3" width="0.127" layer="21"/>
<wire x1="-0.4" y1="-0.3" x2="0.4" y2="-0.3" width="0.127" layer="21"/>
<wire x1="-0.9" y1="0.5" x2="0.9" y2="0.5" width="0.04" layer="51"/>
<wire x1="0.9" y1="0.5" x2="0.9" y2="-0.5" width="0.04" layer="51"/>
<wire x1="0.9" y1="-0.5" x2="-0.9" y2="-0.5" width="0.04" layer="51"/>
<wire x1="-0.9" y1="-0.5" x2="-0.9" y2="0.5" width="0.04" layer="51"/>
<smd name="1" x="-0.8" y="0" dx="0.8" dy="0.6" layer="1" rot="R90"/>
<smd name="2" x="0.8" y="0" dx="0.8" dy="0.6" layer="1" rot="R90"/>
<text x="-0.7" y="0.6" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-0.8" y="0.1" size="0.3048" layer="51" font="vector">&gt;NAME</text>
<text x="-0.8" y="-0.3" size="0.3048" layer="51" font="vector">&gt;VALUE</text>
<rectangle x1="-0.9" y1="-0.5" x2="0.9" y2="0.5" layer="39"/>
</package>
</packages>
<symbols>
<symbol name="PIN">
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-27.94" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-27.94" y1="-2.54" x2="-27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="-27.94" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<text x="-1.27" y="1.27" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="P$1" x="5.08" y="0" visible="off" length="middle" rot="R180"/>
</symbol>
<symbol name="C">
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.254" layer="94"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="0.762" width="0.254" layer="94"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="0.508" y2="0" width="0.254" layer="94"/>
<wire x1="0.508" y1="0" x2="0.508" y2="0.762" width="0.254" layer="94"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<text x="-1.778" y="2.032" size="0.8128" layer="95" font="vector">&gt;NAME</text>
<text x="-1.778" y="1.016" size="0.8128" layer="96" font="vector">&gt;VALUE</text>
<pin name="P$1" x="-2.54" y="0" visible="off" length="point"/>
<pin name="P$2" x="2.54" y="0" visible="off" length="point"/>
</symbol>
<symbol name="LED">
<wire x1="-2.54" y1="0" x2="-0.762" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="0.762" y2="0" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-0.762" x2="0.762" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="-0.762" y2="0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.016" x2="1.778" y2="1.778" width="0.127" layer="94"/>
<wire x1="1.778" y1="1.778" x2="1.778" y2="1.524" width="0.127" layer="94"/>
<wire x1="1.778" y1="1.524" x2="2.286" y2="2.032" width="0.127" layer="94"/>
<wire x1="2.286" y1="2.032" x2="2.032" y2="2.032" width="0.127" layer="94"/>
<wire x1="2.032" y1="2.032" x2="2.286" y2="1.778" width="0.127" layer="94"/>
<wire x1="2.286" y1="1.778" x2="2.286" y2="2.032" width="0.127" layer="94"/>
<wire x1="1.016" y1="0.508" x2="1.778" y2="1.27" width="0.127" layer="94"/>
<wire x1="1.778" y1="1.27" x2="1.778" y2="1.016" width="0.127" layer="94"/>
<wire x1="1.778" y1="1.016" x2="2.286" y2="1.524" width="0.127" layer="94"/>
<wire x1="2.286" y1="1.524" x2="2.286" y2="1.27" width="0.127" layer="94"/>
<wire x1="2.286" y1="1.27" x2="2.032" y2="1.524" width="0.127" layer="94"/>
<wire x1="2.032" y1="1.524" x2="2.286" y2="1.524" width="0.127" layer="94"/>
<circle x="0" y="0" radius="1.778" width="0.127" layer="94"/>
<text x="-1.778" y="2.032" size="0.8128" layer="95" font="vector">&gt;NAME</text>
<pin name="+" x="-2.54" y="0" visible="off" length="point"/>
<pin name="-" x="2.54" y="0" visible="off" length="point"/>
</symbol>
<symbol name="R">
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0.762" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0.762" x2="-0.508" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-0.762" x2="0" y2="0.762" width="0.254" layer="94"/>
<wire x1="0" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0.508" y1="-0.762" x2="1.016" y2="0.762" width="0.254" layer="94"/>
<wire x1="1.016" y1="0.762" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<text x="-1.778" y="2.032" size="0.8128" layer="95" font="vector">&gt;NAME</text>
<text x="-1.778" y="1.016" size="0.8128" layer="96" font="vector">&gt;VALUE</text>
<pin name="P$1" x="-2.54" y="0" visible="off" length="point"/>
<pin name="P$2" x="2.54" y="0" visible="off" length="point"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIN" prefix="PIN">
<gates>
<gate name="G$1" symbol="PIN" x="0" y="0"/>
</gates>
<devices>
<device name="1.2MM" package="PIN_1.2MM">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0.8MM" package="PIN_0.8MM">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1.0MM" package="PIN_1.0MM">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1.4MM" package="PIN_1.4MM">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.2MM" package="PIN_2.2MM">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP0603" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED0603" prefix="LED">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603_DIODE">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES0603" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="rectifier">
<description>&lt;b&gt;Rectifiers&lt;/b&gt;&lt;p&gt;
General Instrument, Semikron, Diotec, Fagor&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SOIC-4">
<description>&lt;b&gt;SOIC-4 Package&lt;/b&gt;&lt;p&gt;
Source: http://www.fairchildsemi.com/products/discrete/pdf/soic4_dim.pdf</description>
<wire x1="-2.35" y1="2" x2="2.35" y2="2" width="0.2032" layer="21"/>
<wire x1="2.35" y1="2" x2="2.35" y2="-2" width="0.2032" layer="21"/>
<wire x1="2.35" y1="-2" x2="-2.35" y2="-2" width="0.2032" layer="21"/>
<wire x1="-2.35" y1="-2" x2="-2.35" y2="2" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="0.97" x2="-1.27" y2="0.97" width="0.1016" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.955" y1="0.945" x2="1.59" y2="0.945" width="0.1016" layer="21"/>
<wire x1="-1.9" y1="-1.275" x2="-1.6" y2="-1.275" width="0.1016" layer="21" curve="-99.939481"/>
<wire x1="-1.3" y1="-1.275" x2="-1.6" y2="-1.275" width="0.1016" layer="21" curve="-99.939481"/>
<wire x1="1.275" y1="-1.275" x2="1.575" y2="-1.275" width="0.1016" layer="21" curve="-99.939481"/>
<wire x1="1.875" y1="-1.275" x2="1.575" y2="-1.275" width="0.1016" layer="21" curve="-99.939481"/>
<smd name="-" x="-1.3" y="3.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="+" x="1.3" y="3.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="~2" x="1.3" y="-3.05" dx="1.2" dy="1.2" layer="1" rot="R180"/>
<smd name="~1" x="-1.3" y="-3.05" dx="1.2" dy="1.2" layer="1" rot="R180"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.75" y1="2.05" x2="-0.95" y2="3.45" layer="51"/>
<rectangle x1="0.95" y1="2.05" x2="1.75" y2="3.45" layer="51"/>
<rectangle x1="0.95" y1="-3.45" x2="1.75" y2="-2.05" layer="51" rot="R180"/>
<rectangle x1="-1.75" y1="-3.45" x2="-0.95" y2="-2.05" layer="51" rot="R180"/>
<rectangle x1="-2.05" y1="1.5" x2="2.05" y2="1.8" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="DB">
<wire x1="-1.905" y1="-3.175" x2="-4.064" y2="-2.794" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-3.175" x2="-2.286" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-2.7178" y1="-4.0386" x2="-0.9398" y2="-2.2606" width="0.254" layer="94"/>
<wire x1="-1.905" y1="3.175" x2="-4.064" y2="2.794" width="0.254" layer="94"/>
<wire x1="-1.905" y1="3.175" x2="-2.286" y2="1.016" width="0.254" layer="94"/>
<wire x1="-2.7178" y1="4.0386" x2="-1.0668" y2="2.3876" width="0.254" layer="94"/>
<wire x1="3.175" y1="1.905" x2="2.794" y2="4.064" width="0.254" layer="94"/>
<wire x1="3.175" y1="1.905" x2="1.016" y2="2.286" width="0.254" layer="94"/>
<wire x1="2.3622" y1="1.016" x2="4.1402" y2="2.794" width="0.254" layer="94"/>
<wire x1="3.175" y1="-1.905" x2="2.794" y2="-4.064" width="0.254" layer="94"/>
<wire x1="3.175" y1="-1.905" x2="1.016" y2="-2.286" width="0.254" layer="94"/>
<wire x1="2.3622" y1="-1.0668" x2="4.1402" y2="-2.8448" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="3.175" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="-5.08" x2="-1.905" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="-3.2766" y1="-1.8034" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="-2.794" x2="-2.286" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-3.2766" y2="1.8034" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="2.794" x2="-2.286" y2="1.016" width="0.254" layer="94"/>
<wire x1="-1.905" y1="3.175" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="1.8034" y2="3.2766" width="0.1524" layer="94"/>
<wire x1="1.016" y1="2.286" x2="2.794" y2="4.064" width="0.254" layer="94"/>
<wire x1="3.175" y1="1.905" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-5.08" x2="1.8034" y2="-3.2766" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-2.286" x2="2.794" y2="-4.064" width="0.254" layer="94"/>
<text x="5.08" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="AC1" x="0" y="5.08" visible="off" length="point" direction="pas" rot="R270"/>
<pin name="+" x="5.08" y="0" visible="off" length="point" direction="pas" rot="R180"/>
<pin name="AC2" x="0" y="-5.08" visible="off" length="point" direction="pas" rot="R90"/>
<pin name="-" x="-5.08" y="0" visible="off" length="point" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MB*S" prefix="B">
<description>&lt;b&gt;Bridge Rectifier&lt;/b&gt;&lt;p&gt;
Source: http://www.fairchildsemi.com/ds/MB/MB6S.pdf</description>
<gates>
<gate name="G$1" symbol="DB" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC-4">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
<connect gate="G$1" pin="AC1" pad="~1"/>
<connect gate="G$1" pin="AC2" pad="~2"/>
</connects>
<technologies>
<technology name="1"/>
<technology name="2"/>
<technology name="4"/>
<technology name="6"/>
<technology name="8"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="_sg_misc" deviceset="ATTINY461" device=""/>
<part name="SIG" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="+/-" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="-/+" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="FSR1" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="FSR1A" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="FSR2" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="FSR2A" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="FSR3" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="FSR3A" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="AVR1" library="_sg_misc" deviceset="AVR6" device=""/>
<part name="C1" library="_sg_lib" deviceset="CAP0603" device="" value="1uF"/>
<part name="LED1" library="_sg_lib" deviceset="LED0603" device=""/>
<part name="LED2" library="_sg_lib" deviceset="LED0603" device=""/>
<part name="LED3" library="_sg_lib" deviceset="LED0603" device=""/>
<part name="LED4" library="_sg_lib" deviceset="LED0603" device=""/>
<part name="R1" library="_sg_lib" deviceset="RES0603" device="" value="100"/>
<part name="R2" library="_sg_lib" deviceset="RES0603" device="" value="100"/>
<part name="R3" library="_sg_lib" deviceset="RES0603" device="" value="100"/>
<part name="R4" library="_sg_lib" deviceset="RES0603" device="" value="100"/>
<part name="R5" library="_sg_lib" deviceset="RES0603" device="" value="10k"/>
<part name="R6" library="_sg_lib" deviceset="RES0603" device="" value="10k"/>
<part name="R7" library="_sg_lib" deviceset="RES0603" device="" value="10k"/>
<part name="SN2" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="SN1" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="NC" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="GND2" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="GND" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
<part name="C2" library="_sg_lib" deviceset="CAP0603" device="" value="1uF"/>
<part name="B1" library="rectifier" deviceset="MB*S" device="" technology="6"/>
<part name="GND1" library="_sg_lib" deviceset="PIN" device="1.2MM"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="33.02" y="71.12"/>
<instance part="SIG" gate="G$1" x="-17.78" y="172.72"/>
<instance part="+/-" gate="G$1" x="-17.78" y="162.56"/>
<instance part="-/+" gate="G$1" x="-17.78" y="152.4"/>
<instance part="FSR1" gate="G$1" x="83.82" y="88.9" rot="R270"/>
<instance part="FSR1A" gate="G$1" x="88.9" y="88.9" rot="R270"/>
<instance part="FSR2" gate="G$1" x="104.14" y="88.9" rot="R270"/>
<instance part="FSR2A" gate="G$1" x="109.22" y="88.9" rot="R270"/>
<instance part="FSR3" gate="G$1" x="124.46" y="88.9" rot="R270"/>
<instance part="FSR3A" gate="G$1" x="129.54" y="88.9" rot="R270"/>
<instance part="AVR1" gate="G$1" x="50.8" y="10.16" rot="R90"/>
<instance part="C1" gate="G$1" x="45.72" y="78.74"/>
<instance part="LED1" gate="G$1" x="190.5" y="43.18"/>
<instance part="LED2" gate="G$1" x="190.5" y="35.56"/>
<instance part="LED3" gate="G$1" x="190.5" y="27.94"/>
<instance part="LED4" gate="G$1" x="190.5" y="20.32"/>
<instance part="R1" gate="G$1" x="182.88" y="43.18"/>
<instance part="R2" gate="G$1" x="182.88" y="35.56"/>
<instance part="R3" gate="G$1" x="182.88" y="27.94"/>
<instance part="R4" gate="G$1" x="182.88" y="20.32"/>
<instance part="R5" gate="G$1" x="81.28" y="76.2" rot="R90"/>
<instance part="R6" gate="G$1" x="101.6" y="76.2" rot="R90"/>
<instance part="R7" gate="G$1" x="121.92" y="76.2" rot="R90"/>
<instance part="SN2" gate="G$1" x="167.64" y="68.58" rot="R270"/>
<instance part="SN1" gate="G$1" x="162.56" y="68.58" rot="R270"/>
<instance part="NC" gate="G$1" x="157.48" y="68.58" rot="R270"/>
<instance part="GND2" gate="G$1" x="149.86" y="68.58" rot="R270"/>
<instance part="GND" gate="G$1" x="142.24" y="68.58" rot="R270"/>
<instance part="C2" gate="G$1" x="45.72" y="86.36"/>
<instance part="B1" gate="G$1" x="25.4" y="109.22"/>
<instance part="GND1" gate="G$1" x="175.26" y="68.58" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$3" class="0">
<segment>
<wire x1="0" y1="101.6" x2="0" y2="152.4" width="0.1524" layer="91"/>
<pinref part="-/+" gate="G$1" pin="P$1"/>
<wire x1="0" y1="152.4" x2="-12.7" y2="152.4" width="0.1524" layer="91"/>
<pinref part="B1" gate="G$1" pin="AC2"/>
<wire x1="25.4" y1="104.14" x2="25.4" y2="101.6" width="0.1524" layer="91"/>
<wire x1="25.4" y1="101.6" x2="0" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="+/-" gate="G$1" pin="P$1"/>
<wire x1="-12.7" y1="162.56" x2="2.54" y2="162.56" width="0.1524" layer="91"/>
<wire x1="2.54" y1="162.56" x2="2.54" y2="119.38" width="0.1524" layer="91"/>
<wire x1="2.54" y1="119.38" x2="25.4" y2="119.38" width="0.1524" layer="91"/>
<pinref part="B1" gate="G$1" pin="AC1"/>
<wire x1="25.4" y1="119.38" x2="25.4" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V+" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="15_AVCC"/>
<pinref part="C1" gate="G$1" pin="P$2"/>
<wire x1="38.1" y1="35.56" x2="48.26" y2="35.56" width="0.1524" layer="91"/>
<wire x1="48.26" y1="35.56" x2="48.26" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="5_VCC"/>
<wire x1="48.26" y1="60.96" x2="48.26" y2="78.74" width="0.1524" layer="91"/>
<wire x1="38.1" y1="60.96" x2="48.26" y2="60.96" width="0.1524" layer="91"/>
<junction x="48.26" y="60.96"/>
<junction x="48.26" y="78.74"/>
<label x="48.26" y="81.28" size="1.778" layer="95" rot="R90"/>
<wire x1="48.26" y1="86.36" x2="48.26" y2="78.74" width="0.1524" layer="91"/>
<wire x1="48.26" y1="35.56" x2="48.26" y2="20.32" width="0.1524" layer="91"/>
<junction x="48.26" y="35.56"/>
<pinref part="AVR1" gate="G$1" pin="2_VCC"/>
<wire x1="48.26" y1="20.32" x2="53.34" y2="20.32" width="0.1524" layer="91"/>
<wire x1="53.34" y1="20.32" x2="53.34" y2="15.24" width="0.1524" layer="91"/>
<wire x1="48.26" y1="78.74" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="P$2"/>
<wire x1="81.28" y1="78.74" x2="101.6" y2="78.74" width="0.1524" layer="91"/>
<junction x="81.28" y="78.74"/>
<pinref part="R6" gate="G$1" pin="P$2"/>
<wire x1="101.6" y1="78.74" x2="121.92" y2="78.74" width="0.1524" layer="91"/>
<junction x="101.6" y="78.74"/>
<pinref part="R7" gate="G$1" pin="P$2"/>
<label x="111.76" y="78.74" size="1.778" layer="95"/>
<label x="45.72" y="60.96" size="1.778" layer="95"/>
<pinref part="C2" gate="G$1" pin="P$2"/>
<junction x="48.26" y="86.36"/>
<wire x1="48.26" y1="86.36" x2="48.26" y2="109.22" width="0.1524" layer="91"/>
<pinref part="B1" gate="G$1" pin="+"/>
<wire x1="48.26" y1="109.22" x2="30.48" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="P$1"/>
<wire x1="43.18" y1="78.74" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="6_GND"/>
<wire x1="43.18" y1="58.42" x2="38.1" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="16_AGND"/>
<wire x1="38.1" y1="33.02" x2="43.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="43.18" y1="33.02" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
<junction x="43.18" y="58.42"/>
<wire x1="43.18" y1="96.52" x2="43.18" y2="86.36" width="0.1524" layer="91"/>
<junction x="43.18" y="78.74"/>
<label x="43.18" y="81.28" size="1.778" layer="95" rot="R90"/>
<label x="33.02" y="106.68" size="1.778" layer="95"/>
<wire x1="43.18" y1="86.36" x2="43.18" y2="81.28" width="0.1524" layer="91"/>
<wire x1="43.18" y1="81.28" x2="43.18" y2="78.74" width="0.1524" layer="91"/>
<wire x1="43.18" y1="33.02" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
<junction x="43.18" y="33.02"/>
<pinref part="AVR1" gate="G$1" pin="6_GND"/>
<wire x1="43.18" y1="17.78" x2="63.5" y2="17.78" width="0.1524" layer="91"/>
<wire x1="63.5" y1="17.78" x2="63.5" y2="15.24" width="0.1524" layer="91"/>
<pinref part="FSR3A" gate="G$1" pin="P$1"/>
<wire x1="43.18" y1="81.28" x2="88.9" y2="81.28" width="0.1524" layer="91"/>
<wire x1="88.9" y1="81.28" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
<wire x1="109.22" y1="81.28" x2="129.54" y2="81.28" width="0.1524" layer="91"/>
<wire x1="129.54" y1="81.28" x2="129.54" y2="83.82" width="0.1524" layer="91"/>
<junction x="43.18" y="81.28"/>
<pinref part="FSR2A" gate="G$1" pin="P$1"/>
<wire x1="109.22" y1="83.82" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
<junction x="109.22" y="81.28"/>
<pinref part="FSR1A" gate="G$1" pin="P$1"/>
<wire x1="88.9" y1="83.82" x2="88.9" y2="81.28" width="0.1524" layer="91"/>
<junction x="88.9" y="81.28"/>
<label x="114.3" y="81.28" size="1.778" layer="95"/>
<pinref part="GND2" gate="G$1" pin="P$1"/>
<wire x1="43.18" y1="58.42" x2="142.24" y2="58.42" width="0.1524" layer="91"/>
<wire x1="142.24" y1="58.42" x2="149.86" y2="58.42" width="0.1524" layer="91"/>
<wire x1="149.86" y1="58.42" x2="149.86" y2="63.5" width="0.1524" layer="91"/>
<label x="132.08" y="58.42" size="1.778" layer="95"/>
<wire x1="149.86" y1="58.42" x2="175.26" y2="58.42" width="0.1524" layer="91"/>
<wire x1="175.26" y1="58.42" x2="193.04" y2="58.42" width="0.1524" layer="91"/>
<wire x1="193.04" y1="58.42" x2="193.04" y2="43.18" width="0.1524" layer="91"/>
<junction x="149.86" y="58.42"/>
<pinref part="LED1" gate="G$1" pin="-"/>
<wire x1="193.04" y1="43.18" x2="193.04" y2="35.56" width="0.1524" layer="91"/>
<junction x="193.04" y="43.18"/>
<pinref part="LED2" gate="G$1" pin="-"/>
<wire x1="193.04" y1="35.56" x2="193.04" y2="27.94" width="0.1524" layer="91"/>
<junction x="193.04" y="35.56"/>
<pinref part="LED3" gate="G$1" pin="-"/>
<wire x1="193.04" y1="27.94" x2="193.04" y2="20.32" width="0.1524" layer="91"/>
<junction x="193.04" y="27.94"/>
<pinref part="LED4" gate="G$1" pin="-"/>
<pinref part="C2" gate="G$1" pin="P$1"/>
<junction x="43.18" y="86.36"/>
<wire x1="43.18" y1="96.52" x2="17.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="17.78" y1="96.52" x2="17.78" y2="109.22" width="0.1524" layer="91"/>
<pinref part="B1" gate="G$1" pin="-"/>
<wire x1="17.78" y1="109.22" x2="20.32" y2="109.22" width="0.1524" layer="91"/>
<pinref part="GND" gate="G$1" pin="P$1"/>
<wire x1="142.24" y1="63.5" x2="142.24" y2="58.42" width="0.1524" layer="91"/>
<junction x="142.24" y="58.42"/>
<pinref part="GND1" gate="G$1" pin="P$1"/>
<wire x1="175.26" y1="63.5" x2="175.26" y2="58.42" width="0.1524" layer="91"/>
<junction x="175.26" y="58.42"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="1_PB0_MOSI/DI/SDA/OC1A#/PCINT8"/>
<pinref part="AVR1" gate="G$1" pin="4_MOSI"/>
<wire x1="38.1" y1="71.12" x2="58.42" y2="71.12" width="0.1524" layer="91"/>
<wire x1="58.42" y1="71.12" x2="58.42" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="2_PB1_MISO/DO/OC1A/PCINT9"/>
<pinref part="AVR1" gate="G$1" pin="1_MISO"/>
<wire x1="38.1" y1="68.58" x2="50.8" y2="68.58" width="0.1524" layer="91"/>
<wire x1="50.8" y1="68.58" x2="50.8" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="3_PB2_SCK/USCK/SCL/OC1B#/PCINT10"/>
<pinref part="AVR1" gate="G$1" pin="3_SCK"/>
<wire x1="38.1" y1="66.04" x2="55.88" y2="66.04" width="0.1524" layer="91"/>
<wire x1="55.88" y1="66.04" x2="55.88" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="10_PB7_ADC10/RESET#/PCINT15"/>
<pinref part="AVR1" gate="G$1" pin="5_RST"/>
<wire x1="38.1" y1="48.26" x2="60.96" y2="48.26" width="0.1524" layer="91"/>
<wire x1="60.96" y1="48.26" x2="60.96" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="FSR1" gate="G$1" pin="P$1"/>
<wire x1="83.82" y1="83.82" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="P$1"/>
<wire x1="81.28" y1="73.66" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<junction x="83.82" y="73.66"/>
<pinref part="U1" gate="G$1" pin="20_PA0_ADC0/DI/SDA/PCINT0"/>
<wire x1="38.1" y1="22.86" x2="83.82" y2="22.86" width="0.1524" layer="91"/>
<wire x1="83.82" y1="22.86" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="FSR2" gate="G$1" pin="P$1"/>
<wire x1="104.14" y1="83.82" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="P$1"/>
<wire x1="101.6" y1="73.66" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<junction x="104.14" y="73.66"/>
<pinref part="U1" gate="G$1" pin="19_PA1_ADC1/DO/PCINT1"/>
<wire x1="38.1" y1="25.4" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<wire x1="104.14" y1="25.4" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="FSR3" gate="G$1" pin="P$1"/>
<wire x1="124.46" y1="83.82" x2="124.46" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="P$1"/>
<wire x1="121.92" y1="73.66" x2="124.46" y2="73.66" width="0.1524" layer="91"/>
<junction x="124.46" y="73.66"/>
<pinref part="U1" gate="G$1" pin="18_PA2_ADC2/INT1/USCK/SCL/PCINT2"/>
<wire x1="38.1" y1="27.94" x2="124.46" y2="27.94" width="0.1524" layer="91"/>
<wire x1="124.46" y1="27.94" x2="124.46" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="14_PA4_ADC3/ICP0/PCINT4"/>
<wire x1="172.72" y1="38.1" x2="38.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="172.72" y1="38.1" x2="172.72" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="P$1"/>
<wire x1="172.72" y1="20.32" x2="180.34" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="38.1" y1="40.64" x2="175.26" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="13_PA5_ADC4/AIN2/PCINT5"/>
<wire x1="175.26" y1="40.64" x2="175.26" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="P$1"/>
<wire x1="175.26" y1="27.94" x2="180.34" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="12_PA6_ADC5/AIN0/PCINT6"/>
<wire x1="38.1" y1="43.18" x2="177.8" y2="43.18" width="0.1524" layer="91"/>
<wire x1="177.8" y1="43.18" x2="177.8" y2="35.56" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="P$1"/>
<wire x1="177.8" y1="35.56" x2="180.34" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="11_PA7_ADC6/AIN1/PCINT7"/>
<wire x1="38.1" y1="45.72" x2="180.34" y2="45.72" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="P$1"/>
<wire x1="180.34" y1="45.72" x2="180.34" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="40.64" y1="50.8" x2="40.64" y2="172.72" width="0.1524" layer="91"/>
<pinref part="SIG" gate="G$1" pin="P$1"/>
<wire x1="-12.7" y1="172.72" x2="40.64" y2="172.72" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="9_PB6_ADC9/INT0/T0/PCINT14"/>
<wire x1="38.1" y1="50.8" x2="40.64" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="8_PB5_ADC6/OC1D/CLK0/XTAL2/PCINT13"/>
<wire x1="38.1" y1="53.34" x2="167.64" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SN2" gate="G$1" pin="P$1"/>
<wire x1="167.64" y1="53.34" x2="167.64" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="7_PB4_ADC7/OC1D#/CLKI/XTAL1/PCINT12"/>
<wire x1="38.1" y1="55.88" x2="162.56" y2="55.88" width="0.1524" layer="91"/>
<pinref part="SN1" gate="G$1" pin="P$1"/>
<wire x1="162.56" y1="55.88" x2="162.56" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="P$2"/>
<pinref part="LED1" gate="G$1" pin="+"/>
<wire x1="185.42" y1="43.18" x2="187.96" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="P$2"/>
<pinref part="LED2" gate="G$1" pin="+"/>
<wire x1="185.42" y1="35.56" x2="187.96" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="P$2"/>
<pinref part="LED3" gate="G$1" pin="+"/>
<wire x1="185.42" y1="27.94" x2="187.96" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="P$2"/>
<pinref part="LED4" gate="G$1" pin="+"/>
<wire x1="185.42" y1="20.32" x2="187.96" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="4_PB3_OC1B/PCINT11"/>
<wire x1="38.1" y1="63.5" x2="139.7" y2="63.5" width="0.1524" layer="91"/>
<wire x1="139.7" y1="63.5" x2="139.7" y2="48.26" width="0.1524" layer="91"/>
<pinref part="NC" gate="G$1" pin="P$1"/>
<wire x1="139.7" y1="48.26" x2="157.48" y2="48.26" width="0.1524" layer="91"/>
<wire x1="157.48" y1="48.26" x2="157.48" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="113,1,181.889,43.7981,R1,,,,,"/>
<approved hash="113,1,181.889,36.1781,R2,,,,,"/>
<approved hash="113,1,181.889,28.5581,R3,,,,,"/>
<approved hash="113,1,181.889,20.9381,R4,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
