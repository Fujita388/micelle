set term png
set out "fit.png"
set xrange[0:800]
set yrange[0:0.2]

f(x) = a * (1-exp(-x/b))
a = 0.15
b = 30
fit f(x) "volume.dat" via a, b
p "volume.dat", f(x)
