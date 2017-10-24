# JetsonTX1 Deep Learning Framework Installation Scripts
The useful shell scripts and details about how to install any kind of famous deep learning framework. In this Scripts, I sort up the information on the Internet and provide following famous deep learning framework installation guides:

- **Tensorflow 1.3.0**
- **Chainer**
- **Caffe**
- **MXNet**

Please read the following instruction to proceed the installations.

### General Installation for environment construction
Before we start to install our amazing deep learning framework, it is sad to tell you that original JetsonTX1 Kit is not installed with correct environment(L4T24.1 Ubuntu14.04 32bit). Therefore, we need to flash up our TX1 to make sure the system is ready for famous deep learning tools.

- ** Install JetsonTX1 L4T24.1 (Ubuntu 16.04 64bits ARM version) **

     Go Nvidia TX1 site and following the flash up procdures. There is a run file called JetPack-L4T-3.1-linux-x64.run, you can use it directly.


After you flash up whole the system to L4T28.1, you should have following library installed:

- **L4T 24.1 an Ubuntu 14.04 64-bit variant (aarch64)**
- **CUDA 7.0**
- **cudnn 5.0.1**
- **OpenCV4Tegra**

and you are good to proceed the install action to your preferred deep learning framework.


### Installation of Tensorflow-GPU
There is two version for installing Tensorflow, choose the corresponding version that you want to use.

  For python2.7.X

    sh ./Install_tensorflow_cp27.sh
  For python3.5.X

    sh ./Install_tensorflow_cp35.sh

### Installation of Chainer
    sh ./InstallChainer.sh

### Installation of Caffe
    sh ./InstallCaffeCuDNN.sh

### Installation of MXNet-GPU
    sh ./InstallMxNet.sh
