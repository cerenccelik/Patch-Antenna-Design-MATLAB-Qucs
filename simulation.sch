<Qucs Schematic 25.2.99>
<Properties>
  <View=-232,-131,1049,745,0.851364,0,152>
  <Grid=10,10,1>
  <DataSet=simulation.dat>
  <DataDisplay=simulation.dpl>
  <OpenDisplay=0>
  <Script=simulation.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <SUBST Subst1 1 -10 120 -30 24 0 0 "4.4" 1 "1.6 mm" 1 "35 um" 1 "0.02" 1 "0.022e-6" 1 "0.15e-6" 1>
  <Pac P1 1 130 120 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <MLIN MS1 1 260 90 -26 15 0 0 "Subst1" 1 "3.06 mm" 1 "10 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS2 1 370 90 -26 15 0 0 "Subst1" 1 "0.37 mm" 1 "18.17 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <R R1 1 470 90 -26 15 0 0 "307 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 130 160 0 0 0 0>
  <GND * 1 530 150 0 0 0 0>
  <.SP SP1 1 -40 280 0 50 0 0 "lin" 1 "2 GHz" 1 "3 GHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <NutmegEq NutmegEq1 1 110 290 -21 14 0 0 "ALL" 1 "s11db=db(S_1_1)" 1>
  <Pac P2 1 620 130 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <R R2 1 730 90 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 620 160 0 0 0 0>
  <GND * 1 820 160 0 0 0 0>
</Components>
<Wires>
  <130 90 230 90 "" 0 0 0 "">
  <290 90 340 90 "" 0 0 0 "">
  <400 90 440 90 "" 0 0 0 "">
  <500 90 530 90 "" 0 0 0 "">
  <530 90 530 150 "" 0 0 0 "">
  <130 150 130 160 "" 0 0 0 "">
  <620 90 620 100 "" 0 0 0 "">
  <620 90 700 90 "" 0 0 0 "">
  <760 90 820 90 "" 0 0 0 "">
  <820 90 820 160 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 250 420 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11db" #0000ff 1 3 0 0 0>
	  <Mkr 2.425e+09 162 -95 3 0 0>
	  <Mkr 2.425e+09 162 -95 3 0 0>
	  <Mkr 2.425e+09 162 -95 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
