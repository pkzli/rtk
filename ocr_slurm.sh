#! /bin/sh

#SBATCH --constraint=EPYC-7742
#SBATCH --job-name=ocr
#SBATCH --output=output.o%j
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=100
#SBATCH --partition=shared-cpu
#SBATCH --time=01:00:00

echo $SLURM_NODELIST
source /home/users/k/kuenzlip/virtualenvs/rtk/bin/activate

srun hostname

srun time python rtk-cpu.py
