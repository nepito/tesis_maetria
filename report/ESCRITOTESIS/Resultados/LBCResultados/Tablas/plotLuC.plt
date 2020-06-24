#!/bin/gnuplot
unset key
set title "Distancia Lu-O "
set xlabel "Base del Agua"
set ylabel "Distancia"
set xrange [-0.3:3.3]
plot "luC.dat" u 0:2:xtic(1) t "Distancia"
pause -1
set terminal postscript color enhanced
set output "luCdist.ps"
replot
unset output 

set key 
set title "Energia de hidratacion "
set xlabel "Base del Agua"
set ylabel "Energia (h/mol)"
set xrange [-0.3:3.3]
plot "luC.dat" u 0:3:xtic(1) t "S/C"
rep  "luC.dat" u 0:4:xtic(1) t "Counterpoise"
pause -1
set terminal postscript color enhanced
set output "luCeneh.ps"
replot
unset output 

