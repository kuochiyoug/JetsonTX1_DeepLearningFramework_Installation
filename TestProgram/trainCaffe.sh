cd $CAFFE_ROOT

sh ./data/mnist/get_mnist.sh
sh ./examples/mnist/create_mnist.sh
sh ./examples/mnist/train_lenet.sh
