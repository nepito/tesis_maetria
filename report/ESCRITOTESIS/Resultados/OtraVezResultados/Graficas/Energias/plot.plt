#!/bin/gnuplot
set key spacing 1.3
set key invert
set title "Energia de Hidratacion"  
set xlabel "Lant\341nido"
set ylabel "Energia {/Symbol D}E_H [eV]"
set xrange [-0.3:2.3]
plot "energiabinding.dat" u 0:4 t "MP2" lc 10 pt 2 
replot "energiabinding.dat" u 0:7:xtic(1) t "MP2^{4}"  lc 3 pt 11
#replot "energiabinding.dat" u 0:1:xtic(1) t "MP2^{/Symbol \247,1} R(Ln-O)[Ln\267(H_2O)_9]^{+3}"  lc 16 pt 11
pause -1
set encoding iso_8859_1
set terminal postscript color enhanced
set output "../eneBin.ps"
replot
unset output 

#set key invert
#set title "Distancia R(Ln-O)[Ln\267(H_2O)_{8+1}]^{+3}\n" 
#set xlabel "Lant\341nido"
#set ylabel "Distancia [\305]"
#set xrange [-0.3:15.3]
#plot "AGraficar.dat" u 6:8 t    "^{[7]} R(Ln-O) {Exp}" lc 13 pt 3
#replot "AGraficar.dat" u 6:7 t "^{[3]} R(Ln-O) Exp" lc 10 pt 2 
#replot "AGraficar.dat" u 0:23 t "^{[8]} R(Ln-O)[Ln\267(H_2O)_{8+1}]^{+3}"  lc 2 pt 7
#replot "AGraficar.dat" u 6:10 t "^{[7]} R(Ln-O)[Ln\267(H_2O)_{8+0}]^{+3}"    lc 3 pt 7
#replot "AGraficar.dat" u 0:21 t "B3P86/CEP-31G R(Ln-O)[Ln\267(H_2O)_{8+1}]^{+3}"  lc 4 pt 9
#replot "AGraficar.dat" u 0:17 t "MP2/SCRECP* R(Ln-O)[Ln\267(H_2O)_{8+1}]^{+3}"  lc 2 pt 9
#replot "AGraficar.dat" u 0:19 t "MP2/CEP-31G R(Ln-O)[Ln\267(H_2O)_{8+1}]^{+3}"  lc 3 pt 9
#replot "AGraficar.dat" u 0:4:xtic(1) t "MP2/LCRECP R(Ln-O)[Ln\267(H_2O)_{8+1}]^{+3}"  lc 16 pt 11
#pause -1
#set encoding iso_8859_1
#set terminal postscript color enhanced
#set output "lnO8dist.ps"
#replot
#unset output 

#set key left 
#set title "Distancia Ln-H"
#set xlabel "Lant\341nido"
#set ylabel "Distancia [\305]"
#set xrange [-0.3:15.3]
#plot "AGraficar.dat" u 0:3:xtic(1) t "R(Ln-H)Ln(H_2O)_9^{+3}"
#rep  "AGraficar.dat" u 0:5:xtic(1) t "R(Ln-H)Ln(H_2O)_9^{+3}"
#pause -1
#set encoding iso_8859_1
#set terminal postscript color enhanced
#set output "lnHdist.ps"
#replot
#unset output 

