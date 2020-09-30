Copy model: NMROM_residual_basis.p and AE_v2_swish.p from 1DBurgersEqn\test_DEIM\model

List of codes
build_data_v2_prediction.ipynb: build FOM data varying target parameter, # (FOM_amp_[#].p)
Test_prediction_NM-ROM_v2_swish_Using_full.ipynb: Find hyper-reduction residual basis dimension and the number of residual smaples and run NM-LSPG-HR for each predictive cases (target parameter, #)
Test_prediction_NM-ROM_wo_HR_v2_swish.ipynb: Run NM-ROMs without hyper-reduction for each predictive cases (target parameter, #)
Measure_wall-clock_time_prediction_NM-ROM_v2_swish_Using_full.ipynb: Measure wall-clock times of NM-LSPG-HR

In data directory,
FOM_amp_[#].p: Target parameter (#) solutions
plot_prediction_results.ipynb: plot max. rel. errors of NM-LSPG and NM-LSPG-HR vs target parameter

In model directory,
AE_v2_swish.p: nonlinear manifold, Autoencoder
NMROM_residual_basis.p: hyper-reduction residual basis for NM-ROM (It is already generated from Test_DEIM_NM-ROM_v2_swish_Using_full.ipynb)