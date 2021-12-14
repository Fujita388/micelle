set term pdf
set out "mic_674.pdf"
set yrange[0.55:0.80]
set xlabel "t" font "Arial-Italic,15"
set ylabel "T" font "Arial-Italic,15"

f(x) = a * (1-exp(-x/b)) + c
a = 0.11
b = 10000
c = 0.6
fit f(x) "mic_674.dat" via a, b, c
p "mic_674.dat", f(x)
