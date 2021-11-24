all:

volume:
	g++ -c -std=c++11 main.cpp split.cpp
	g++ -std=c++11 main.o split.o

temp_press:
	python3 temp_press.py > temp_press.dat

grep:
	grep -n TIMESTEP rescale.lammpstrj > check.dat

clean:
	rm *.lammpstrj log.lammps *.png *.dat *.sh.* *.out
