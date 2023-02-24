VERSION="1.0.8"

ENVNAME=fractal-server-$VERSION
conda deactivate
conda remove --name $ENVNAME -y --all
conda create --name $ENVNAME python==3.9 -y
conda activate $ENVNAME
conda update pip -y

pip install "fractal-server[slurm]"==$VERSION
