set term pdf
set out "gas_volume.pdf"
#set xrange[0:150000]
#set yrange[0.55:0.80]
set xlabel "t" font "Arial-Italic,15"
set ylabel "V" font "Arial-Italic,15"

p "gas_volume_T0.6.dat" pt 6 ps 0.3 lt rgb 'red' t "T=0.6" ,\
  "gas_volume_T0.7.dat" pt 2 ps 0.3 lt rgb 'blue' t "T=0.7",\
  "gas_volume_T0.8.dat"pt 1 ps 0.3 lt rgb 'black' t "T=0.8"
