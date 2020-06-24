#!/bin/gnuplot
unset key
set title "Distancia La-O "
set xlabel "Base del Hidrogeno"
set ylabel "Distancia"
set xrange [-0.3:3.3]
plot "laCB.dat" u 0:2:xtic(1) t "Distancia"
pause -1
set terminal postscript color enhanced
set output "laCBdist.ps"
replot
unset output 

set key left 
set title "Energia de hidratacion "
set xlabel "Base del Hidrogeno"
set ylabel "Energia (h/mol)"
set xrange [-0.3:3.3]
plot "laCB.dat" u 0:3:xtic(1) t "S/C"
rep  "laCB.dat" u 0:4:xtic(1) t "Counterpoise"
pause -1
set terminal postscript color enhanced
set output "laCBeneh.ps"
replot
unset output 

