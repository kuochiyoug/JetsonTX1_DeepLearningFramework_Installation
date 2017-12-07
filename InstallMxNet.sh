installation_folder=$(pwd)
cd $HOME

sudo apt-get update
sudo apt-get install -y wget python
wget https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py

sudo apt-get install -y libopenblas-dev liblapack-dev

#Clone the source code
git clone --recursive https://github.com/apache/incubator-mxnet.git mxnet --branch 0.11.0
cd $HOME/mxnet/
MXNET_ROOT=$HOME/mxnet/


#Replace the config file that cannot work
rm $MXNET_ROOT/make/config.mk
cp $installation_folder/mxnet0_11_JetsonTX1/config.mk $MXNET_ROOT
cp $installation_folder/mxnet0_11_JetsonTX1/config.mk $MXNET_ROOT/make/
rm $MXNET_ROOT/mshadow/make/mshadow.mk
cp $installation_folder/mxnet0_11_JetsonTX1/mshadow.mk $MXNET_ROOT/mshadow/make/

#Make and install
make -j $(nproc) USE_OPENCV=1 USE_BLAS=openblas USE_CUDA=1 USE_CUDA_PATH=/usr/local/cuda USE_CUDNN=1

#Install the MXNet python binding
sudo apt-get install -y python-dev python-setuptools python-numpy python-pip
cd $MXNET_ROOT/python
sudo pip install --upgrade pip
sudo pip install -e .

#Optional, needed for graph visualization using mxnet.viz package
sudo apt-get install graphviz
sudo pip install graphviz
