List of codes
build_data_v2.ipynb: build train data (snapshot_full.p and snashot_full_inter.p) and FOM data (FOM.p)
train_LS-ROM_v2_red-dim_[#].ipynb: train LS-ROM varying the reduced dimension, # (POD_v2_red-dim_[#].p)
train_NM-ROM_v2_swish_red-dim_[#].ipynb: train NM-ROM varying the reduced dimension, # (AE_v2_swish_red-dim_[#].p)
test_LS-ROM_v2_red-dim.ipynb: run LS-ROMs varying the reduced dimension, #
test_NM-ROM_v2_swish_red-dim.ipynb: run NM-ROMs varying the reduced dimension, #

In data directory,
snapshot_full.p: FOM solution snapshots
snashot_full_inter.p: FOM solutions and their intermediate values during nonlinear solver iternations.
FOM.p: Target parameter FOM solutions
PlotErr.ipynb: plot max. rel. errors vs reduced dimension

In model directory,
POD_v2_red-dim_[#].p: linear sbuspace, POD basis trained with # reduced dimension 
AE_v2_swish_red-dim_[#].p: nonlinear manifold, Autoencoder trained with # reduced dimension