Copy model: NMROM_residual_basis.p and AE_high_Re_v3_batch_240.p from 2DBurgersEqn\test_DEIM\model

List of codes
build_data_high_Re_prediction.ipynb: build FOM data varying target parameter, # (FOM_amp_[#].p)
Test_prediction_NM-ROM_high_Re_v3_Using_full_inter_batch_240.ipynb: Find hyper-reduction residual basis dimension and the number of residual smaples and run NM-LSPG-HR for each predictive cases (target parameter, #)
Test_prediction_NM-ROM_wo_HR_high_Re_v3_batch_240.ipynb: Run NM-ROMs without hyper-reduction for each predictive cases (target parameter, #)
Measure_wall-clock_time_prediction_NM-ROM_high_Re_v3_Using_full_inter_batch_240.ipynb: Measure wall-clock times of NM-LSPG-HR

In data directory,
FOM_amp_[#].p: Target parameter (#) solutions
plot_prediction_results.ipynb: plot max. rel. errors of NM-LSPG and NM-LSPG-HR vs target parameter

In model directory,
AE_high_Re_v3_batch_240.p: nonlinear manifold, Autoencoder
NMROM_residual_basis.p: hyper-reduction residual basis for NM-ROM (It is generated from Test_DEIM_NM-ROM_high_Re_v3_Using_full_inter_batch_240.ipynb)