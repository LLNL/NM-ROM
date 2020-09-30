#!/bin/bash

cp ../test_DEIM/model/* model/.
srun runipy build_data_high_Re_prediction.ipynb
