all:

lab:
	qsub bubble_with_surf_lab.sh

ohtaka:
	sbatch bubble_with_surf_ohtaka.sh

kugui:
	qsub bubble_with_surf_kugui.sh

clean:
	$(RM) *.lammpstrj *.lammps *.out *.atoms execute_lab.sh.* with_surf.* *.log
