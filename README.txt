Please read the attached NMROM paper first.

TO INSTALL:
1. Clone this repo in a directory that has a lot of space. /usr/workspace/* is a good candidate.
2. ./setup.sh

There are two ways to generate data and train the models, by batch or individually.
Generating individually is recommended due to the long GPU training time, but the batch option is available, if needed.

TO TRAIN/GENERATE DATA BY BATCH (SUPPRESSES PLOTS AND OUTPUT):
1. source nm-rom/bin/activate (source nm-rom/bin/activate.csh for csh shells)
2. There are generateResults.sh at every subdirectory within notebooks.
3. If on LC, run 'sbatch generateResults.sh' at any level directory within notebooks to generate
all the data and models for LS-ROM and NM-ROM that lies within its path. If not on LC, run './generateResults.sh'
NOTE: test_DEIM must be generated before test_predictive.

TO RUN TRAINING/GENERATE DATA INDIVIDUALLY:
1. If on LC: mxterm 1 1 440
2. source nm-rom/bin/activate
3. In the directory you wish to run files: jupyter nbconvert --to script *.ipynb
4. In the directory you wish to run files: sed -i '/ipython/d' ./*.py
5. To suppress plots: sed -i '/plt.show()/d' ./*.py
6. python [FILE].py
NOTE: You may have to delete any corrupted checkpoint files (rm -rf checkpoint*) if the last run was aborted.
test_DEIM must be generated before test_predictive, and the data and models must be copied over from test_DEIM to test_predictive.

There are two ways to test the models, on Jupyterlab or on the command-line.

TO TEST MODELS ON JUPYTERLAB ON LC ENVIRONMENTS:
1. Start jupyterlab:
	a. CZ: https://lc.llnl.gov/jupyter/hub/user/[user]/lab
	b. RZ: https://rzlc.llnl.gov/jupyter/hub/user/[user]/lab
2. Switch to the NM-ROM kernel on jupyterlab.
3. Run any testing files you would like on jupyterlab
to create mat files, plots, etc. Skip any files starting with build_* or train_* as they are handled by generateResults.sh

TO TEST MODELS ON THE COMMAND-LINE:
1. Follow the instructions underneath 'TO RUN TRAINING/GENERATE DATA INDIVIDUALLY'.

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
