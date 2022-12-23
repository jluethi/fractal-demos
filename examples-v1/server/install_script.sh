VERSION="1.0.0b9"

ENVNAME=fractal-client-$VERSION
conda deactivate
conda remove --name $ENVNAME -y --all
conda create --name $ENVNAME python==3.8.13 -y
conda activate $ENVNAME
conda update pip -y

pip install fractal-server[slurm]==$VERSION
