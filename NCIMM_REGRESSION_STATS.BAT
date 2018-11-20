REM SET the Directories
REM Obs is version SWMM5.1.012 and Sim is version SWMM5.1.013 or InfoSWMM
REM
SET ENGINE13="D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\swmm5.exe"
SET ENGINE11="D:\MTests\Swmm5.1.013\Setup\SWMM5v11.EXE"
SET ENGINE12="D:\MTests\Swmm5.1.013\Setup\SWMM5v12.EXE"
SET V12=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\v12\
SET v13=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\v13\
SET v13inp=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\
SET OWA_USER=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_USER\
SET Hydraulics=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Hydraulics\
SET Hydrology=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Hydrology\
SET InfoSWMM=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\INFOSWMM\
SET LEW_update_v5113=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\LEW_update_v5113\
SET LID=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\LID\
SET ORIFICE=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Orifices\
SET OWA_EXAMPLES=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_EXAMPLES\
SET OWA_EXTRAN=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_EXTRAN\
SET OWA_ROUTING=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_ROUTING\
SET OWA_update_v5111=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_update_v5111\
SET PUMPS=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Pumps\
SET SWMM4=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\SWMM4\
SET SWMM5_NCIMM=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\SWMM5_NCIMM\
SET WQ=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\WQ\
SET XPSWMM=D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\XPSWMM\
REM
del all.log
REM
SET MODEL=w_wo_RB_2Subcatchments
%ENGINE12%  %LID%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=w_wo_RG_2Subcatchments
%ENGINE12%  %LID%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=w_wo_BC_2Subcatchments
%ENGINE12%  %LID%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=w_wo_GR_2Subcatchments
%ENGINE12%  %LID%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=w_wo_IT_2Subcatchments
%ENGINE12%  %LID%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=w_wo_PP_2Subcatchments
%ENGINE12%  %LID%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=w_wo_SWALE_2Subcatchments
%ENGINE12%  %LID%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=wq_w_wo_RG_2Subcatchments
%ENGINE12%  %LID%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
REM
SET MODEL=backinflow
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=Example1
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=Example1a
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out  
SET MODEL=Example2a
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=Example2b
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out  
SET MODEL=Example2c
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out   
SET MODEL=Example4-Drain 
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out   
SET MODEL=Extran4mod_v12
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out    
SET MODEL=Jutras2_v12
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out   
SET MODEL=LidRmvls_v12
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out    
SET MODEL=PP-Regen
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out  
SET MODEL=SubcatchAdjust_v12
%ENGINE12%  %LEW_update_v5113%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
REM
SET MODEL=user1
%ENGINE12%   %OWA_USER%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=user2
%ENGINE12%   %OWA_USER%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=user3
%ENGINE12%   %OWA_USER%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=user4
%ENGINE12%   %OWA_USER%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
SET MODEL=user5
%ENGINE12%   %OWA_USER%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out 
REM Other Test Files for Obs Suite of testing files
SET MODEL=test1
%ENGINE12%   %OWA_ROUTING%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out       
SET MODEL=test2
%ENGINE12%   %OWA_ROUTING%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out                 
SET MODEL=test3
%ENGINE12%   %OWA_ROUTING%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out          
SET MODEL=test4
%ENGINE12%   %OWA_ROUTING%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out              
SET MODEL=test5
%ENGINE12%   %OWA_ROUTING%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out                    
SET MODEL=example1
%ENGINE12%   %OWA_EXAMPLES%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out             
SET MODEL=example2
%ENGINE12%   %OWA_EXAMPLES%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out              
SET MODEL=example3
%ENGINE12%   %OWA_EXAMPLES%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out           
SET MODEL=example4
%ENGINE12%   %OWA_EXAMPLES%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out            
SET MODEL=example5
%ENGINE12%   %OWA_EXAMPLES%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out             
SET MODEL=example6
%ENGINE12%   %OWA_EXAMPLES%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out   
SET MODEL=extran1
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out           
SET MODEL=extran2
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out         
SET MODEL=extran3
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out            
SET MODEL=extran4
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out           
SET MODEL=extran5
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out          
SET MODEL=extran6
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out          
SET MODEL=extran7
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out         
SET MODEL=extran9
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out       
SET MODEL=extran8a
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out        
SET MODEL=extran8b
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out     
SET MODEL=extran10
%ENGINE12%   %OWA_EXTRAN%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out   
REM  
SET MODEL=bioretention
%ENGINE12%   %OWA_update_v5111%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out  
SET MODEL=porous_pavement
%ENGINE12%   %OWA_update_v5111%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=rain_garden
%ENGINE12%   %OWA_update_v5111%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=gate_control_2
%ENGINE12%   %OWA_update_v5111%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=gate_control_3
%ENGINE12%   %OWA_update_v5111%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=catchment_as_outfall
%ENGINE12%   %OWA_update_v5111%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=events_example
%ENGINE12%   %OWA_update_v5111%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=ncdc_format
%ENGINE12%   %OWA_update_v5111%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests
REM   
SET MODEL=exam80a
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=huff_distributions
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=all_culverts
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out  
SET MODEL=critical_downstream_example
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=critical_upstream_downstream_example_sw5
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=critical_upstream_example_SW5
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran_master_swmm34_example_SW5
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran_pid_master
%ENGINE12%  %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=orifice_closing_rules
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=USGS_NURP_BrowardCounty_WQ
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=STEEP_adverse_example_1_SW5
%ENGINE12%  %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=vsp_master
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=PhantomStorage
%ENGINE12%  %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=EPANET_SWMM_Hazen_Williams_comparison
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=Greenville_EPA
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=EDSYPHON
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=Kevin_test_model_v12
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=w_wo_RB_2Subcatchments
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=M
%ENGINE12%   %SWMM5_NCIMM%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
REM
SET MODEL=extran3_bottom_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_bottom_rect_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_open_close_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_open_close_rect_offset_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_open_close_rect_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_rect_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_bottom_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_bottom_rect_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_open_close_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_open_close_rect_offset_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_open_close_rect_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_side_rect_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran3_bottom_orifice_pid
%ENGINE12%   %ORIFICE%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
REM
SET MODEL=extran6_type1
%ENGINE12%   %PUMPS%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran6_type2
%ENGINE12%   %PUMPS%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran6_type3
%ENGINE12%   %PUMPS%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
SET MODEL=extran6_type4
%ENGINE12%   %PUMPS%%MODEL%.inp %v12%%MODEL%.rpt %v12%%MODEL%.out
REM
REM Engine for SWMM 5.1.013 Runs
REM
SET MODEL=w_wo_RB_2Subcatchments
%ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=w_wo_RG_2Subcatchments
%ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=w_wo_BC_2Subcatchments
%ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=w_wo_BC_2Subcatchments
%ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=w_wo_GR_2Subcatchments
%ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=w_wo_IT_2Subcatchments
%ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=w_wo_PP_2Subcatchments
%ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=w_wo_SWALE_2Subcatchments
%ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
rem SET MODEL=wq_w_wo_RG_2Subcatchments
rem %ENGINE13%  %LID%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
REM
SET MODEL=backinflow
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=Example1
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=Example1a
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES 
SET MODEL=Example2a
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=Example2b
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=Example2c
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES 
SET MODEL=Example4-Drain 
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=Extran4mod_v12
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES    
SET MODEL=Jutras2_v12
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES  
SET MODEL=LidRmvls_v12
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES  
SET MODEL=PP-Regen
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=SubcatchAdjust_v12
%ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%SubcatchAdjust_v12.out   YES
SET MODEL=SubcatchAdjust
REM %ENGINE13%  %LEW_update_v5113%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%SubcatchAdjust_v12.out   YES
REM
SET MODEL=user1
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=user2
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=user3
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=user4
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=user5
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=user1_average_report
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user1.out   YES
SET MODEL=user2_average_report
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user2.out   YES
SET MODEL=user3_average_report
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user3.out   YES
SET MODEL=user4_average_report
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user4.out   YES
SET MODEL=user5_average_report
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user5.out   YES
SET MODEL=user1_slot
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user1.out   YES
SET MODEL=user2_slot
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user2.out   YES
SET MODEL=user3_slot
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user3.out   YES
SET MODEL=user4_slot
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user4.out   YES
SET MODEL=user5_slot
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user5.out   YES
SET MODEL=user1_2threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user1.out   YES
SET MODEL=user2_2threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user2.out   YES
SET MODEL=user3_2threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user3.out   YES
SET MODEL=user4_2threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user4.out   YES
SET MODEL=user5_2threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user5.out   YES
SET MODEL=user1_8threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user1.out   YES
SET MODEL=user2_8threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user2.out   YES
SET MODEL=user3_8threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user3.out   YES
SET MODEL=user4_8threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user4.out   YES
SET MODEL=user5_8threads
%ENGINE13%   %OWA_USER%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%user5.out   YES
REM
REM Other Test Files for Sim Suite of testing files
SET MODEL=test1
%ENGINE13%   %OWA_ROUTING%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=test2
%ENGINE13%   %OWA_ROUTING%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=test3
%ENGINE13%   %OWA_ROUTING%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=test4
%ENGINE13%   %OWA_ROUTING%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=test5
%ENGINE13%   %OWA_ROUTING%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
REM
SET MODEL=example1
%ENGINE13%   %OWA_EXAMPLES%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=example2
%ENGINE13%   %OWA_EXAMPLES%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=example3
%ENGINE13%   %OWA_EXAMPLES%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=example4
%ENGINE13%   %OWA_EXAMPLES%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=example5
%ENGINE13%   %OWA_EXAMPLES%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=example6
%ENGINE13%   %OWA_EXAMPLES%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES 
REM
SET MODEL=extran1
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran2
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran4
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran5
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran6
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran7
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran9
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran8a
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran8b
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran10
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran1_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran1.out   YES
SET MODEL=extran2_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran2.out   YES
SET MODEL=extran3_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran3.out   YES
SET MODEL=extran4_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran4.out   YES
SET MODEL=extran5_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran5.out   YES
SET MODEL=extran6_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran6.out   YES
SET MODEL=extran7_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran7.out   YES
SET MODEL=extran9_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran9.out   YES
SET MODEL=extran8a_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran8a.out   YES
SET MODEL=extran8b_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran8b.out   YES
SET MODEL=extran10_slot
%ENGINE13%   %OWA_EXTRAN%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran10.out   YES
REM  
SET MODEL=bioretention
%ENGINE13%   %OWA_update_v5111%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=porous_pavement
%ENGINE13%   %OWA_update_v5111%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=rain_garden
%ENGINE13%   %OWA_update_v5111%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=gate_control_2
%ENGINE13%   %OWA_update_v5111%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=gate_control_3
%ENGINE13%   %OWA_update_v5111%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=catchment_as_outfall
%ENGINE13%   %OWA_update_v5111%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=events_example
%ENGINE13%   %OWA_update_v5111%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=ncdc_format
%ENGINE13%   %OWA_update_v5111%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
REM
SET MODEL=exam80a
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=huff_distributions
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=all_culverts
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=critical_downstream_example
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=critical_upstream_downstream_example_sw5
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=critical_upstream_example_SW5
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran_master_swmm34_example_SW5
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran_pid_master
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=orifice_closing_rules
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=porous_pavement
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=USGS_NURP_BrowardCounty_WQ
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=STEEP_adverse_example_1_SW5
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=vsp_master
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=PhantomStorage
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=EPANET_SWMM_Hazen_Williams_comparison
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=Greenville_EPA
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=EDSYPHON
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=Kevin_test_model_v12
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%Kevin_test_model_v12.out   YES
SET MODEL=Kevin_test_model
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%Kevin_test_model_v12.out   YES
SET MODEL=M
%ENGINE13%   %SWMM5_NCIMM%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
REM
SET MODEL=extran3_bottom_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_bottom_rect_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_open_close_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_open_close_rect_offset_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_open_close_rect_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_rect_orifice
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_bottom_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_bottom_rect_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_open_close_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_open_close_rect_offset_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_open_close_rect_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_side_rect_orifice_si_units
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran3_bottom_orifice_pid
%ENGINE12%   %ORIFICE%%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
REM
SET MODEL=extran6_type1
%ENGINE12%   %PUMPS%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran6_type2
%ENGINE12%   %PUMPS%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran6_type3
%ENGINE12%   %PUMPS%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran6_type4
%ENGINE12%   %PUMPS%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%%MODEL%.out   YES
SET MODEL=extran6_type1_control_rule
%ENGINE12%   %PUMPS%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out %v12%extran6_type1.out   YES
SET MODEL=extran6_type2_control_rule
%ENGINE12%   %PUMPS%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out  %v12%extran6_type2.out   YES
SET MODEL=extran6_type3_control_rule
%ENGINE12%   %PUMPS%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out  %v12%extran6_type3.out   YES
SET MODEL=extran6_type4_control_rule
%ENGINE12%   %PUMPS%MODEL%.inp %v13%%MODEL%.rpt %v13%%MODEL%.out  %v12%extran6_type4.out   YES
REM
del  *.txt
Move *.dat                                                                                           D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_EXTRAN\*.dat    D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_EXAMPLES\*.dat  D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_ROUTING\*.dat   D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_USER\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\LEW_update_v5113\*.dat  D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\OWA_update_v5111\*.dat  D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\SWMM5_NCIMM\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\PUMPS\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\LID\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\WQ\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\SWMM4\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\WEIRS\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\ORIFICE\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\XPSWMM\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\INFOSWMM\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Hydraulics\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
Move D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\HYDROLOGY\*.dat      D:\SWMMandSoftware\SWMM5.013_June2018\EPASWMM5.1.013\Swmm5.1.013UpdateTests\Calibration_Files\
pause