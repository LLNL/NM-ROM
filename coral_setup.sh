#!/bin/bash

module load gcc/8.3.1
# https://github.com/pytorch/pytorch/issues/50439
module load cuda/10.1.243

# build OpenBLAS
# can optionally select CPU, see https://github.com/xianyi/OpenBLAS/wiki/User-Manual
wget http://github.com/xianyi/OpenBLAS/archive/v0.3.6.tar.gz
mv v0.3.6.tar.gz OpenBLAS-0.3.6.tar.gz
tar -zxf OpenBLAS-0.3.6.tar.gz
pushd OpenBLAS-0.3.6
  make FC=gfortran
  make PREFIX=`pwd`/install install
popd

# tips on how to build pytorch for CORAL systems:
# https://code.ornl.gov/jqyin/mldl-hpc/tree/master/utils
# https://developer.ibm.com/tutorials/install-pytorch-on-power/

export LD_LIBRARY_PATH=`pwd`/OpenBLAS-0.3.6/install/lib:$LD_LIBRARY_PATH

python3 -m venv --system-site-packages nm-rom
source nm-rom/bin/activate
pip install --upgrade pip
pip install --upgrade future
pip install dataclasses
pip install cython
pip install typing_extensions

git clone --recursive https://github.com/numpy/numpy
cd numpy
    git checkout v1.19.5
    git submodule sync
    git submodule update --init --recursive
    python setup.py build
    python setup.py install
cd ..

# git clone --recursive https://github.com/scipy/scipy
# cd scipy
#     git checkout v1.5.4
#     git submodule sync
#     git submodule update --init --recursive
#     python setup.py build
#     python setup.py install
# cd ..

# git clone --recursive https://github.com/pandas-dev/pandas
# cd pandas
#     git checkout v1.2.1
#     git submodule sync
#     git submodule update --init --recursive
#     python setup.py build
#     python setup.py install
# cd ..

# download pytorch and its dependencies, build wheel, install wheel in virtualenv
git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
    # checkout a dev version ...
    git checkout 8b27c2ccca9cbe1f0a375091a0431b3d904f0cc2
    # tag v1.7.1 is broken on PPCs
    # https://github.com/pytorch/pytorch/pull/51217

    # https://github.com/pytorch/pytorch/issues/29444
    # update submodules to match version we checked out
    git submodule sync
    git submodule update --init --recursive

    export PYTORCH_BUILD_VERSION=1.7.1
    export PYTORCH_BUILD_NUMBER=1
    # add "cmake_policy(SET CMP0074 NEW)" to top of CMakeLists.txt
    # this seems to be necessary so that setting CUDNN_ROOT and/or NCCL_ROOT_DIR work
    sed -e '2 icmake_policy(SET CMP0074 NEW)' -i CMakeLists.txt

    # version string for pytorch wheel is wrong in 1.3.0 and 1.3.1 source tags
    #   sed -e "s/^version = '1.3.0a0'$/version = '1.3.1'/g" -i setup.py

    # point to system install of CUDNN
    export USE_CUDNN=1
    export CUDNN_HOME=/collab/usr/global/tools/nvidia/cudnn/blueos_3_ppc64le_ib_p9/cudnn-7.5.1.10
    export CUDNN_ROOT=${CUDNN_HOME}
    export CUDNN_INCLUDE_DIR=${CUDNN_HOME}/include
    export CUDNN_LIB_DIR=${CUDNN_HOME}/lib
    export LD_LIBRARY_PATH=${CUDNN_HOME}/lib:$LD_LIBRARY_PATH

    # point to system install of NCCL
    export USE_NCCL=1
    export NCCL_ROOT_DIR=/usr/global/tools/nvidia/nccl/blueos_3_ppc64le_ib/nccl_2.4.2-1+cuda10.1_ppc64le
    export LD_LIBRARY_PATH=${NCCL_ROOT_DIR}/lib:$LD_LIBRARY_PATH

    # build the pytorch wheel file
    python setup.py build
    python setup.py install

    pip install torchvision
cd ..

pip install ipykernel
python -m ipykernel install --user --name nm-rom --display-name "NM-ROM"
pipi install nbcovert
