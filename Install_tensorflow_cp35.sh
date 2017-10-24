sudo apt-get update -y
sudo apt-get install libcupti-dev -y
sudo apt-get install python3-pip python3-dev -y 

./jetson_clock.sh
pip install ./tensorflow_JetsonTX1_whl/tensorflow-1.3.0-cp35-cp35m-linux_aarch64.whl
