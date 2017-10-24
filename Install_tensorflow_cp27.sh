sudo apt-get update -y
sudo apt-get install libcupti-dev -y
sudo apt-get install python-pip python-dev -y 

./jetson_clock.sh

pip install ./tensorflow_JetsonTX1_whl/tensorflow-1.3.0-cp27-cp27mu-linux_aarch64.whl
