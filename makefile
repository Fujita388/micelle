all:

lab:
	qsub execte_lab.sh

ohtaka:
	sbatch execute_ohtaka.sh

kugui:
	qsub execute_kugui.sh

clean:
	$(RM) *.lammpstrj *.lammps *.out *.atoms execute_lab.sh.* with_surf.* output.*
