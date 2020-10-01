Please read the attached NMROM paper first.

TO INSTALL ON LC ENVIRONMENTS:
1. ./setup.sh

TO TRAIN/GENERATE DATA ON LC ENVIRONMENTS:
1. source nm-rom/bin/activate (source nm-rom/bin/activate.csh for csh shells)
2. Run 'sbatch generateResults.sh' at any level directory within notebooks to generate
all the data and models for LS-ROM and NM-ROM that lies within its path.

TO TEST MODELS ON LC ENVIRONMENTS:
1. Start jupyterlab: 
	a. CZ: https://lc.llnl.gov/jupyter/hub/user/[user]/lab
	b. RZ: https://rzlc.llnl.gov/jupyter/hub/user/[user]/lab
2. Switch to the NM-ROM kernel on jupyterlab.
3. Run any testing files you would like on jupyterlab.
to create mat files, plots, etc.

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
