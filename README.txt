Please read the attached NMROM paper first.

TO INSTALL ON LC ENVIRONMENTS:
1. ./setup.sh

TO RUN ON LC ENVIRONMENTS:
1. source nm-rom/bin/activate
2. Open up an mxterm: "mxterm 1 1 440". This is required to use the GPU.
3. Run any file you would like using "jupyter nbconvert --to script --inplace --execute [FILENAME].ipynb"

Note: You have to generate data first and then train models.

General steps are
Step 1: Build data for ROMs
Step 2: Train models
Step 3: Find hyper-reduction residual basis dimension and the number of residual samples
Step 4: Solve problems with ROMs

Numerical examples in the paper include
ROMs vs reduced dimension (test_red-dim)
ROMs vs number of train parameter instances (test_nparam)
Hyper-reduction of ROMs with the target parameter being 1 (test_DEIM)
Hyper-reduced ROMs vs target parameter (test_predictive)


If you have any questions, please email me at youngkyu_kim@berkeley.edu or kim101@llnl.gov
