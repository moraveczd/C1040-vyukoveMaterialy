#
# $Id: multiaxis.dem,v 1.1 2007/06/09 22:10:45 sfeam Exp $
#

# Use the 3rd plot of the electronics demo to show off
# the use of multiple x and y axes in the same plot.
# 
set key center top title " "
set xlabel "Molalita [mol.kg^{-1}]"
#set xrange [0 : 11]
#set yrange [0 : 4]
set ylabel "Aktivitní koeficient"
set autoscale  y
set autoscale  x
#set style line 1 lt 2 lc rgb "red" lw 3
set border 3
set xtics nomirror
set ytics nomirror
show style line
set style line 1 lc rgb '#ff0000' lt 1 lw 2 pt 0 ps 0.5
set style line 2 lc rgb '#00ff00' lt 1 lw 2 pt 0 ps 0.5
set style line 3 lc rgb '#0000ff' lt 1 lw 2 pt 0 ps 0.5
set style line 4 lc rgb '#aa0099' lt 1 lw 2 pt 0 ps 0.5

set term pngcairo dashed size 800,600 crop
set output "activity_coef.png"

plot 'data.txt' using 1:2 smooth csplines with linespoints ls 1 title 'HCl',\
'data.txt' using 1:3 smooth csplines with linespoints ls 2 title 'NaOH',\
'data.txt' using 1:4 smooth csplines with linespoints ls 3 title 'KOH',\
'data.txt' using 1:5 smooth csplines with linespoints ls 4 title 'H_2SO_4'