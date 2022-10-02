set term pdf
set out "gas_volume_T0.7.pdf"
#set xrange[0:150000]
#set yrange[0.55:0.80]
set xlabel "t" font "Arial-Italic,15"
set ylabel "T" font "Arial-Italic,15"

f(x) = a * (1-exp(-x/b)) + c
a = 0.2
b = 80
c = 0.4
fit f(x) "gas_volume_T0.7.dat" via a, b, c
p "gas_volume_T0.7.dat", f(x)
