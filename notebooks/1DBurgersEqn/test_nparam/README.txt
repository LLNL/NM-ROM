List of codes
build_data_v2_nparam.ipynb: build train data varying the number of parameters, # (snapshot_full_nparam_[#].p) and FOM data (FOM.p)
train_LS-ROM_v2_nparam_[#].ipynb: train LS-ROM varying the number of parameters, # (POD_v2_nparam_[#].p)
train_NM-ROM_v2_swish_nparam_[#].ipynb: train NM-ROM varying the number of parameters, # (AE_v2_swish_nparam_[#].p)
test_LS-ROM_v2_nparam.ipynb: run LS-ROMs varying the number of parameters, #
test_NM-ROM_v2_swish_nparam.ipynb: run NM-ROMs varying the number of parameters, #

In data directory,
snapshot_full_nparam_[#].p: solution snapshots with # parameters for training
FOM.p: Target parameter solutions
PlotErr.ipynb: plot max. rel. errors vs number of parameter instances

In model directory,
POD_v2_nparam_[#].p: linear sbuspace, POD basis trained with snapshot_full_nparam_[#]
AE_v2_swish_nparam_[#].p: nonlinear manifold, Autoencoder trained with snapshot_full_nparam_[#]