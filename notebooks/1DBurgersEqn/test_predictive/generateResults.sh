#!/bin/bash

cp ../test_DEIM/model/* model/.
srun runipy build_data_v2_prediction.ipynb
