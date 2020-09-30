List of codes
build_data_high_Re.ipynb: build train data (snapshot_full_high_Re.p and snapshot_full_inter_high_Re.p) and FOM data (FOM_high_Re.p)
train_LS-ROM_high_Re.ipynb: train LS-ROM (POD_high_Re.p)
train_NM-ROM_high_Re_v3_batch_240.ipynb: train NM-ROM (AE_high_Re_v3_batch_240.p)
Test_DEIM_LS-ROM_high_Re_Using_full_inter.ipynb: find hyper-reduction residual basis dimension and the number of samples for LS-ROM
Test_DEIM_NM-ROM_high_Re_v3_Using_full_inter_batch_240.ipynb: find hyper-reduction residual basis dimension and the number of samples for NM-ROM, store NMROM_residual_basis.p
LS-ROM_high_Re_final.ipynb: Run FOM, LS-Galerkin, LS-LSPG, LS-LSPG-HR
NM-ROM_high_Re_v3_batch_240_final.ipynb: Run FOM, NM-Galerkin, NM-LSPG, NM-LSPG-HR

In data directory
snapshot_full_high_Re.p: solution snapshots for training
snapshot_full_inter_high_Re.p: FOM solutions and their intermediate values during nonlinear solver iternations.
FOM_high_Re.p: Target parameter solutions

In model directory,
POD_high_Re.p: linear sbuspace, POD basis
AE_high_Re_v3_batch_240.p: nonlinear manifold, Autoencoder
NMROM_residual_basis.p: hyper-reduction residual basis for NM-ROM