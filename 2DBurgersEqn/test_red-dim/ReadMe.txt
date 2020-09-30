List of codes
build_data_high_Re.ipynb: build train data (snapshot_full.p and snapshot_full_inter_high_Re.p) and FOM data (FOM_high_Re.p)
train_LS-ROM_high_Re_red-dim_[#].ipynb: train LS-ROM varying the reduced dimension, # (POD_high_Re_red-dim_[#].p)
train_NM-ROM_high_Re_v3_red-dim_[#].ipynb: train NM-ROM varying the reduced dimension, # (AE_high_Re_v3_red-dim_[#].p)
test_LS-ROM_high_Re_red-dim.ipynb: run LS-ROMs varying the reduced dimension, #
test_NM-ROM_high_Re_v3_red-dim.ipynb: run NM-ROMs varying the reduced dimension, #

In data directory,
snapshot_full_high_Re.p: FOM solution snapshots
snapshot_full_inter_high_Re.p: FOM solutions and their intermediate values during nonlinear solver iternations.
FOM_high_Re.p: Target parameter FOM solutions
PlotErr.ipynb: plot max. rel. errors vs reduced dimension

In model directory,
POD_high_Re_red-dim_[#].p: linear sbuspace, POD basis trained with # reduced dimension 
AE_high_Re_v3_red-dim_[#].p: nonlinear manifold, Autoencoder trained with # reduced dimension