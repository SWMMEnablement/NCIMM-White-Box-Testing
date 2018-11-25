# NCIMM White Box Testing Files


* Calibration_Files  v13 and v12 calibration files
* DataFiles          v13 and v12 data files for running the inp files
* Hydraulics         v13 and v12 inp test files
* Hydrology          v13 and v12 inp test files
* LEW_update_v5113   v13 and v12 inp test files
* LID                v13 and v12 inp test files
* Orifices           v13 and v12 inp test files
* OWA_EXAMPLES       v13 and v12 inp test files
* OWA_EXTRAN         v13 and v12 inp test files
* OWA_ROUTING        v13 and v12 inp test files
* OWA_update_v5111   v13 and v12 inp test files
* OWA_USER           v13 and v12 inp test files
* Pumps              v13 and v12 inp test files
* SWMM5_NCIMM        v13 and v12 inp test files
* v12                v13 and v12 log comparison files
* v13                v13 and v12 log comparison files
* Weirs              v13 and v12 inp test files
* XPSWMM             v13 and v12 inp test files  

# NCIMM White Box Calibration File Types

* Flog,                     // Other SWMM5 Output File Comparion log   // NCIUMM 2018
* FoutCompare,              // Other SWMM5 Output File                 //
* Fall_log,                 // All log files combined                  // 
* FcalibrationS,            // Calibration file Innovyze RED 2016        Storage Volume in a Storage Node
* FcalibrationR,            // Calibration file Innovyze RED 2016         Runoff 
* FcalibrationE,            // Calibration file Innovyze RED 2016         Groundwater Elevation
* FcalibrationG,            // Calibration file Innovyze RED 2016         Groundwater Q
* FcalibrationH,            // Calibration file Innovyze RED 2016         Node Depth
* FcalibrationNH,           // Calibration file Innovyze RED 2016         Node Head
* FcalibrationNF,           // Calibration file Innovyze RED 2016         Node Flooding
* FcalibrationL,            // Calibration file Innovyze RED 2016         Node Lateral Q
* FcalibrationQ,            // Calibration file Innovyze RED 2016         Link Q
* FcalibrationV,            // Calibration file Innovyze RED 2016         Link V
* FcalibrationD,            // Calibration file Innovyze RED 2016         Link D
* FcalibrationHGL,          // Calibration file Innovyze RED 2016         Link HGL
* FcalibrationNA,           // Calibration file Innovyze RED 2018         Node Area
* FcalibrationNSA;          // Calibration file Innovyze RED 2018         Node DQDH


# define MAX_STATISTICAL_RESULTS 15     // NCIMM
*     enum  StatsType {
*     SIM,            // Simulated Mean*
*     OBS,            // Observed Mean
*     RMSE,           // Root Mean Square Error
*     MAE,            // Mean Average Error
*     MSLSE,          // Mean Simple Least Square Error
*     STDSIM,         // Simulated Standard Deviation
*     STDOBS,         // Simulated Standard Deviation
*     SkewnessSim,    // Skewness of Simulated
*     KurtosisSim,    // Kurtosis of Simulated
*     SkewnessObs,    // Skewness of Observed
*     KurtosisPbs,    // Kurtosis of Observed
*     LogNASH,        // Log Nash–Sutcliffe Efficiency
*     IndexD,         // Index of Agreement
*     NASH};          // Nash–Sutcliffe Efficiency
