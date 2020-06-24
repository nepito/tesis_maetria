#!/bin/gnuplot
unset key
set title "Distancia La-O "
set xlabel "Base del Agua"
set ylabel "Distancia"
set xrange [-0.3:3.3]
plot "laC.dat" u 0:2:xtic(1) t "Distancia"
pause -1
set terminal postscript color enhanced
set output "laCdist.ps"
replot
unset output 

set key 
set title "Energia de hidratacion "
set xlabel "Base del Agua"
set ylabel "Energia (h/mol)"
set xrange [-0.3:3.3]
plot "laC.dat" u 0:3:xtic(1) t "S/C"
rep  "laC.dat" u 0:4:xtic(1) t "Counterpoise"
pause -1
set terminal postscript color enhanced
set output "laCeneh.ps"
replot
unset output 

