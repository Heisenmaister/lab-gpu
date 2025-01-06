#!/bin/bash
#SBATCH -p bohr-gpu
#SBATCH --chdir=/home/alumno14/LAB5		
#SBATCH -J submit_lab5
#SBATCH --output=%u-%j.out
#SBATCH --mail-type=NONE

module load anaconda/2023.03
echo "* solucion: *"
echo
ipython reduc-operation-array_gpu.ipynb $1
echo

module unload anaconda/2023.03