# NCIMM White Box Testing Files

> File Folder Brief Description 

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

> Calibration File Types for comparing various versions of SWMM

* Flog,                     // Other SWMM5 Output File Comparion log   // NCIUMM 2018
* FoutCompare,              // Other SWMM5 Output File                 //
* Fall_log,                 // All log files combined                  // 
* FcalibrationS,            // Calibration file           Storage Volume in a Storage Node
* FcalibrationR,            // Calibration file           Runoff 
* FcalibrationE,            // Calibration file           Groundwater Elevation
* FcalibrationG,            // Calibration file           Groundwater Q
* FcalibrationH,            // Calibration file           Node Depth
* FcalibrationNH,           // Calibration file           Node Head
* FcalibrationNF,           // Calibration file           Node Flooding
* FcalibrationL,            // Calibration file           Node Lateral Q
* FcalibrationQ,            // Calibration file           Link Q
* FcalibrationV,            // Calibration file           Link V
* FcalibrationD,            // Calibration file           Link D
* FcalibrationHGL,          // Calibration file           Link HGL
* FcalibrationNA,           // Calibration file           Node Area
* FcalibrationNSA;          // Calibration file           Node DQDH


#  MAX_STATISTICAL_RESULTS 

> Observed and Simulated Statistical Momemnt used to compare simulation and observed 

*  enum  StatsType {
*  SIM,            // Simulated Mean*
*  OBS,            // Observed Mean
*  RMSE,           // Root Mean Square Error
*  MAE,            // Mean Average Error
*  MSLSE,          // Mean Simple Least Square Error
*  STDSIM,         // Simulated Standard Deviation
*  STDOBS,         // Simulated Standard Deviation
*  SkewnessSim,    // Skewness of Simulated
*  KurtosisSim,    // Kurtosis of Simulated
*  SkewnessObs,    // Skewness of Observed
*  KurtosisObs,    // Kurtosis of Observed
*  LogNASH,        // Log Nash–Sutcliffe Efficiency
*  IndexD,         // Index of Agreement
*  NASH};          // Nash–Sutcliffe Efficiency
