List of codes
build_data_high_Re_nparam.ipynb: build train data varying the number of parameters, # (snapshot_full_high_Re_nparam_[#].p) and FOM data (FOM_high_Re.p)
train_LS-ROM_high_Re_nparam_[#].ipynb: train LS-ROM varying the number of parameters, # (POD_high_Re_nparam_[#].p)
train_NM-ROM_high_Re_v3_nparam_[#].ipynb: train NM-ROM varying the number of parameters, # (AE_high_Re_v3_nparam_[#].p)
test_LS-ROM_high_Re_nparam.ipynb: run LS-ROMs varying the number of parameters, #
test_NM-ROM_high_Re_v3_nparam.ipynb: run NM-ROMs varying the number of parameters, #

In data directory
snapshot_full_high_Re_nparam_[#].p: solution snapshots with # parameters for training
FOM_high_Re.p: Target parameter solutions
PlotErr.ipynb: plot max. rel. errors vs number of parameter instances

In model directory,
POD_high_Re_nparam_[#].p: linear sbuspace, POD basis trained with snapshot_full_high_Re_nparam_[#]
AE_high_Re_v3_nparam_[#].p: nonlinear manifold, Autoencoder trained with snapshot_full_high_Re_nparam_[#]