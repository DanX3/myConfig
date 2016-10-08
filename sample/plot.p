#setting the range of the plot, auto by default
#set xrange [0:16]
#set yrange [0:16]
set autoscale

#setting labels
set title 'Title'
set xlabel 'X axis'
set ylabel 'Y axis'

#set the legend on the top left corner
set key left top

#style settings
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set terminal pngcairo size 350,262.5 enhanced font 'Verdana,10'
set output "plot.png"

#sample plot command
#plot 'data.dat' using 1:($2/$3) title '1e4' with lines
