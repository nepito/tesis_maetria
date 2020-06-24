#!/bin/gnuplot
unset key
set title "Distancia Lu-O "
set xlabel "Base del Hidrogeno"
set ylabel "Distancia"
set xrange [-0.3:3.3]
plot "luCB.dat" u 0:2:xtic(1) t "Distancia"
pause -1
set terminal postscript color enhanced
set output "luCBdist.ps"
replot
unset output 

set key left 
set title "Energia de hidratacion "
set xlabel "Base del Hidrogeno"
set ylabel "Energia (h/mol)"
set xrange [-0.3:3.3]
plot "luCB.dat" u 0:3:xtic(1) t "S/C"
rep  "luCB.dat" u 0:4:xtic(1) t "Counterpoise"
pause -1
set terminal postscript color enhanced
set output "luCBeneh.ps"
replot
unset output 

