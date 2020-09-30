List of codes
build_data_v2.ipynb: build train data (snapshot_full.p and snashot_full_inter.p) and FOM data (FOM.p)
train_LS-ROM_v2.ipynb: train LS-ROM (POD_v2.p)
train_NM-ROM_v2_swish.ipynb: train NM-ROM (AE_v2_swish.p)
Test_DEIM_LS-ROM_v2_Using_full.ipynb: find hyper-reduction residual basis dimension and the number of samples for LS-ROM
Test_DEIM_NM-ROM_v2_swish_Using_full.ipynb: find hyper-reduction residual basis dimension and the number of samples for NM-ROM, store NMROM_residual_basis.p
LS-ROM_predictive_v2_Using_full_final.ipynb: Run FOM, LS-Galerkin, LS-LSPG, LS-LSPG-HR
NM-ROM_predictive_v2_swish_Using_full_final.ipynb: Run FOM, NM-Galerkin, NM-LSPG, NM-LSPG-HR

In data directory
snapshot_full.p: solution snapshots for training
snashot_full_inter.p: FOM solutions and their intermediate values during nonlinear solver iternations.
FOM.p: Target parameter solutions

In model directory,
POD_v2.p: linear sbuspace, POD basis
AE_v2_swish.p: nonlinear manifold, Autoencoder
NMROM_residual_basis.p: hyper-reduction residual basis for NM-ROM