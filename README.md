# NM-ROM
NM-ROM facilitates efficient hyper-reduction for nonlinear manifold reduced order models, marking the first successful application of hyper-reduction in this framework. Traditional linear subspace reduced order models (LS-ROMs) accelerate physical simulations when the intrinsic solution space lies within a small-dimensional subspace, characterized by a fast-decaying Kolmogorov n-width. However, such models inadequately approximate solutions for advection-dominated phenomena, such as traffic flow, atmospheric flows, and air flow over vehicles. To address these cases, we developed a physics-informed neural network ROM—namely, nonlinear manifold ROM (NM-ROM)—that can better approximate high-fidelity model solutions within a smaller latent space dimension than LS-ROMs. 

Our method leverages existing numerical techniques used to solve the corresponding full order models and achieves efficiency through a novel hyper-reduction technique applied within the NM-ROM framework. Numerical results demonstrate that neural networks can learn a more efficient latent space representation for advection-dominated data from 1D and 2D Burgers' equations. This approach results in speedups of up to 2.6 times for 1D Burgers' equations and 11.7 times for 2D Burgers' equations by appropriately handling the nonlinear terms through hyper-reduction. Additionally, we derive a posteriori error bounds for the NM-ROMs that incorporate the effects of the hyper-reduced operators.

## Citation
[Kim, Youngkyu, Youngsoo Choi, David Widemann, and Tarek Zohdi. "A fast and accurate physics-informed neural network reduced order model with shallow masked autoencoder." Journal of Computational Physics 451 (2022): 110841.](https://doi.org/10.1016/j.jcp.2021.110841)

## Installation
- Clone this repo in a directory that has a lot of space. For LC users, /usr/workspace/* is a good candidate.
- Execute ./setup.sh

## Generating data
There are two ways to generate data and train the models, by batch or individually.
Generating individually is recommended due to the long GPU training time, but the batch option is available, if needed.

### TO TRAIN/GENERATE DATA BY BATCH (SUPPRESSES PLOTS AND OUTPUT):
- source nm-rom/bin/activate (source nm-rom/bin/activate.csh for csh shells)
- There are generateResults.sh at every subdirectory within notebooks.
- If on LC, run 'sbatch generateResults.sh' at any level directory within notebooks to generate
all the data and models for LS-ROM and NM-ROM that lies within its path. If not on LC, run './generateResults.sh'
NOTE: test_DEIM must be generated before test_predictive.

### TO RUN TRAINING/GENERATE DATA INDIVIDUALLY:
- If on LC: mxterm 1 1 440
- source nm-rom/bin/activate
- In the directory you wish to run files: jupyter nbconvert --to script *.ipynb
- In the directory you wish to run files: sed -i '/ipython/d' ./*.py
- To suppress plots: sed -i '/plt.show()/d' ./*.py
- python [FILE].py
NOTE: You may have to delete any corrupted checkpoint files (rm -rf checkpoint*) if the last run was aborted.
test_DEIM must be generated before test_predictive, and the data and models must be copied over from test_DEIM to test_predictive.

## Testing models
There are two ways to test the models, on Jupyterlab or on the command-line.

### TO TEST MODELS ON JUPYTERLAB ON LC ENVIRONMENTS:
- Start jupyterlab:
	a. CZ: https://lc.llnl.gov/jupyter/hub/user/[user]/lab
	b. RZ: https://rzlc.llnl.gov/jupyter/hub/user/[user]/lab
- Switch to the NM-ROM kernel on jupyterlab.
- Run any testing files you would like on jupyterlab
to create mat files, plots, etc. Skip any files starting with build_* or train_* as they are handled by generateResults.sh

### TO TEST MODELS ON THE COMMAND-LINE:
- Follow the instructions underneath 'TO RUN TRAINING/GENERATE DATA INDIVIDUALLY'.

Note: You have to generate data first and then train models.

## General steps
- Step 1: Build data for ROMs
- Step 2: Train models
- Step 3: Find hyper-reduction residual basis dimension and the number of residual samples
- Step 4: Solve problems with ROMs

## Numerical examples 
- ROMs vs reduced dimension (test_red-dim)
- ROMs vs number of train parameter instances (test_nparam)
- Hyper-reduction of ROMs with the target parameter being 1 (test_DEIM)
- Hyper-reduced ROMs vs target parameter (test_predictive)

## Authors
- Youngkyu Kim (Korea Institute of Science and Technology, kim101@llnl.gov)
- Youngsoo Choi (Lawrence Livermore National Laboratory, choi15@llnl.gov)
- David Widemann (Lawrence Livermore National Laboratory, widemann1@llnl.gov)
- Tarek Zohdi (UC Berkeley, zohdi@berkeley.edu)

## Aknowledgement
Y. Kim and Y. Choi were supported for this work by the US Department of Energy under the LDRD program (20-FS-007). Y. Kim was also supported for this work through generous funding from DTRA. Lawrence Livermore National Laboratory is operated by Lawrence Livermore National Security, LLC, for the U.S. Department of Energy, National Nuclear Security Administration under Contract DE-AC52-07NA27344.

## License
DD-NM-ROM is distributed under the terms of the MIT license. All new contributions must be made under the MIT. See
[LICENSE-MIT](https://github.com/LLNL/NM-ROM/blob/main/LICENSE)

LLNL Release Nubmer: LLNL-CODE-867904
