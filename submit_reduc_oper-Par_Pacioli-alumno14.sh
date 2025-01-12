#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno14/LAB5		
#SBATCH -J submit_lab5
#SBATCH --output=%u-%j.out
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=NONE

module load anaconda/2023.03
echo "* solucion: *"
echo
ipython reduc-operation-array.ipynb
echo

module unload anaconda/2023.03
