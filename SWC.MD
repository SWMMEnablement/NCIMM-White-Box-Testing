<strong>Note:  This is a Markdown experiment using EPA Documents and other documents that were originally PDF files, converted to DOCX files and then converted to Markdown HTML code.</strong>

![](media/3091a7dd5b70a184db454fd5560f4bdb.png)

> **EPA/600/R-13/085c \| Revised September 2014 \| www2.epa.gov/research**

> **National Stormwater Calculator User’s Guide**

![](media/e170c4aa187d1f9f5ba1f477da728e0f.png)

> **Before After**

> **Ofﬁce of Research and Development**

> **National Risk Management Research Laboratory**

**EPA/600/R-13/085c**

**Revised September 2014**

> **NATIONAL STORMWATER CALCULATOR USER’S GUIDE – VERSION 1.1**

> By

> Lewis A. Rossman

> Water Supply and Water Resources Division National Risk Management Research
> Laboratory Cincinnati, OH 45268

> OFFICE OF RESEARCH AND DEVELOPMENT

> U.S. ENVIRONMENTAL PROTECTION AGENCY CINCINNATI, OH 45268

DISCLAIMER
==========

> The information in this document has been funded wholly by the U.S.
> Environmental Protection Agency (EPA). It has been subjected to the Agency’s
> peer and administrative review, and has been approved for publication as an
> EPA document. Mention of trade names or commercial products does not
> constitute endorsement or recommendation for use.

> Although a reasonable effort has been made to assure that the results
> obtained are correct, the computer programs described in this manual are
> experimental. Therefore the author and the U.S. Environmental Protection
> Agency are not responsible and assume no liability whatsoever for any
> results or any use made of the results obtained from these programs, nor for
> any damages or litigation that result from the use of these programs for any
> purpose.

ACKNOWLEDGEMENTS
================

> Paul Duda, Paul Hummel, Jack Kittle, and John Imhoff of Aqua Terra
> Consultants developed the data acquisition portions of the National
> Stormwater Calculator under Work Assignments 4-38 and 5-38 of EPA Contract
> \#EP-C-06-029. Jason Berner and Tamara Mittman, both in EPA’s Office of
> Water (OW), were the Work Assignment Managers for that effort. They, along
> with Alex Foraste (EPA/OW), provided many useful ideas and feedback
> throughout the development of the calculator.

ACRONYMS AND ABBREVIATIONS
==========================

> ASCE = American Society of Civil Engineers

> CMIP3 = Coupled Model Intercomparison Project Phase 3 CREAT = Climate
> Resilience Evaluation and Awareness Tool EPA = United States Environmental
> Protection Agency GCM = General Circulation Model

> GEV = Generalized Extreme Value

> GI = Green Infrastructure

> HSG = Hydrologic Soil Group

> IMD = initial moisture deficit

> IPCC = Intergovernmental Panel on Climate Change Ksat = saturated hydraulic
> conductivity

> LID = low impact development

> NCDC = National Climatic Data Center

> NRCS = Natural Resources Conservation Service NWS = National Weather Service

> OW = Office of Water

> SWAT = Soil and Water Assessment Tool SWMM = Storm Water Management Model

> UDFCD = Urban Drainage and Flood Control District US = United States

> USDA = United States Department of Agriculture WCRP = World Climate Research
> Programme

TABLE OF CONTENTS
=================

> Climate Change Impacts 53

1. Computational Methods 58

> SWMM’s Runoff Model 58

> SWMM’s LID Model 59

> Site Model without LID Controls 61

> Site Model with LID Controls 64

> Precipitation Data 65

> Evaporation Data 68

> Climate Change Effects 69

> Post-Processing 72

1. References 74

LIST OF FIGURES
===============

> Figure 1. The calculator's main window 10

> Figure 2. The calculator’s Location page 12

> Figure 3. Bird’s eye map view with a bounding circle 13

> Figure 4. The calculator’s Soil Type page 14

> Figure 5. The calculator's Soil Drainage page 16

> Figure 6. The calculator's Topography page 17

> Figure 7. The calculator's Precipitation page 18

> Figure 8. The calculator's Evaporation page 19

> Figure 9. The calculator's Climate Change page 21

> Figure 10. The calculator's Land Cover page 22

> Figure 11. The calculator’s LID Controls page 24

> Figure 12. The calculator’s Results page 25

> Figure 13. The calculator’s Summary Results report 28

> Figure 14. The calculator's Rainfall / Runoff Event report 30

> Figure 15. The calculator’s Rainfall / Runoff Frequency report 31

> Figure 16. The calculator’s Rainfall Retention Frequency report 32

> Figure 17. The calculator’s Runoff by Rainfall Percentile report 34

> Figure 18. The calculator’s Extreme Event Rainfall / Runoff report 36

> Figure 19. Example of a LID Design dialog for a street planter. 39

> Figure 20. Runoff from different size storms for pre-development conditions
> on the example site. 42

> Figure 21. Rainfall retention frequency under pre-development conditions for
> the example site. 43

> Figure 22. Rainfall retention frequency for pre-development (Baseline) and
> post-development (Current) conditions 45

> Figure 23. Low Impact Development controls applied to the example site. 47

> Figure 24. Design parameters for Rain Harvesting and Rain Garden controls 48

> Figure 25. Design parameters for the Infiltration Basin and Porous Pavement
> controls 49

> Figure 26. Daily runoff frequency curves for pre-development (Baseline) and
> post-development with LID controls (Current) conditions 51

> Figure 27. Contribution to total runoff by different magnitude storms for
> pre-development (Baseline) and post-development with LID controls (Current)
> conditions 52

> Figure 28. Retention frequency plots under pre-development (Baseline) and
> post-development with LID controls (Current) conditions 53

> Figure 29. Climate change scenarios for the example site. 54

> Figure 30. Target event retention for the historical (Baseline) and Warm/Wet
> climate scenarios 56

> Figure 31. Conceptual representation of a bio-retention cell 59

> Figure 32. NWS rain gage locations included in the calculator. 66

> Figure 33. NRCS (SCS) 24-hour rainfall distributions (USDA, 1986) 67

> Figure 34. Geographic boundaries for the different NRCS (SCS) rainfall
> distributions (USDA, 1986) 67

> Figure 35. Locations with computed evaporation rates (Alaska and Hawaii not
> shown) 68
<blockquote>Figure 36. CMIP3 2060 projected changes in temperature and precipitation for
> Omaha, NE (EPA, 2012).</blockquote>
[gallery ids="19538,19539,19540,19541,19542,19543,19544,19545,19546,19547,19548,19549,19550,19551,19552,19553,19554,19555,19556,19557,19558,19559,19560,19561,19562,19563,19564,19565,19566,19567,19568,19569,19570,19571,19572,19573,19574,19575,19576,19577,19578,19579,19580,19581,19582,19583,19584" type="rectangular"]

> ....................................................................................................................................................................
> 70

List of Tables
==============

> Table 1. Definitions of Hydrologic Soil Groups (USDA, 2010) 15

> Table 2. Descriptions of LID practices included in the calculator. 38

> Table 3. Editable LID parameters 40

> Table 4. Void space values of LID media. 40

> Table 5. Summary results for pre-development conditions on the example site.
> 42

> Table 6. Land cover for the example site. 44

> Table 7. Comparison of runoff statistics for post-development (Current) and
> pre-development (Baseline) conditions 45

> Table 8. Runoff statistics for pre-development (Baseline) and
> post-development with LID controls (Current) scenarios 50

> Table 9. Summary results under a Warm/Wet (Current) climate change scenario
> compared to the historical (Baseline) condition 55

> Table 10. Depression storage depths for different land covers 62

> Table 11. Roughness coefficients for different land covers 63

> Table 12. Infiltration parameters for different soil types 64

Introduction
============

> The National Stormwater Calculator is a simple to use tool for computing
> small site hydrology for any location within the US. It estimates the amount
> of stormwater runoff generated from a site under different development and
> control scenarios over a long term period of historical rainfall. The
> analysis takes into account local soil conditions, slope, land cover and
> meteorology. Different types of low impact development (LID) practices (also
> known as green infrastructure) can be employed to help capture and retain
> rainfall on-site. Future climate change scenarios taken from internationally
> recognized climate change projections can also be considered.

> The calculator’s primary focus is informing site developers and property
> owners on how well they can meet a desired stormwater retention target. It
> can be used to answer such questions as:

- What is the largest daily rainfall amount that can be captured by a site in
either its pre- development, current, or post-development condition?

- To what degree will storms of different magnitudes be captured on site?

- What mix of LID controls can be deployed to meet a given stormwater
retention target?

- How well will LID controls perform under future meteorological projections
made by global climate change models?

> The calculator seamlessly accesses several national databases to provide
> local soil and meteorological data for a site. The user supplies land cover
> information that reflects the state of development they wish to analyze and
> selects a mix of LID controls to be applied. After this information is
> provided, the site’s hydrologic response to a long-term record of historical
> hourly precipitation, possibly modified by a particular climate change
> scenario, is computed. This allows a full range of meteorological conditions
> to be analyzed, rather than just a single design storm event. The resulting
> time series of rainfall and runoff are aggregated into daily amounts that
> are then used to report various runoff and retention statistics. In
> addition, the site’s response to extreme rainfall events of different return
> periods is also analyzed.

> The calculator uses the EPA Storm Water Management Model (SWMM) as its
> computational engine
> ([http://www.epa.gov/nrmrl/wswrd/wq/models/swmm/).](http://www.epa.gov/nrmrl/wswrd/wq/models/swmm/))
> SWMM is a well-established, EPA developed model that has seen continuous use
> and periodic updates for 40 years. Its hydrology component uses physically
> meaningful parameters making it especially well-suited for application on a
> nation-wide scale. SWMM is set up and run in the background without
> requiring any involvement of the user.

> The calculator is most appropriate for performing screening level analysis
> of small footprint sites up to several dozen acres in size with uniform soil
> conditions. The hydrological processes simulated by the calculator include
> evaporation of rainfall captured on vegetative surfaces or in surface
> depressions, infiltration losses into the soil, and overland surface flow.
> No attempt is made to further account for the fate of infiltrated water that
> might eventually transpire through vegetation or re-emerge as surface water
> in drainage channels or streams.

> The remaining sections of this guide discuss how to install the calculator,
> how to run it, and how to interpret its output. An example application is
> presented showing how the calculator can be used to

> analyze questions related to stormwater runoff, retention, and control.
> Finally, a technical description is given of how the calculator performs its
> computations and where it obtains the parameters needed to do so.

How to Run the Calculator
=========================

> The Stormwater Calculator is a desktop application that runs on any version
> of Microsoft Windows with version 4 or higher of the .Net Framework
> installed. An installation program for the calculator can be downloaded from
> the following web page:
> <http://www2.epa.gov/water-research/national-stormwater-> *calculator*.
> After running the installer, there will be a folder named “US EPA” added to
> your Windows Start Menu. The folder contains a shortcut named “EPA
> Stormwater Calculator” that can be used to launch the program.

> *NOTE: You must have an internet connection to run the Stormwater
> Calculator.*

> The main window of the calculator is displayed in Figure 1. It uses a series
> of tabbed pages to collect information about the site being analyzed and to
> run and view hydrologic results. A Bing Maps display allows you to view the
> site’s location, its topography, selected soil properties and the locations
> of nearby rain gages and weather stations.

![](media/559289d3b9440de18602d5b2a92a338f.jpg)

> **Figure 1. The calculator's main window.**

> The various pages of the calculator are used as follows:

1. **Location** page - establishes the site’s location

2. **Soil Type** page - identifies the site’s soil type

3. **Soil Drainage** page - specifies how quickly the site’s soil drains

4. **Topography** page - characterizes the site’s surface topography

5. **Precipitation** page - selects a nearby rain gage to supply hourly
rainfall data

6. **Evaporation** page - selects a nearby weather station to supply
evaporation rates

7. **Climate Change** page – selects a climate change scenario to apply

8. **Land Cover** page - specifies the site’s land cover for the scenario being
analyzed

9. **LID Controls** page - selects a set of LID control options, along with
their design features, to deploy within the site

10. **Results** page - runs a long term hydrologic analysis and displays the
results.

> There are also three command options shown along the bottom status bar that
> can be selected at any time:

1. *Analyze a New Site*: This command will discard all previously entered data
and take you to the **Location** page where you can begin selecting a new
site to analyze. You will first be prompted to save the data you entered for
the current site.

2. *Save Current Site*: This command is used to save the information you have
entered for the current site to a disk file. This file can then be re-opened
in a future session of the calculator by selecting the *Open a previously
saved site* command on the **Location** page.

3. *Exit*: This command closes down the calculator. You will be prompted to
save the data you entered for the current site.

> You can move back and forth between the calculator’s pages to modify your
> selections. Most of the pages have a *Help* command that will display
> additional information about the page when selected. After an analysis has
> been completed on the **Results** page, you can choose to designate it as a
> “baseline” scenario, which means that its results will be displayed
> side-by-side with those of any additional scenarios that you choose to
> analyze. Each of the calculator’s pages will now be described in more
> detail.

Location
--------

> The **Location** page of the calculator is shown in Figure 2. You are asked
> to identify where in the U.S. the site is located. This information is used
> to access national soils and meteorological databases. It has an address
> lookup feature that allows you to easily navigate to the site’s location.
> You can enter an address or zip code in the Search box and either click on
> the Search icon, or press the *Enter* key to move the map view to that
> location. You can also use the map’s pan and zoom controls to hone in on a
> particular area. Once the site has been located somewhere within the map’s
> viewport, move the mouse pointer over the site and then *left-click* the
> mouse to mark its exact location with a red square.

![](media/51840753d90637ea414ce76142b519bf.jpg)

> Figure 2. An image of the locator's map.

> **Figure 2. The calculator’s Location page.**

> The map display can be toggled between a standard road map view and a bird’s
> eye aerial view. Figure 3 shows the site located in Figure 2 with a
> zoomed-in aerial view selected. You can also specify the area of the site,
> which will result in a bounding red circle being drawn on the map. This is
> optional since the calculator makes all of its computations on a per unit
> area basis.

> You can also click on *Open a previously saved site* to read in data for a
> site that was previously saved to a file to start working with that data
> once again. (Every time you begin analyzing a new site or exit the program
> the calculator asks if you want to save the current site to a file.) Once
> you open a previously saved site, the calculator will be populated with its
> data.

![](media/6254915b8e983cd3b45c5a195815a39d.jpg)

> Figure 3. A bird's eye map view with a bounding circle.

> **Figure 3. Bird’s eye map view with a bounding circle.**

Soil Type
---------

> Figure 4 shows the **Soil Type** page of the calculator, which is used to
> identify the type of soil present on the site. Soil type is represented by
> its Hydrologic Soil Group (HSG). This is a classification used by soil
> scientists to characterize the physical nature and runoff potential of a
> soil. The calculator uses a site's soil group to infer its infiltration
> properties. Table 1 lists the definitions of the different soil groups.

> You can select a soil type based on local knowledge or by retrieving a soil
> map overlay from the U.S. Department of Agriculture’s Natural Resources
> Conservation Service (NRCS) SSURGO database
> ([http://soils.usda.gov/survey/geography/ssurgo/).](http://soils.usda.gov/survey/geography/ssurgo/))
> Simply check the *View Soil Survey Data* box at the top of the page’s left
> panel to retrieve SSURGO data. (There will be a slight delay the first time
> that the soil data is retrieved and the color-coded overlay is drawn).
> Figure 4 displays the results from a SSURGO retrieval. You can then select a
> soil type directly from the left panel or click on a color shaded region of
> the map.

![](media/71b7dfcdcf9b353d5b499566c97d4959.jpg)

> Figure 4. Image of the calculator's soil type page.

> **Figure 4. The calculator’s Soil Type page.**

> The SSURGO database houses soil characterization data for most of the U.S.
> that have been collected over the past forty years by federal, state, and
> local agencies participating in the National Cooperative Soil Survey. The
> data are compiled by “map units” which are the boundaries that define a
> particular recorded soil survey. These form the irregular shaped polygon
> areas that are displayed in the calculator’s map pane.

> Soil survey data do not exist for all parts of the country, particularly in
> downtown core urban areas; therefore, it is possible that no data will be
> available for your site. In this case you will have to rely on local
> knowledge to designate a representative soil group.

> **Table 1. Definitions of Hydrologic Soil Groups (USDA, 2010).**

| **Group** | **Meaning** | **Saturated Hydraulic Conductivity (in/hr)** |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------|
| A | Low runoff potential. Soils having high infiltration rates even when thoroughly wetted and consisting chiefly of deep, well to excessively drained sands or gravels. | ≥ 0.45 |
| B | Soils having moderate infiltration rates when thoroughly wetted and consisting chiefly of moderately deep to deep, moderately well to well-drained soils with moderately fine to moderately coarse textures. E.g., shallow loess, sandy loam. | 0.30 - 0.15 |
| C | Soils having slow infiltration rates when thoroughly wetted and consisting chiefly of soils with a layer that impedes downward movement of water, or soils with moderately fine to fine textures. E.g., clay loams, shallow sandy loam. | 0.15 - 0.05 |
| D | High runoff potential. Soils having very slow infiltration rates when thoroughly wetted and consisting chiefly of clay soils with a high swelling potential, soils with a permanent high water table, soils with a clay-pan or clay layer at or near the surface, and shallow soils over nearly impervious material. | 0.05 - 0.00 |

Soil Drainage
-------------

> The **Soil Drainage** page of the calculator (Figure 5) is used to identify
> how fast standing water drains into the soil. This rate, known as the
> “saturated hydraulic conductivity,” is arguably the most significant
> parameter in determining how much rainfall can be infiltrated.

> There are several options available for assigning a hydraulic conductivity
> value (in inches per hour) to the site:

1. The edit box can be left blank, in which case, a default value based on the
site’s soil type will be used (the default value is shown next to the edit
box).

2. As with soil group, conductivity values from the SSURGO database can be
displayed on the map when the *View Soil Survey Data* checkbox is selected.
Clicking the mouse on a colored region of the map will make its conductivity
value appear in the edit box.

3. If you have local knowledge of the site’s soil conductivity you can simply
enter it directly into the edit box. This is preferred over the other two
choices.

![](media/73c7579a75f037f163b35e696134baab.jpg)

> Figure 5. Image of calculator's soil drainage page.

> **Figure 5. The calculator's Soil Drainage page.**

> It should be noted that the hydraulic conductivity values from the SSURGO
> database are derived from soil texture and depth to groundwater and are not
> field measurements. As with soil type, there may not be any soil
> conductivity data available for your particular location.

Topography
----------

> Figure 6 displays the **Topography** page of the calculator. Site
> topography, as measured by surface slope (feet of drop per 100 feet of
> length), affects how fast excess stormwater runs off a site. Flatter slopes
> results in slower runoff rates and provide more time for rainfall to
> infiltrate into the soil. Runoff rates are less sensitive to moderate
> variations in slope. Therefore the calculator uses only four categories of
> slope – flat (2%), moderately flat (5%), moderately steep (10%) and steep
> (above 15%). As with soil type and drainage rate, any available SSURGO slope
> data will be displayed on the map if the *View Soil Survey* checkbox is
> selected. You can use the resulting display as a guide or use local
> knowledge to describe the site’s topography.

![](media/9d97c6e39e40a22cf7aa549bf2a6f3a0.jpg)

> Figure 6. Image of calculator's topography page.

> **Figure 6. The calculator's Topography page.**

Precipitation
-------------

> The **Precipitation** page of the calculator is shown in Figure 7. It is
> used to select a National Weather Service rain gage that will supply
> rainfall data for the site. Rainfall is the principal driving force that
> produces runoff. The calculator uses a long term continuous hourly rainfall
> record to make sure that it can replicate the full scope of storm events
> that might occur. In addition, it identifies a set of 24-hour extreme event
> storms associated with each rain gage location. These are a set of six
> intense storms whose sizes are exceeded only once every 5, 10, 15, 30, 50
> and 100 years, respectively.

![](media/de8a56443d9bdbfdda84805a3c4637f4.jpg)

> Figure 7. Image of calculator's precipitation page.

> **Figure 7. The calculator's Precipitation page.**

> The calculator contains a catalog of over 8,000 rain gage locations from the
> National Weather Service’s (NWS) National Climatic Data Center (NCDC).
> Historical hourly rainfall data for each station have been extracted from
> the NCDC’s repository, screened for quality assurance, and stored on an EPA
> file server. As shown in Figure 7, the calculator will automatically locate
> the five nearest gages to the site and list their location, period of record
> and average annual rainfall amount. You can then choose what you consider to
> be the most appropriate source of rainfall data for the site.

> If the *Save rainfall data …* command label is clicked, a **Save As** dialog
> window will appear allowing you to save the rainfall data to a text file in
> case you want to use the data for some other application, such as SWMM. Each
> line of the file will contain the recording station identification number,
> the year, month, day, hour, and minute of the rainfall reading and the
> measured hourly rainfall intensity in inches/hour.

Evaporation
-----------

> The **Evaporation** page of the calculator is displayed in Figure 8. It is
> used to select a weather station that will supply evaporation rates for the
> site. Evaporation determines how quickly the moisture retention capacity of
> surfaces and depression storage consumed during one storm event will be
> restored before the next event.

![](media/1dc29d7d3c839843959c3f70352bfb0c.jpg)

> **Figure 8. The calculator's Evaporation page.**

> Over 5,000 NWS weather station locations throughout the U.S. have had their
> daily temperature records analyzed to produce estimates of monthly average
> evaporation rates (i.e., twelve values for each station). These rates have
> been stored directly into the calculator. The calculator lists the five
> closest locations that appear in the table along with their period of record
> and average daily evaporation rate (the average of the twelve monthly
> rates). Note that these are “potential” evaporation rates, not recorded
> values (there are only a few hundred stations across the U.S. with long term
> recorded evaporation data). The rates have been estimated for bare soil
> using the Penman-Monteith equation; and thus, transpiration or vegetative
> land cover is not explicitly represented. More details are provided in the
> **Computational Methods** section of this document.

> As with rainfall, a *Save evaporation data …* command is available in case
> you would like to save the data to a file for use in another application. If
> this option is selected, the data will be written to a plain text file of
> your choice with the twelve monthly average rates appearing on a single
> line.

Climate Change
--------------

> The 2007 Fourth Assessment Report of the Intergovernmental Panel on Climate
> Change (IPCC) states that global warming is now unequivocal (IPCC, 2007).
> Some of the impacts that such warming can have on the small scale hydrology
> addressed by the calculator include changes in seasonal precipitation
> levels, more frequent occurrence of high intensity storm events, and changes
> in evaporation rates (Karl et al., 2009). A climate change component has
> been included in the calculator to help you explore how these impacts may
> affect the amount of stormwater runoff produced by a site and how it is
> managed.

> Figure 9 displays the **Climate Change** page of the calculator. It is used
> to select a particular future climate change scenario for the site. The
> scenarios were derived from a range of outcomes of the World Climate
> Research Program’s CMIP3 multi-model dataset (Meehl et al., 2007). This
> dataset contains results of different global climate models run with future
> projections of population growth, economic activity, and greenhouse gas
> emissions. The results have been downscaled to a regional grid that
> encompasses each of the calculator’s rain gage and weather station
> locations. Three different scenarios are available that span the range of
> changes projected by the climate models: one is representative of model
> outputs that produce hot/dry conditions, another represents changes that
> come close to the median outcome from the different models, and a third
> represents model outcomes that produce warm/wet conditions. Projections for
> each scenario are available for two different future time periods: 2035 and
> 2060.

> Each choice of climate change scenario and projection year produces a
> different percent change in monthly average rainfall, monthly average
> temperature, and annual maximum day precipitation for each rain gage
> location and weather station in the calculator’s database. The precipitation
> changes for the current choice of rain gage are shown in the right hand
> panel of the Climate Change page. These changes are used to adjust the
> historical meteorological records for the site as follows:

1. The changes in monthly average rainfall are applied as a multiplier to each
historical hourly rainfall reading that occurred in the particular month for
each year of record.

2. The changes in monthly average temperatures are applied in similar fashion
to the historical daily temperature records used to calculate an average
daily evaporation rate for each month of the year.

3. The climate change influenced extreme event rainfalls are used in place of
the historical ones.

> The hot/dry, median, and warm/wet scenarios can be used to better understand
> the uncertainty associated with future climate projections. For example,
> analyzing the two scenarios resulting in the most severe increases and
> decreases in rainfall respectively, brackets the range of possible rainfall
> conditions likely to occur. Alternately, if multiple scenarios are
> predicting increases in projected rainfall it is more likely that larger
> rainfall events will occur. All three scenarios should be considered when

> bracketing future conditions, since the greatest projected change is not
> always associated with the hot/dry or warm/wet scenarios and is different
> from one location to the next.

> More details on the source of the climate change scenarios and how they are
> used to compute site runoff are provided in the **Computational Methods**
> section of this users guide.

![](media/540278d98f9ebe1b6e3a460ea0a8daff.jpg)

> **Figure 9. The calculator's Climate Change page.**

Land Cover
----------

> Figure 10 displays the **Land Cover** page of the calculator. It is used to
> describe the different types of pervious land cover on the site.
> Infiltration of rainfall into the soil can only occur through pervious
> surfaces. Different types of pervious surfaces capture different amounts of
> rainfall on vegetation or in natural depressions, and have different surface
> roughness. Rougher surfaces slow down runoff flow providing more opportunity
> for infiltration. The remaining non-pervious site area is considered to be
> “directly connected impervious surfaces” (roofs, sidewalks, streets, parking
> lots, etc. that drain directly off-site). Disconnecting some of this area,
> to run onto lawns for example, is an LID option appearing on the next page
> of the calculator.

> You are asked to supply the percentage of the site covered by each of four
> different types of pervious surfaces:

![](media/2e9542652c83659b27100facedfbd26b.jpg)

> **Figure 10. The calculator's Land Cover page.**

1. *Forest* – stands of trees with adequate brush and forested litter cover

2. *Meadow* – non-forested natural areas, scrub and shrub rural vegetation

3. *Lawn* – sod lawn, grass, and landscaped vegetation

4. *Desert* – undeveloped land in arid regions with saltbush, mesquite, and
cactus vegetation

> You should assign land cover categories to the site that reflects the
> specific condition you wish to analyze: pre-development, current, or
> post-development. A pre-development land cover will most likely contain some
> mix of forest, meadow, and perhaps desert. Local stormwater regulations
> might provide guidance on how to select a pre-development land cover or you
> could use a nearby undeveloped area as an example. Viewing the site map in
> bird’s eye view, as shown in Figure 9, would help identify the land cover
> for current conditions. Post-development land cover could be determined from
> a project’s site development plan map. Keep in mind that total runoff volume
> is highly dependent on the amount of impervious area on the site while it is
> less sensitive to how the non-impervious area is divided between the
> different land cover categories.

LID Controls
------------

> The LID Controls page of the calculator is depicted in Figure 11. It is used
> to deploy low impact development (LID) controls throughout the site. These
> are landscaping practices designed to capture and retain stormwater
> generated from impervious surfaces that would otherwise run off the site. As
> seen in Figure 11, there are seven different types of green infrastructure
> (GI) LID controls available. You can elect to apply any mix of these
> controls by simply telling the calculator what percentage of the impervious
> area is treated by each type of control. Each control has been assigned a
> reasonable set of design parameters, but these can be modified by clicking
> on the name of the control. This will also allow you to automatically size
> the control to capture a 24-hour design storm that you specify. More details
> on each type of control practice, its design parameters and sizing it to
> retain a given design storm are provided in the **LID Controls** section of
> this users guide.

![](media/c2916648f42ae38d92abe91d77cccb79.jpg)

> Figure 11. Image of calculator's LID controls page.

> **Figure 11. The calculator’s LID Controls page.**

Results
-------

> The final page of the calculator is where a hydrologic analysis of the site
> is run and its results are displayed. As shown in Figure 12, by selecting
> the **Site Description** report option you can first review the data that
> you entered for the site and go back to make changes if needed.

![](media/773a0730f368ff94c701e759cde2755a.png)

> Figure 12. Image of calculator's results page.

> **Figure 12. The calculator’s Results page.**

> The input controls on this page are grouped together in three sections:
> **Options, Actions**, and **Reports**. The **Options** section allows you to
> control how the rainfall record is analyzed via the following settings:

1. The number of years of rainfall record to use (moving back from the most
recent year on record).

2. The event threshold, which is the minimum amount of rainfall (or runoff)
that must occur over a day for that day to be counted as having rainfall (or
runoff). Rainfall (or runoff) above this threshold is referred to as
“observable” or “measureable”.

3. The choice to ignore consecutive wet days when compiling runoff statistics
(i.e., a day with measurable rainfall must be preceded by at least two days
with no rainfall for it to be counted).

> The latter option appears in some state and local stormwater regulations as
> a way to exempt extreme storm events, such as hurricanes, from any
> stormwater retention requirements. Normally, you would not want to select
> this option as it will produce a less realistic representation of the site’s
> hydrology. Note that although results are presented as annual and daily
> values, they are generated by considering the site’s response to the full
> history of hourly rainfall amounts.

> The **Actions** section of the page contains commands that perform the
> following actions:

> *Refresh Results* - runs a long term simulation of the site’s hydrology and
> updates the output displays with new results (it will be disabled if results
> are currently available and no changes have been made to the site’s data).

> *Use as Baseline Scenario* – uses the current site data and its simulation
> results as a baseline against which future runs will be compared in the
> calculator’s output reports (this option is disabled if there are no current
> simulation results available).

> *Remove Baseline Scenario* – removes any previously designated baseline
> scenario from all output reports.

> *Print Results to PDF File* – writes the calculator’s results for both the
> current and any baseline scenario to a PDF file that can be viewed with a
> PDF reader at a future time.

> The **Reports** section of the page allows you to choose how the rainfall /
> runoff results for the site should be displayed. A complete description of
> each type of report available will be given in the next section of this
> guide.

> When the calculator first loads or begins to analyze a new site the
> following default values are used:

| Soil Group: | B |
|--------------------------|---------------------------|
| Conductivity: | 0.4 inches/hour |
| Surface Slope: | 5% |
| Rainfall Station: | Nearest cataloged station |
| Evaporation Station: | Nearest cataloged station |
| Climate Change Scenario: | None |
| Land Cover: | 40% Lawn, 60% impervious |
| LID Controls: | None |
| Years to Analyze: | 20 |
| Event Threshold: | 0.10 inches |
| Ignore Consecutive Days: | No |

Interpreting the Calculator’s Results
=====================================

> The **Results** page of the calculator (Figure 12) contains a list of
> reports that can be generated from its computed results. Before discussing
> what these reports contain it will be useful to briefly describe how the
> calculator derives its results. After you select the *Refresh Results*
> command, the calculator internally performs the following operations:

1. A SWMM input file is created for the site using the information you provided
to the calculator.

2. The historical hourly rainfall record for the site is adjusted for any
climate change scenario selected.

3. SWMM is run to generate a continuous time series of rainfall and runoff from
the site at 15- minute intervals for the number of years specified.

4. The 15-minute time series of rainfall and runoff are accumulated into daily
values by calendar day (midnight to midnight).

5. Various statistics of the resulting daily rainfall and runoff values are
computed.

6. The SWMM input file is modified and run once more to compute the runoff
resulting from a set of 24-hour extreme rainfall events associated with
different return periods. The rainfall magnitudes are derived from your
choice of climate change scenario or from the historical record if climate
change is not being considered.

> Thus for the continuous multi-year run, the rainfall / runoff output
> post-processed by the calculator are the 24-hour totals for each calendar
> day of the period simulated. A number of different statistical measures are
> derived from these data, some of which will be more relevant than others
> depending on the context in which the calculator is being used.

Summary Results
---------------

> The calculator’s **Summary Results** report, an example of which is shown in
> Figure 13, contains the following items:

- A pie chart showing the percentage of total rainfall that infiltrates,
evaporates, and becomes runoff. Note that because the calculator does not
explicitly account for the loss of soil moisture to vegetative
transpiration, the latter quantity shows up as infiltration in this chart.

- *Average Annual Rainfall:* Total rainfall (in inches) that falls on the site
divided by the number of years simulated. It includes all precipitation
amounts recorded by the station assigned to the site, even those that fall
below the Event Threshold.

- *Average Annual Runoff:* Total runoff (in inches) produced by the site
divided by the number of years simulated. It includes all runoff amounts,
even those that fall below the Event Threshold.

- *Days per Year with Rainfall*: The number of days with measureable rainfall
divided by the number of years simulated, i.e., the average number of days
per year with rainfall above the Event Threshold.

![](media/23a6973a3778fd5c5beac8f49fbd91e5.jpg)

> An image of a pie chart for annual rainfall.

![](media/b386dd9e497163f6537f525e3d5df967.png)

> **Figure 13. The calculator’s Summary Results report.**

- *Days per Year with Runoff:* The number of days with measureable runoff
divided by the number of years simulated, i.e., the average number of days
per year with runoff above the Event Threshold.

- *Percent of Wet Days Retained:* The percentage of days with measureable
rainfall that do not have any measureable runoff generated. It is computed
by first counting the number of days that have rainfall above the Event
Threshold but runoff below it. This number is then divided by the total
number of rainfall days above the threshold and multiplied by 100.

- *Smallest Rainfall w/ Runoff*: The smallest daily rainfall that produces
measureable runoff. All days with rainfall less than this amount have runoff
below the threshold.

- *Largest Rainfall w/o Runoff*: The largest daily rainfall that produces no
runoff. All days with more rainfall than this will have measureable runoff.
Of the wet days that lie between this depth and the smallest rainfall with
runoff, some will have runoff and others will not.

- *Max. Retention Volume*: The largest daily rainfall amount retained on
site over the period of record. This includes days that produce runoff
from storms that are only partly captured.

> Note that if the *Ignore Consecutive Wet Days* option is in effect then the
> retention statistics listed above are computed by ignoring any subsequent
> back to back wet days for a period of 48 hours following an initial wet day.

> **Rainfall / Runoff Events**

> The calculator’s Rainfall/Runoff report contains a scatter plot of the daily
> runoff depth associated with each daily rainfall event over the period of
> record analyzed. Only days with rainfall above the event threshold (see page
> 25) are plotted. Events that are completely captured on site (i.e., have
> runoff below the event threshold) show up as points that lie along the
> horizontal axis. There is not always a consistent relationship between
> rainfall and runoff. Days with similar rainfall amounts can produce
> different amounts of runoff depending on how that rainfall was distributed
> over the day and on how much rain occurred in prior days.

![](media/4e936bd1f6d28525aada9e620d7a3c53.jpg)

> Figure 14. An image of a scatter chart showing the calculator's
> rainfall/runoff event report.

> **Figure 14. The calculator's Rainfall / Runoff Event report.**

Rainfall / Runoff Frequency
---------------------------

> An example of the calculator’s **Rainfall / Runoff Frequency** report is
> seen in Figure 15. It shows how many times per year, on average, a given
> daily rainfall depth or runoff depth will be exceeded. As an example, from
> Figure 14 we see that there are three days per year where it rains more than
> two inches, but only one day per year where there is more than this amount
> of runoff. Events with more than four inches of rain occur only once every
> two years.

![](media/fc30aecef2945689863c170f3f53d0ec.jpg)

> Figure 15. A graph of rainfall/runoff exceedance frequency.

> **Figure 15. The calculator’s Rainfall / Runoff Frequency report.**

> The rainfall frequency curve is generated by simply ordering the measureable
> daily rainfall results from the long term simulation from lowest to highest
> and then counting how many days have rainfall higher than a given value. The
> same procedure is used to generate the daily runoff frequency curve. Curves
> like these are useful in comparing the complete range of rainfall / runoff
> results between different development, control and climate change scenarios.
> Examples might include determining how close a post-development condition
> comes to meeting pre-development hydrology or seeing what effect future
> changes in precipitation due to climate change might have on LID control
> effectiveness.

Rainfall Retention Frequency
----------------------------

> Another type of report generated by the calculator is the **Rainfall
> Retention Frequency** plot as shown in Figure 16. It graphs the frequency
> with which a given depth of rainfall will be retained on site for the
> scenario being simulated. For a given daily rainfall depth X the
> corresponding percent of time it is retained represents the fraction of
> storms below this depth that are completely captured plus the fraction of
> storms above it where at least X inches are captured. A rainfall event is
> considered to be completely captured if its corresponding runoff is below
> the user stipulated Event Threshold.

> To make this concept clearer, consider a run of the calculator that resulted
> in 1,000 days of measureable rainfall and associated runoff for a site.
> Suppose there were 300 days with rainfall below one inch that had no
> measureable runoff and 100 days where it rained more than an inch but the
> runoff was less than an inch. The retention frequency for a one inch
> rainfall would then be (300 + 100) / 1,000 or 40 percent.

![](media/955ca6cb020fc8d084c96b8264698c09.jpg)

> **Figure 16. The calculator’s Rainfall Retention Frequency report.**

> The Rainfall Retention Frequency report is useful for determining how
> reliably a site can meet a required stormwater retention standard. Looking
> at Figure 16, any retention standard above one inch would only be met about
> 32 % of the time (i.e., only one in three wet days would meet the target).
> Note that any rainfall events below the target depth that are completely
> captured are counted as having attained the target (e.g., a day with only
> 0.3 inches of rainfall will be counted towards meeting a retention target of

> 1.0 inches if no runoff is produced). That is why the plot tails off to the
> right at a constant level of 29 percent, which happens to be the percent of
> all wet days fully retained for this example (refer to the *Percent of Wet
> Days Retained* entry in the **Summary Results** report of Figure 13).

Runoff by Rainfall Percentile
-----------------------------

> The **Runoff by Rainfall Percentile** report produced by the calculator is
> displayed in Figure 17. It shows what percentage of total measureable runoff
> is attributable to different size rainfall events. The bottom axis is
> divided into intervals of daily rainfall event percentiles. The top axis
> shows the rainfall depth corresponding to each end-of-interval percentile.
> The bars indicate what percentage of total measureable runoff is generated
> by the rainfall within each size interval. This provides a convenient way of
> determining what rainfall depth corresponds to a given percentile
> (percentiles are listed along the bottom of the horizontal axis while their
> corresponding depths are listed across the top of the axis.)

![](media/e75b3e5ebcd2d447d44f84c2a487454c.jpg)

> Figure 17. A bar chart for the calculator's runoff by rainfall percentile
> report.

> **Figure 17. The calculator’s Runoff by Rainfall Percentile report.**

> As an example of how to interpret this plot, look at the bar in Figure 17
> associated with the 90th to 95th percentile storm interval (daily rainfalls
> between 1.38 and 1.81 inches). Storms of this magnitude make up 16 % of the
> total runoff (for this particular site and its land cover). Note that by
> definition the number of events within this 5 percentile interval is 5 % of
> the total number of daily rainfall events.

Extreme Event Rainfall/Runoff
-----------------------------

> The final report produced by the calculator shows the rainfall and resulting
> runoff for a series of extreme event (high intensity) storms that occur at
> different return periods. An example is shown in Figure 18. Each stacked bar
> displays the annual max day rainfall that occurs with a given return period
> and the runoff that results from it for the current set of site conditions.
> The max day rainfalls correspond to those shown on the **Climate Change**
> page for the scenario you selected (or to the historical value if no climate
> change option was chosen).

> Note that the max day rainfalls at different return periods are a different
> statistic than the daily rainfall percentiles that are shown in the **Runoff
> by Rainfall Percentile** report (see Figure 17). The latter represents the
> frequency with which any daily rainfall amount is exceeded while the former
> estimates how often the largest daily rainfall in a year will be exceeded
> (hence its designation as an extreme storm event). Most stormwater retention
> standards are stated with respect to rainfall percentiles while extreme
> event rainfalls are commonly used to define design storms that are used to
> size stormwater control measures. The extreme event rainfall amounts are
> generated using a statistical extrapolation technique (as described in the
> **Computational Methods** section) that allows one to estimate the once in X
> year event when fewer than X years of observed rainfall data are available.

Printing Output Results
-----------------------

> As mentioned previously, all of the information displayed on the **Runoff**
> pages of the calculator can be written to a PDF file to provide a permanent
> record of the analysis made for a site. You simply select the *Print Results
> to PDF File* command in the upper left panel of the **Runoff** page and then
> enter a name for the file to which the results will be written.

![](media/e397bf443a5e29f3f0d426ec3d03b225.jpg)

> Figure 18. Bar chart for calculator's extreme event rainfall/runoff report.

> **Figure 18. The calculator’s Extreme Event Rainfall / Runoff report.**

Applying LID Controls
=====================

> LID controls are landscaping practices designed to capture and retain
> stormwater generated from impervious surfaces that would otherwise run off
> the site. The Stormwater Calculator allows you to apply a mix of seven
> different types of LID practices to a site. These are displayed in Table 2
> along with brief descriptions of each. This particular set of GI practices
> was chosen because they can all be sized on the basis of just area. Two
> other commonly used controls, vegetative swales and infiltration trenches,
> are not included because their sizing depends on their actual location and
> length within the site, information which is beyond the scope of the
> calculator.

> Each LID practice is assigned a set of default design and sizing parameters,
> so to apply a particular practice to a site, you only have to specify what
> percentage of the site’s impervious area will be treated by the practice
> (see Figure 10). You can, however, modify the default settings by clicking
> on the name of the particular practice you wish to edit. For example, Figure
> 19 displays the resulting *LID Design* dialog window that appears when the
> *Street Planter* LID is selected. All of the LID controls have similar *LID
> Design* dialogs that contain a sketch and brief description of the LID
> control along with a set of edit boxes for its design parameters. The *Learn
> More …* link will open your web browser to a page that provides more
> detailed information about the LID practice.

> Table 3 lists the various parameters that can be edited with the *LID
> Design* dialogs along with their default factory setting. Arguably the most
> important of these is the *Capture Ratio* parameter. This determines the
> size of the control relative to the impervious area it treats. Note that
> because the calculator does not require that the actual area of the site be
> specified, all sub-areas are stated on a percentage basis. So, total
> impervious area is some percentage of the total site area, the area treated
> by a particular LID control is some percentage of the total impervious area,
> and the area of the LID control is some percentage of the area it treats.

> Pressing the *Size for Design Storm* button on an *LID Design* form will
> make the calculator automatically size the LID control to capture the
> *Design Storm Depth* that was entered on the **LID Control** page (see
> Figure 10). This computes a *Capture Ratio* (area of LID relative to area
> being treated) for *Rain Gardens*, *Street Planters*, *Infiltration Basins*,
> and *Porous Pavement* by taking the ratio of the design storm depth to the
> depth of available storage in the LID unit. For *Infiltration Basins* it
> also determines the depth that will completely drain the basin within 48
> hours. For *Rainwater Harvesting* it calculates how many cisterns of the
> user-supplied size will be needed to capture the design storm. Automatic
> sizing is not available for *Disconnection,* since no storage volume is used
> with this practice, and for *Green Roofs,* since the ratio is 100% by
> definition. The methods used to automatically size the LID controls are
> described in the **Computational Methods** section of this users guide. Note
> that even when sized in this fashion, a LID control might not fully capture
> the design storm because it may not have drained completely prior to the
> start of the storm or the rainfall intensity during some portion of the
> storm event may overwhelm its infiltration capacity. The calculator is able
> to capture such behavior because it continuously simulates the full range of
> past precipitation events.

> **Table 2. Descriptions of LID practices included in the calculator.**

| LID Practice | Description |
|----------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [./media/image42.jpeg](./media/image42.jpeg) | Disconnection refers to the practice of directing runoff from impervious areas, such as roofs or parking lots, onto pervious areas, such as lawns or vegetative strips, instead of directly into storm drains. |
| [./media/image43.jpeg](./media/image43.jpeg) | Rain harvesting systems collect runoff from rooftops and convey it to a cistern tank where it can be used for non-potable water uses and on- site infiltration. |
| [./media/image44.jpeg](./media/image44.jpeg) | Rain Gardens are shallow depressions filled with an engineered soil mix that supports vegetative growth. They provide opportunity to store and infiltrate captured runoff and retain water for plant uptake. They are commonly used on individual home lots to capture roof runoff. |
| [./media/image45.jpeg](./media/image45.jpeg) | Green roofs (also known as vegetated roofs) are bioretention systems placed on roof surfaces that capture and temporarily store rainwater in a soil medium. They consist of a layered system of roofing designed to support plant growth and retain water for plant uptake while preventing ponding on the roof surface. |
| [./media/image46.jpeg](./media/image46.jpeg) | Street Planters are typically placed along sidewalks or parking areas. They consist of concrete boxes filled with an engineered soil that supports vegetative growth. Beneath the soil is a gravel bed that provides additional storage as the captured runoff infiltrates into the existing soil below. |
| [./media/image47.jpeg](./media/image47.jpeg) | Infiltration basins are shallow depressions filled with grass or other natural vegetation that capture runoff from adjoining areas and allow it to infiltrate into the soil. |
| [./media/image48.jpeg](./media/image48.jpeg) | Porous Pavement systems are excavated areas filled with gravel and paved over with a porous concrete or asphalt mix or with modular porous blocks. Normally all rainfall will immediately pass through the pavement into the gravel storage layer below it where it can infiltrate at natural rates into the site's native soil. |

> Disconnect.bmp

> Disconnection

> BlueCistern.bmp

> Rain Harvesting

> RainGarden2.bmp

> Rain Gardens

> GreenRoof.bmp

> Green Roofs

> streetplanter.bmp

> Street Planters

> InfiltrationBasin5.jpg

> Infiltration Basins

> PorousPavement2.bmp

> Porous Pavement

![](media/ef58733c80cd8afe4ec76cc9f2e574bc.jpg)

> Figure 19. Image of a street planter. Example of LID design dialog for a
> street planter.

> **Figure 19. Example of a LID Design dialog for a street planter.**

> There are some additional points to keep in mind when applying LID controls
> to a site:

1. The area devoted to *Disconnection*, *Rain Gardens*, and *Infiltration
Basins* is assumed to come from the site’s collective amount of pervious
land cover while the area occupied by *Green Roofs*, *Street Planters* and
*Porous Pavement* comes from the site’s store of impervious area.

2. Underdrains (slotted pipes placed in the gravel beds of *Street Planter* and
*Porous Pavement* areas to prevent the unit from flooding) are not provided
for. However since underdrains are typically oversized and placed at the top
of the unit’s gravel bed, the effect on the amount of excess runoff flow
bypassed by the unit is the same whether it flows out of the underdrain or
simply runs off of a flooded surface.

3. The amount of void space in the soil, gravel, and pavement used in the LID
controls are listed in Table 4 below. They typically have a narrow range of
acceptable values and results are not terribly sensitive to variations
within this range.

> **Table 3. Editable LID parameters.**

| LID Type | Parameter | Default Value |
|---------------------|-------------------------|-------------------|
| Disconnection | Capture Ratio | 100 % |
| Rain Harvesting | Cistern Size | 100 gal |
| | Cistern Emptying Rate | 50 gal/day |
| | Number of Cisterns | 4 per 1,000 sq ft |
| Rain Gardens | Capture Ratio | 5 % |
| | Ponding Depth | 6 inches |
| | Soil Media Thickness | 12 inches |
| | Soil Media Conductivity | 10 inches/hour |
| Green Roofs | Soil Media Thickness | 4 inches |
| | Soil Media Conductivity | 10 inches/hour |
| Street Planters | Capture Ratio | 6 % |
| | Ponding Depth | 6 inches |
| | Soil Media Thickness | 18 inches |
| | Soil Media Conductivity | 10 inches/hour |
| | Gravel Bed Thickness | 12 inches |
| Infiltration Basins | Capture Ratio | 5 % |
| | Basin Depth | 6 inches |
| Porous Pavement | Capture Ratio | 100 % |
| | Pavement Thickness | 4 inches |
| | Gravel Bed Thickness | 18 inches |

> **Table 4. Void space values of LID media.**

| Property | LID Controls | Default Value |
|-----------------------|-----------------------------------------------|---------------|
| Soil Media Porosity | Rain Gardens, Green Roofs and Street Planters | 45 % |
| Gravel Bed Void Ratio | Street Planters and Porous Pavement | 75 % |
| Pavement Void Ratio | Porous Pavement | 12 % |

Example Application
===================

> An example will now be presented to show how the calculator can be used to
> analyze small site hydrology. The site shown earlier in Figure 3 will be
> used as our study area, although, because the calculator is national in
> scope, we could have chosen any other location just as well. It is a 12 acre
> environmental research facility. The baseline data for the site have already
> been obtained from Figures 4 through 8. These identified the site’s
> hydrologic soil group as B, its hydraulic conductivity as 0.108 inches/hour,
> its topography as moderately steep, its closest rain gage as having an
> annual rainfall of

> 47.05 inches and its closest weather station averaging 0.2 inches per day of
> potential evaporation. We will simulate three different development
> scenarios (pre-development, post-development, and post- development with LID
> controls) to show how one can both derive and evaluate compliance with
> different stormwater retention standards. After that we will see what effect
> a future climate change scenario might have on the site’s ability to comply
> with the standard.

Pre-Development Conditions
--------------------------

> Pre-development hydrology is often cited as an ideal stormwater management
> goal to attain because it maintains a sustainable and ecologically balanced
> condition within a watershed. It is also commonly used to define specific
> stormwater retention standards, as will be discussed shortly. To simulate a
> pre- development condition for our study area, we must identify the land
> cover that characterizes the site in its natural pre-developed state. If you
> pan the site’s map display to the left, you will observe an adjacent natural
> area that suggests a pre-development land cover of 80 percent *Forest* and
> 20 percent *Meadow*. These values are entered on the **Land Cover** page of
> the calculator (see Figure 7). For the next page of the calculator no **LID
> Controls** are selected since we are analyzing a pre-development scenario.
> On the final page of the calculator, we select to analyze the latest 20
> years of rainfall data and to not ignore back to back storm events.

> Running the calculator for these conditions produces the Summary Results
> report listed in Table 5. It shows that there is an average of 71 days per
> year with rainfall, but only 7 of these produce measureable runoff. Of the
> 47 inches of rainfall per year, 91 percent is retained on site. The **Runoff
> by Rainfall Percentile** plot for this run, shown in Figure 20, indicates
> that it is mainly storms above 1 inch that produce almost all of the runoff.

> **Table 5. Summary results for pre-development conditions on the example
> site.**

![](media/de7ae944ccb438cbcc5650eb7eee4d68.png)

![](media/cb74d50cd34662517b0a28ea41787fa7.jpg)

> **Figure 20. Runoff from different size storms for pre-development
> conditions on the example site.**

> Now consider a stormwater retention standard that requires a site to capture
> all rainfall produced from storms up to and including the 95th percentile
> daily rainfall event or the rainfall that would be retained on the site in
> its natural pre-developed state, whichever is smaller. To identify the depth
> of runoff that must be retained under this standard, we first need to know
> what the 95th percentile rainfall depth is. This can be found from the
> aforementioned **Runoff by** R*ainfall Percentile* plot in Figure 20. The
> 95th percentile storm corresponds to 1.75 inches. To determine the rainfall
> retained on the undeveloped site, we can examine the calculator’s **Rainfall
> Retention Frequency** report for this run shown in Figure

> 21. Because the standard attaches 95 % reliability to its target rainfall,
> we assume that the same would hold for its retention target. From Figure 21,
> we see that a retention target of 1.3 inches could be met 95 % of the time
> (i.e., of the 71 days per year on average with measureable precipitation,
> for 67 of those the site will retain either the entire rainfall or the first
> 1.3 inches, whichever is smaller). Because this is less than the 1.75 inch,
> 95th percentile rainfall, the standard for this site would be to retain 1.3
> inches.

![](media/324617d2be236941292df1f8e511ef57.jpg)

> **Figure 21. Rainfall retention frequency under pre-development conditions
> for the example site.**

Post-Development Conditions
---------------------------

> Next the calculator will be used to analyze the example site’s hydrology
> under post-development conditions. Because we want to compare the results
> against those for the pre-development case, we first select the *Use as
> Baseline Scenario* option on the *Results* page of the calculator to tell it
> to display our pre-development results as a comparison baseline scenario in
> future runs. We then determine the land cover for the site in its developed
> state. Table 6 shows the distribution of the different land cover categories
> across the site. Impervious surfaces cover almost half of the total site
> area. Selecting the *Land Cover* page of the calculator, we replace the
> pre-development land cover with this new one (refer to Figure 10).

> **Table 6. Land cover for the example site in developed state.**

| Land Cover | % of Total Area | % of Impervious Area |
|---------------------------|-----------------|----------------------|
| Forest | 18 | \- |
| Meadow | 8 | \- |
| Lawn | 25 | \- |
| Total Impervious Surfaces | 49 | 100 |
| Roofs | 10 | 20 |
| Parking | 9 | 20 |
| Roads & Sidewalks | 30 | 60 |

> We next return to the *Results* page and re-run the analysis. Table 7
> contains the resulting comparison of summary runoff statistics between the
> two conditions. Note how the developed site with no runoff controls comes
> nowhere close to matching pre-development hydrology. Instead of only seven
> days per year with measureable runoff, there are 51 and the total volume of
> runoff has increased more than fivefold. As seen in the *Rainfall Retention
> Frequency* plot of Figure 22, the 1.3 inch retention target identified
> earlier can only be met about 30% of the time (which consists primarily of
> those days where a low amount of rainfall is entirely contained on site).

> **Table 7. Comparison of runoff statistics for post-development (Current)
> and pre-development (Baseline) conditions.**

![](media/037c4165d512e39dfaa74d844843df9a.png)

![](media/361bc28bd35542cc756662aba7a0b09f.jpg)

> **Figure 22. Rainfall retention frequency for pre-development (Baseline) and
> post-development (Current) conditions.**

Post-Development with LID Practices
-----------------------------------

> We will now add some LID practices to our example site to see how well they
> can make its post- development hydrology more closely match that of
> pre-development. Returning the calculator to the *LID Controls* page we see
> there are seven types of LID controls available to apply in any combination
> and sizing to the impervious areas of the site. From Table 6, we see that
> roofs occupy 20 percent of the total impervious area, parking lots another
> 20 percent, and the remaining 60 percent is roads and sidewalks. Because the
> site houses a research facility, we assume that we can capture runoff from
> the roof of the main building (15 percent of the impervious area) in
> *Cisterns* and use it for non-potable purposes within the site. Runoff from
> the roofs, roads and parking areas on the north side of the site will be
> directed into an *Infiltration Basin*. A portion of the south parking area
> will be replaced with *Porous Pavement*.

> Finally, strategically placed *Rain Gardens* will be used to intercept
> runoff from the remaining roofs, roads and sidewalks.

> Figure 23 shows how the **LID Controls** practices page of the calculator
> was filled in to reflect these choices. A design storm size of 1.75 inches,
> based on the 95th percentile storm, was chosen to automatically size each
> LID control. Each LID’s design dialog was launched to apply automatic sizing
> to it. The results of this process are shown in Figures 24 and 25 (capture
> ratios for the infiltration basin, rain gardens and porous pavement; number
> of cisterns / 1,000 square feet for rain harvesting).

![](media/4b039b772e559def80fbf0e3bd61bcf1.jpg)

> Figure 23. Image of low impact development controls applied to the example
> site.

Figure 23. Low Impact Development controls applied to the example site.
-----------------------------------------------------------------------

![](media/6d3ca9e082e53d863e9a64eea0fb88cb.jpg)

> Figure 24. Image of rain harvesting system.

![](media/46cd264b80ad6ff7e277c92997f31bf4.jpg)

> **Figure 24. Design parameters for Rain Harvesting and Rain Garden
> controls.**

![](media/d9dff72ce3697ee2a096ed1dfc96271c.jpg)

> Figure 24. Design parameters for rain harvesting and rain garden controls.

![](media/fb7bc1e9f3f2b9a4303b7817d3d08f2d.jpg)

> **Figure 25. Design parameters for the Infiltration Basin and Porous
> Pavement controls.**

> Re-running the calculator for the developed site with LID controls produces
> the summary results shown in Table 8. The site now comes very close to
> matching the pre-development hydrology. It has only one more day per year,
> on average, with runoff than does the pre-developed site and only one more
> inch of annual runoff. Figure 26 shows that the runoff frequency of the
> controlled site is quite close to the pre- developed site. Figure 27 shows
> an almost identical contribution of different size storms to runoff between
> the two. Finally, from Figure 28 we see that with this extensive use of LID
> controls the site could meets the 1.3 inch retention standard at the
> required 95% level of confidence.

> **Table 8. Runoff statistics for pre-development (Baseline) and
> post-development with LID controls (Current) scenarios.**

![](media/d9d673fae78e7866ba02add80f0464ef.png)

![](media/df4ec8cde35362be264e1160c1b0d773.jpg)

> Figure 26. A graph for daily runoff frequency curves for baseline and
> current conditions.

> **Figure 26. Daily runoff frequency curves for pre-development (Baseline)
> and post- development with LID controls (Current) conditions.**

![](media/32e874af1219f3f03efac22c74acc858.jpg)

> Figure 27. A bar chart for runoff contribution by rainfall percentile.

> **Figure 27. Contribution to total runoff by different magnitude storms for
> pre-development (Baseline) and post-development with LID controls (Current)
> conditions.**

![](media/087b8afb682feab066fff99139f273b1.jpg)

> **Figure 28. Retention frequency plots under pre-development (Baseline) and
> post- development with LID controls (Current) conditions.**

> **Climate Change Impacts**

> As a final step in our analysis of the example site we will calculate what
> impact a future change in local climate might have on the ability of the LID
> practices we installed to control runoff. Figure 29 is the **Climate
> Change** page for our site, showing how different scenarios projected to the
> year 2060 affect monthly rainfall levels and extreme storm events. Observe
> that the Warm/Wet scenario results in higher average rainfall while the
> Hot/Dry scenario produces slightly larger extreme storms. To provide the
> largest climate change impact we will select the Warm/Wet scenario for this
> example.

> Because we want to compare the effect that a future Warm/Wet rainfall
> pattern has on the developed site with LID controls to the previous run that
> used the historical rainfall record, we return to the **Results** page and
> remove the previous Baseline Scenario (the one for the pre-developed site)
> and replace it with the most current set of results -- the one for the
> developed site with LID controls analyzed for the historical rainfall
> record. We then re-run the analysis, using our same set of LID designs but
> now subject to changes in the rainfall record that reflect a Warm/Wet future
> climate condition.

![](media/0736801fa426c4ef9afce6cc8dc2b685.jpg)

> Figure 29. Image of graphs showing climate change scenarios.

> **Figure 29. Climate change scenarios for the example site.**

> The resulting **Summary Results** report for the adjusted rainfall record is
> shown in Table 9. Remember that the *Current Scenario* results represent the
> site response under the future set of climatic conditions while the
> *Baseline Scenario* results are for historical conditions. We observe that
> the climate change impact on the long term performance of the site is quite
> modest. Although annual rainfall increases by 4 inches (8.5 %), there is
> only 1.6 additional inches of runoff per year and only one more day per year
> with measureable runoff.

> From the **Rainfall / Runoff Frequency** plot of Figure 30 we see that the
> distribution of daily rainfall events between the two climate scenarios is
> quite similar for the smaller size storms but that storms above 3 inches
> will occur more frequently for the future Warm/Wet scenario. (E.g., daily
> rainfalls exceeding 4 inches have historically occurred only once every 3
> years but are predicted to occur once every 18 months in the future.)
> Regarding the retention target of 1.3 inches, the **Rainfall Retention
> Frequency** plot of Figure 31 shows that under the future Warm/Wet scenario
> there is a drop of only one percentage point in the probability of meeting
> the target (from 95 to 94 %).

> **Table 9. Summary results under a Warm/Wet (Current) climate change
> scenario compared to the historical (Baseline) condition.**

![](media/548965ffdfaaabd8226cd5ac8a8cdf3e.png)

![](media/5404af3453c17435761a292f4d6d5e46.jpg)

> **Figure30. Daily rainfall and runoff frequencies for the historical
> (Baseline) and Warm/Wet climate scenarios.**

![](media/54163d589a5a283d36d13dcd6cdbe36e.jpg)

> **Figure 30. Target event retention for the historical (Baseline) and
> Warm/Wet climate scenarios.**

> Finally, we can examine how the site performs when faced with extreme, high
> intensity rainfall events that are expected to occur only once every five or
> more years. Figure 32 shows the **Extreme Event Rainfall / Runoff** report
> for the developed site subjected to the two climate scenarios. We observe
> that there is only a minor increase in estimated rainfall amounts for all
> return periods under the Warm/Wet scenario as compared to the baseline
> historical scenario. These amounts simply mirror the numbers displayed on
> the **Climate Change** page of the calculator for this site (see Figure 29).
> None of these extreme event storms can be completely captured by the LID
> controls deployed on the site. But this is to be expected since the LID
> controls were only designed to capture up to 1.3 inches of rainfall. The
> increase in the amount of bypassed rainfall under the future Warm/Wet
> scenario compared to the historical record appears to be proportional to the
> difference in the amount of rainfall between the two.

![](media/b7eb43716e10416b79903e8454f3c876.jpg)

> Figure 32. A graph for extreme event rainfall/runoff

> **Figure 32. Extreme event rainfall and runoff for the Warm/Wet climate
> change scenario and the historical record (Baseline).**

> **6. Computational Methods**

> The National Stormwater Calculator uses SWMM 5 (EPA, 2010) as its
> computational engine. SWMM is a comprehensive model that addresses surface
> runoff, infiltration, groundwater, snow melt, stormwater detention, and full
> dynamic wave flow routing within any configuration of open and closed
> channels.

> Only its runoff, infiltration, and LID sub-models are used by the
> calculator. This section describes how SWMM carries out its hydrology
> calculations, how the calculator sets up a SWMM model for the site being
> analyzed, how it populates the parameter values needed to run the model, and
> how it post- processes the results produced by SWMM.

> **SWMM’s Runoff Model**

> SWMM allows a study area to be subdivided into any number of irregularly
> shaped subcatchment areas to best capture the effect that spatial
> variability in topography, drainage pathways, land cover, and soil
> characteristics have on runoff generation. An idealized subcatchment is
> conceptualized as a rectangular surface that has a uniform slope and drains
> to a single outlet point or channel or to another sub- catchment. Each
> subcatchment can be further divided into three subareas: an impervious area
> with depression (detention) storage, an impervious area without depression
> storage and a pervious area with depression storage. Only the latter area
> allows for rainfall losses due to infiltration into the soil.

> SWMM uses a nonlinear reservoir model to estimate surface runoff produced by
> rainfall over each sub- area of a subcatchment (Chen and Shubinski 1971).
> From conservation of mass, the net change in depth per unit of time of water
> stored on the land surface is simply the difference between inflow and
> outflow rates over the subcatchment:

> 𝝏𝝏𝝏𝝏 = 𝒊𝒊 − 𝒆𝒆 − 𝒇𝒇 − 𝒒𝒒 (1)

> 𝝏𝝏𝝏𝝏

> where *d* = depth of water on the land surface, *i* = rate of rainfall + any
> runon from upstream subcatchments, *e* = evaporation rate, *f* = soil
> infiltration rate, *q* = runoff rate and *t* = time. Note that the fluxes
> *i, e, f*, and *q* are expressed as flow rates per unit area. By assuming
> that the overland flow across the sub-area’s width is normal, the Manning
> equation can be used to express the runoff rate *q* as:

> 𝒒𝒒 = 𝟏𝟏.𝟒𝟒𝟒𝟒𝟒𝟒𝑺𝑺𝟏𝟏/𝟐𝟐 (𝝏𝝏 − 𝝏𝝏

> )𝟓𝟓/𝟑𝟑

𝑨𝑨𝑨𝑨

𝒔𝒔

(2)

> where *W* = width of the subcatchment’s outflow face, *S* = subcatchment
> slope, *n* = roughness coefficient, *A* = subcatchment area and *ds* =
> depression storage depth. The latter represents initial rainfall
> abstractions such as surface ponding, interception by vegetation, and
> surface wetting. Note that no runoff occurs when *d* is below *ds*. How the
> calculator sets values for the parameters in this equation is discussed
> later on in this section.

> Substituting (2) into (1) produces an ordinary non-linear differential
> equation that can be solved numerically for *d* over a sequence of discrete
> time steps given externally imposed rainfall and

> evaporation rates and a computed infiltration rate *f*. By knowing *d*, (2)
> can be evaluated to determine the runoff *q* at each time step.

> SWMM 5 offers a choice of three different methods for computing soil
> infiltration rates – the Horton, Green-Ampt and Curve Number models. The
> Green-Ampt method was chosen for use in the calculator because it is based
> on physical parameters that can be related to the site’s soil type. SWMM
> uses the well-known Mein-Larson form of this model (Mein and Larson, 1973):

> 𝒇𝒇 = 𝑲𝑲 �𝟏𝟏 + (𝝓𝝓−𝜽𝜽𝟎𝟎)(𝝏𝝏+𝝍𝝍)� (3)

> 𝑭𝑭

> where *Ks* = saturated hydraulic conductivity, *φ* = soil porosity, *θ0* =
> initial soil moisture content, *ψ* = suction head at the wetting front, and
> *F* = cumulative infiltration volume. Equation (3) applies after a
> sufficient time has elapsed to saturate the top layer of soil. During wet
> periods the moisture content of the uppermost layer of soil increases at a
> rate of 𝒇𝒇/𝑳𝑳𝒖𝒖 where *Lu* is the layer depth equal to 𝟒𝟒/√𝑲𝑲𝒔𝒔 (for *Lu* in
> inches and *Ks* in in/hr). During dry periods the moisture content decreases
> at a rate of *krθ0*

> where the rate constant *kr* is estimated as �𝑲𝑲𝒔𝒔/𝟕𝟕𝟓𝟓 . At the start of
> the next wet period *θ0* is set equal to the current moisture content.

> **SWMM’s LID Model**

> SWMM 5 has been extended to explicitly model several types of LID practices
> (Rossman, 2009). Consider a typical bio-retention cell in the form of a
> street planter as shown in the left panel of Figure

1. Conceptually it can be represented by a series of three horizontal layers as
depicted in the figure’s right panel.

![](media/c0af3f520a2b9584f00a89044fdf2cfe.jpg)

> **Figure 31. Conceptual representation of a bio-retention cell.**

> The surface layer receives both direct rainfall and run-on from other areas.
> It loses water through infiltration into the soil layer below it, by
> evaporation of any water stored in depression storage and vegetative
> capture, and by any surface runoff that might occur. The soil layer contains
> an amended soil mix that can support vegetative growth. It receives
> infiltration from the surface layer and loses water through evaporation and
> by percolation into the storage layer below it. The storage layer consists
> of coarse crushed stone or gravel. It receives percolation from the soil
> zone above it and loses water by either infiltration into the underlying
> natural soil or by outflow through a perforated pipe under drain system.

> The hydrologic performance of this LID unit can be modeled by solving the
> mass balance equations that express the change in water volume in each layer
> over time as the difference between the inflow water flux rate and the
> outflow flux rate. The equations for the surface layer, soil layer, and
> storage layer can be written as

> 𝝏𝝏𝝏𝝏𝟏𝟏 = 𝒊𝒊 + 𝒒𝒒𝟎𝟎 − 𝒆𝒆𝟏𝟏 − 𝒇𝒇𝟏𝟏 − 𝒒𝒒𝟏𝟏 (4)

> 𝑳𝑳𝟐𝟐 𝝏𝝏𝜽𝜽𝟐𝟐 = 𝒇𝒇𝟏𝟏 − 𝒆𝒆𝟐𝟐 − 𝒇𝒇𝟐𝟐 (5)

> 𝝓𝝓𝟑𝟑 𝝏𝝏𝝏𝝏𝟑𝟑 = 𝒇𝒇𝟐𝟐 − 𝒇𝒇𝟑𝟑 − 𝒒𝒒𝟑𝟑

> (6)

> respectively, where *d1* = depth of ponded surface water, *θ2* = soil layer
> moisture content, *d3* = depth of water in the storage layer, *i* = rainfall
> rate, *q0* = upstream run-on rate, *q1* = surface runoff flow rate, *q3* =
> underdrain outflow rate, *e1* = surface evaporation rate, *e2* = soil zone
> evaporation rate, *f1* = surface infiltration rate, *f2* = soil percolation
> rate, *f3* = native soil infiltration rate, *L2* = depth of the soil layer,
> and

> *φ3* = porosity of the storage layer.

> The flux terms (*q, e,* and *f* ) in these equations are functions of the
> current water content in the various layers (*d1*, *θ2,* and *d3*) and
> specific site and soil characteristics. The surface and native infiltration
> rates are determined using the Green-Ampt model. The soil percolation rate
> decreases exponentially from *Ks* with decreasing soil moisture: 𝒇𝒇𝟐𝟐 =
> 𝑲𝑲𝒔𝒔𝐞𝐞𝐞𝐞𝐞𝐞(−𝝆𝝆(𝝓𝝓𝟐𝟐 − 𝜽𝜽𝟐𝟐)) where *ρ* is a percolation constant typically
> in the range of 5 to 15. Under drain outflow rate is modeled as a power
> function of head of water above the drain outlet: 𝒒𝒒𝟑𝟑 = 𝜶𝜶(𝝏𝝏𝟑𝟑 − 𝝏𝝏𝝏𝝏)𝜷𝜷
> where *α* and *β* are constants and *dd* is the offset distance of the drain
> from the bottom of the unit.

> This set of equations can be solved numerically at each runoff time step to
> determine how an inflow hydrograph to the LID unit is converted into some
> combination of runoff hydrograph, sub-surface storage, sub-surface drainage,
> and infiltration into the surrounding native soil. In addition to *Street
> Planters* and *Green Roofs*, the bio-retention model just described can be
> used to represent *Rain Gardens* by eliminating the storage layer and also
> *Porous Pavement* systems by replacing the soil layer with a pavement layer.

> **Site Model without LID Controls**

> To analyze a site’s hydrology without any LID controls, the calculator
> creates a single SWMM subcatchment object and populates it with the
> following parameter values:

> *Site Area:*

> A nominal area of 10 acres is used. As mentioned earlier, because all
> results are expressed per unit of area, there is no need to use an actual
> site area.

> *Width:*

> This is the width of the outflow face of a conceptual rectangular plane over
> which runoff flows. In most SWMM models, it is initially set to the site
> area divided by the length of the overland flow path that runoff follows,
> and is then refined by calibration against measured runoff hydrographs.

> When assigning an overland flow path length, particularly for sites with
> natural land cover, one must recognize that there is a maximum distance over
> which true sheet flow prevails. Beyond this, runoff consolidates into
> rivulet flow with much faster travel times and less opportunity for
> infiltration.

> There is no general agreement on what distance should be used as a maximum
> overland flow path length. The NRCS recommends a maximum length of 100 ft
> (USDA, 2010), while Denver’s Urban Drainage and Flood Control District uses
> a maximum of 500 ft. (UDFCD, 2007). For the calculator, a conservative value
> of 150 ft is used. The resulting width parameter for the SWMM input file is
> therefore set to the nominal area (10 acres) divided by this length.

> *Slope:*

> A value of 2% is used for flat slopes, 5% for moderately flat slopes, 10%
> for moderately steep slopes, and 20% for steep slopes.

> *Percent Impervious:*

> SWMM only considers two types of land surfaces – impervious and pervious –
> each with its own depression storage depth and surface roughness parameters.
> It does not explicitly consider the different types of land covers that
> comprise these two categories and how their characteristics affect
> depression storage and roughness. Impervious surfaces, such as roads, roofs,
> sidewalks, and parking lots show minor variation in these parameters; it is
> therefore acceptable to treat them as a single category.

> To provide more refinement in characterizing pervious areas, the calculator
> allows the user to specify the percentage of the site’s area devoted to four
> different sub-categories of land surface cover: *Forest*, *Meadow*, *Lawn*,
> and *Desert*. These sub-categories were chosen from a distillation of
> categories used in the Western Washington Hydrology Model (Clear Creek
> Solutions, Inc, 2006) and the National Green Values Calculator (Center for
> Neighborhood Technology, 2009). The remaining area is assigned as
> *Impervious Cover*.

> *Depression Storage Depth:*

> Depression storage corresponds to a depth that must be filled prior to the
> occurrence of any runoff. It represents initial abstractions such as surface
> ponding, interception by flat roofs and vegetation, and surface wetting.
> Separate values are supplied for the pervious and impervious areas of a
> catchment.

> Depression storage for impervious surfaces is relatively small, ranging from
> 0.05 to 0.1 inches (ASCE, 1992). For the remaining pervious area, the
> calculator uses an area-weighted average of the storages associated with
> each type of pervious land surface that covers the site. Table 10 contains
> depression storage depths that have been suggested by different
> organizations for each land cover category. The last column contains the
> value used in the calculator.

> **Table 10. Depression storage depths for different land covers.**

| **Land Cover** | **ASCE (1992)** | **UDFCD (2006)** | **USDA (2010)a** | **Calculator** |
|----------------|-----------------|------------------|------------------|----------------|
| Forest | 0.3 | | 0.53 | 0.40 |
| Meadow | 0.2 | 0.4 | 0.56 | 0.30 |
| Lawn | 0.1 – 0.2 | 0.35 | 0.50 | 0.20 |
| Desert | | | 0.27 | 0.25 |
| Impervious | 0.05 – 0.1 | 0.05 – 0.1 | 0.04 | 0.05 |

> a Set equal to the initial abstraction computed for the land cover’s Curve
> Number and a Group D soil (to minimize any contribution from infiltration).

> *Roughness Coefficient:*

> The roughness coefficient reflects the amount of resistance that overland
> flow encounters as it runs off of the land surface. SWMM uses separate
> values for the impervious and pervious areas of a catchment. Table 11 lists
> roughness coefficients published by several different sources for each land
> cover category, along with those selected for use in the calculator. The
> value presented to SWMM, as representative of the site’s pervious area, is
> the area-weighted average of the roughness for each land cover category.

> **Table 11. Roughness coefficients for different land covers.**

| **Land Cover** | **SWMa** | **Engmanb** | **Yenc** | **Calculator** |
|----------------|-------------|--------------|---------------|----------------|
| Forest | 0.4 | | 0.06 – 0.12 | 0.40 |
| Meadow | | 0.01 – 0.32 | 0.04 – 0.18 | 0.20 |
| Lawn | 0.2 – 0.35 | 0.3 – 0.63 | 0.03 – 0.12 | 0.30 |
| Desert | | | 0.032 – 0.045 | 0.04 |
| Impervious | 0.01 -0.014 | 0.01 – 0.013 | 0.01 – 0.025 | 0.01 |

> a Stanford Watershed Model (Crawford and Linsley, 1966)

> b Engman (1986)

> c Yen (2001)

> *Percent of Impervious Area without Depression Storage:*

> This parameter accounts for immediate runoff that occurs at the beginning of
> rainfall before depression storage is satisfied, caused by impervious areas
> immediately adjacent to storm drains. The calculator assumes a value of 0 to
> give a maximum credit to the small amount of depression storage used for
> impervious surfaces.

> *Infiltration Parameters:*

> There are three parameters required by the Green-Ampt infiltration model
> used in the calculator:

1. *Saturated Hydraulic Conductivity* (Ksat) - the rate at which water will
infiltrate through a completely saturated soil.

2. *Suction Head* (ψ) - capillary tension (force at which water is held within
soil pores) at the infiltration wetting front.

3. *Initial Moisture Deficit* (IMD) – the difference in moisture content
between a completely wet and completely dry (or drained) soil (i.e., the
difference between the soil’s porosity and its field capacity)

> Values for these parameters can be assigned based on soil group. Using the
> NRCS’s definitions (USDA, 2010), an *A soil* is mostly sand, a *B soil* is
> typical of a sandy loam, a *C soil* is like a clay loam, and a *D soil* is
> mostly clay. Table 12 lists the average values of Ksat, ψ, and IMD for these
> four soil types from measurements made from roughly 5,000 soils (of all
> types) across the U.S. (Rawls et al., 1983). Also shown, are the values that
> were chosen for use in the calculator. Note that the calculator Ksat values
> are defaults. The user can also use values extracted from the SSURGO data
> base or enter their own site- specific numbers.

> **Table 12. Infiltration parameters for different soil types.**

| **Soil Type** | **Rawls et al.** | **Calculator** | | | | |
|---------------|------------------|----------------|---------|-----------------|------------|---------|
| | **Ksat (in/h)** | **ψ (in)** | **IMD** | **Ksat (in/h)** | **ψ (in)** | **IMD** |
| Sand | 4.6 | 1.95 | 0.38 | 4.0 | 2.0 | 0.38 |
| Sandy Loam | 0.43 | 4.33 | 0.26 | 0.4 | 4.3 | 0.26 |
| Clay Loam | 0.04 | 8.22 | 0.15 | 0.04 | 8.2 | 0.15 |
| Clay | 0.01 | 12.45 | 0.10 | 0.01 | 12.5 | 0.10 |

> **Site Model with LID Controls**

> The basic SWMM model used by the calculator is extended when LID controls
> are applied to the site. These extensions depend on the type of LID that is
> deployed.

> *Disconnection*

> A second subcatchment is added to the model when *Disconnection* is
> employed. Its impervious area equals the fraction of the site’s total
> impervious area that is disconnected, while its pervious area equals the
> Capture Ratio times the latter area. Both of these areas are assigned the
> same parameters as the original subcatchment, and the original subcatchment
> has its areas reduced to reflect the presence of this second subcatchment.
> SWMM’s option to internally route runoff from the impervious sub-area on to
> the pervious sub-area is used with this subcatchment.

> *Infiltration Basin*

> An *Infiltration Basin* also adds an additional subcatchment to the model
> that contains the impervious area treated by the basin plus a pervious area
> equal to the area of the basin. The impervious and pervious areas of the
> original subcatchment are reduced accordingly. The impervious area in the
> new subcatchment has the same parameter values as in the original
> subcatchment. However the pervious area has its depression storage set equal
> to the Basin Depth as specified by the calculator user. Its roughness
> coefficient is set to 0 which forces SWMM to treat any ponded water in
> excess of the Basin Depth as immediate runoff. All runoff from the
> impervious sub-area is internally routed on to the pervious (i.e.,
> infiltration basin) sub-area. This setup is similar to that used for
> *Disconnection*, except instead of allowing for sheet flow with infiltration
> across a pervious area it utilizes this area as an infiltrating storage unit
> with overflow.

> *Rain Harvesting*

> This LID option is modeled by introducing an additional, completely
> impervious subcatchment whose area is the portion of the original
> subcatchment impervious area that is captured by cisterns. This amount of
> impervious area is subtracted from that of the original subcatchment. A new
> Storage Node element is added into the SWMM model to represent the combined
> retention volume of the cisterns. The added subcatchment sends its runoff to
> this storage node. The maximum depth of the storage node

> is set to a nominal height of 48 inches. Its surface area equals the area of
> its contributing subcatchment times the number of cisterns per unit area (as
> supplied by the user) times the area per cistern. The latter is found by
> dividing the user-supplied volume per cistern by the nominal depth. Note
> that any nominal depth can be used since the area per cistern will adjust
> itself accordingly to maintain an equal amount of total cistern storage
> volume. The rate at which the cisterns empty is converted into an equivalent
> “infiltration” rate for the storage node, equal to the user-supplied
> emptying rate (in gal/day) divided by the area per cistern. When the
> cisterns become full, any overflow shows up as node flooding in SWMM, which
> gets added to the runoff from other portions of the site.

> *Other LID Controls*

> *Rain Gardens, Green Roofs, Street Planters,* and *Porous Pavement* do not
> require additional subcatchments – they are all placed within the original
> subcatchment used to model the site. The original pervious area of this
> subcatchment is reduced by the amount of area devoted to *Rain Gardens*,
> while the original impervious area is reduced by the area taken up by any
> *Green Roofs, Street Planters* and *Porous Pavement*.

> *LID Sizing*

> When the user supplies a design storm depth, the LID controls can be
> automatically sized to retain this depth. For *Rain Harvesting,* the number
> of cisterns required per unit area is simply the design storm depth divided
> by the volume of a cistern. For the other controls, the Capture Ratio
> (*CR*), which is the ratio of the LID control area to the impervious area
> being treated, is computed as

> 𝑪𝑪𝑪𝑪 = 𝑫𝑫𝒔𝒔𝝏𝝏𝑫𝑫𝑫𝑫𝑫𝑫

> 𝑫𝑫𝑫𝑫𝒊𝒊𝝏𝝏−(𝑫𝑫𝒔𝒔𝝏𝝏𝑫𝑫𝑫𝑫𝑫𝑫−𝟎𝟎.𝟓𝟓𝑲𝑲𝒔𝒔𝒔𝒔𝝏𝝏)

> (7)

> where *Dstorm* is the design storm depth (inches over 24 hours), *Dlid* is
> the storage depth (inches) provided by the LID control, and *Ksat* is the
> saturated hydraulic conductivity of the native soil underneath the LID
> control (inches/day). The 0.5 factor accounts for the average amount of
> infiltration occurring over the duration of the design storm. The LID
> storage depth *Dlid* consists of any ponding depth plus the depths of any
> soil and gravel layers times their respective void fractions.

> **Precipitation Data**

> The SWMM model built by the calculator includes a single Rain Gage object
> that provides it with hourly precipitation data. These data come from a
> nearby National Weather Service rain gage as selected by the user. The
> calculator can access historical hourly rainfall data for 8,159 stations
> that are part of the data holdings for EPA’s BASINS system
> ([http://water.epa.gov/scitech/datait/models/basins/index.cfm).](http://water.epa.gov/scitech/datait/models/basins/index.cfm))
> The data for each gage is contained in its own file on an EPA server, which
> is downloaded and made available to the calculator. The national coverage
> provided by these gages is shown in Figure 34.

![](media/140630556e6d38c605f8f30866efe862.png)

> Figure 32. An image of a map of United States.

> **Figure 32. NWS rain gage locations included in the calculator.**

> In addition to simulating a long term record of hourly rainfall, the
> calculator also computes the runoff produced from a series of 24-hour
> rainfall events that represent extreme, high intensity storms with different
> annual return periods. How the depths of these storms are estimated for each
> rain gage is discussed in the *Climate Change* sub-section later on. To
> simulate each storm, the calculator uses the NRCS (SCS) 24-hour
> distributions (USDA, 1986) to disaggregate the event’s total rainfall depth
> into a series of rainfall intensities (measured in inches per hour) at six
> minute intervals. Figure 35 shows the different NRCS distributions and
> Figure 35 shows which distribution applies to each region of the US.

> Each precipitation station is pre-assigned a distribution type (I, IA, II,
> or III) based on the region it falls in. After the long term simulation is
> completed, the SWMM input file is modified as follows:

1. A time series object is added to the model which is the result of applying
the appropriate SCS distribution at a six minute interval to the total
24-hour rainfall amount being simulated.

2. The source of rainfall data for the model is set to the newly added time
series.

3. The duration of the simulation is changed to three days starting on June 1.

4. After running the model, the only output recorded is the total runoff from
the event. These steps are repeated for each return period extreme event
analyzed.

![](media/ee16e92637c8865a1ddbf1f20f7f9dd4.jpg)

> Figure 33. A chart for 24-hour rainfall distributions.

> **Figure 33. NRCS (SCS) 24-hour rainfall distributions (USDA, 1986).**

![](media/211e441a15524788dc75c5b91b7eaa5b.jpg)

> **Figure 34. Geographic boundaries for the different NRCS (SCS) rainfall
> distributions (USDA, 1986).**

> **Evaporation Data**

> The BASINS holdings only include 329 stations with measured evaporation data
> more recent than January 1, 2000 and at least a 5-year period of record.
> About 200 of the observed evaporation stations appear to have missing data
> for some months of the year. Because of this sparseness of measured
> evaporation, it was decided to generate evaporation values using daily
> temperature data from 5,236 weather stations across the U.S. which also
> measured hourly precipitation. The Penman-Monteith algorithm was extracted
> from the SWAT model (Neitsch et al., 2005), and used to compute daily
> potential evaporation from daily precipitation and min/max air temperature,
> along with generated solar radiation, relative humidity, and wind speed.
> Additional details of this calculation can be found in the Quality Assurance
> Report produced for this project by Aqua Terra Consultants (Aqua Terra
> Consultants, 2011). The locations for which evaporation rates were generated
> are displayed in Figure 37.

![](media/fdbc2a825c7b82e0e8bb4dc2b1057e92.png)

> **Figure 35. Locations with computed evaporation rates (Alaska and Hawaii
> not shown).**

> The original result of these calculations was an average potential
> evaporation rate for each day of the year (365 values) for each station. A
> sensitivity analysis was performed with the calculator to see what effect
> there would be in using a monthly average value instead (12 values per
> station). Using the monthly values produced annual runoff volumes that were
> only 2 to 5% different than those from the daily values. It was therefore
> decided to use just the monthly average evaporation values for the
> calculator. Each NWS station is identified by its latitude, longitude, and
> twelve monthly average evaporation rates that are contained in a table built
> into the calculator. This table is used to supply evaporation rates to the
> SWMM model constructed by the calculator.

> **Climate Change Effects**

> The calculator obtains its climate change scenarios and their effect on
> local precipitation and temperature directly from another EPA project called
> CREAT (Climate Resilience Evaluation and Analysis Tool) (EPA, 2012). CREAT
> is a decision support tool to assist drinking water and wastewater utility
> owners in understanding, evaluating and addressing climate change risks. It
> contains a database of climate change effects across the US localized to a
> grid of 0.5 degrees in latitude and longitude (about 30 by 30 miles). These
> effects include changes in monthly average precipitation, monthly average
> temperature, and extreme event 24-hour rainfall amounts for each of three
> different climate change scenarios in two different future time periods.

> CREAT uses statistically downscaled General Circulation Model (GCM)
> projections from the World Climate Research Programme (WCRP) Coupled Model
> Intercomparison Project Phase 3 (CMIP3) archive (Meehl et al., 2007) as the
> source of its climate change data. The CMIP3 archive was chosen by CREAT
> because:

- it contains 112 runs from 16 internationally recognized models using several
emission scenarios;

- it supported model-based analyses presented in the IPCC Fourth Assessment
Report (IPCC, 2007);

- it facilitates the comparison and diagnosis of model outputs by
standardizing many of the assumptions and boundary conditions used;

- it is downscaled to appropriate spatial (regional, watershed) and temporal
(monthly) scales using a proven downscaling technique;

- it contains well-documented model output that is widely available to
researchers;

- it has a high degree of scientific credibility and the archive encompasses a
broad range of assumptions concerning demography, economic integration,
technological advance, energy use, and greenhouse gas emissions.

> CREAT limited its use of CMIP3 results to the nine GCM models that were most
> representative of US climate conditions and used the IPCC’s “middle of the
> road” projection of future economic growth. The latter is characterized by
> (1) rapid economic growth, (2) global population that peaks in mid-century,
> (3) the quick spread of new and efficient technologies, (4) the global
> convergence of income and ways of life, and (5) a balance of both fossil
> fuel and non-fossil energy sources (IPCC, 2007).

> Each of the nine models produces a different set of results for each future
> year within each downscaled

> ½ degree grid cell. To represent this type of uncertainty inherent in
> predicting future climate conditions, CREAT defined three scenarios that
> span the range of results produced by the models for any given projection
> year. The Warm/Wet scenario used the model that came closest to the 5th
> percentile of annual temperature change and 95th percentile of annual
> rainfall change. The Median scenario selected the model that was closest to
> the median temperature and rainfall changes. The Hot/Dry scenario used the
> model that was closest to the 95th percentile temperature change and 5th
> percentile rainfall change. Two different projection years were selected:
> 2035 and 2060.

![](media/79c8a929ccf9e9214701d6e14118bf3d.jpg)

> **Figure 36. CMIP3 2060 projected changes in temperature and precipitation
> for Omaha, NE (EPA, 2012).**

> An example of how the scenarios were defined is pictured in Figure 38 for
> the 2060 projections for the grid cell containing Omaha, NE. In this figure,
> the square symbols are results from the nine different climate models, the
> green circles are the target scenarios (5T/95P = warm/wet, 50T/50P = median,
> and

> 95T/5P = hot/dry), and the three blue squares are the models selected for
> this particular location. Note that the selection of which GCM model output
> goes with which scenario can change depending on grid cell and projection
> year.

> Once the model output to use for each scenario in each projection year in
> each grid cell was identified, CREAT extracted its CMIP3 results to produce
> a database of percent changes in monthly average precipitation and absolute
> changes in monthly average temperature for each scenario in each of the two
> projection years in each grid cell across the US. For precipitation impacts,
> the stormwater calculator used this data to construct a table for each
> combination of climate scenario and projection year (six in total)
> containing the change in monthly (January – December) average precipitation
> for each of its 8,159 rain gages. When the calculator runs SWMM to evaluate
> the long-term rainfall / runoff for a site under a particular climate change
> scenario, it first creates a new hourly rainfall file from the original one
> downloaded from the EPA server. In this new file each historical hourly
> rainfall is adjusted by the percent change (up or down) for the gage and
> month of the year contained in the appropriate climate change scenario
> table.

> Regarding temperature changes, the monthly changes in CREAT’s database were
> used to generate new sets of monthly average evaporation rates for the
> calculator. The same procedure described earlier, using the SWAT model’s
> Penman-Monteith procedure, was used to compute bare soil evaporation rates
> for each day of temperature recorded at 5,236 different NWS weather
> stations. However now the daily temperatures were first modified by applying
> the monthly temperature changes belonging to the climate change scenario for
> the grid cell in which the weather station was located. The multi-year daily
> evaporation values were then averaged into a set of twelve daily rates, one
> for each month of the year. This process was repeated for each climate
> change scenario and projection year at each weather station location. The
> result was another set of six tables, each containing a set of modified
> monthly evaporation rates for all weather stations for a particular scenario
> and projection year.

> It turned out that the climate change modified evaporation rates showed
> little variation between the different scenarios for a given month at any
> particular location, with most differences being 0.02 inches/day or less.
> One possible reason for this is that climate change effects for the other
> variables that influence the Penman-Monteith estimates, such as wind speed,
> relative humidity, and solar radiation, were not considered. Even though the
> variations are slight, the tables were still constructed and utilized for
> each of the climate scenarios as was done for monthly precipitation. The
> monthly evaporation rates appearing in the table for the user’s choice of
> climate change scenario are inserted into the SWMM input file for a
> particular site instead of the rates based on historical temperatures.

> The third climate-influenced outcome that the calculator considers is the
> change in the size and frequency of intense precipitation events. CREAT
> considered this effect of climate change by fitting a Generalized Extreme
> Value (GEV) probability distribution to the collection of annual maximum
> 24-hour (midnight to midnight) rainfall amounts over a 30 year period
> simulated by the CMIP3 GCM used for each scenario. Under the cumulative GEV
> distribution, the annual maximum daily rainfall amount *x* that is exceeded
> only once every *Y* years is:

> 𝒙𝒙 = 𝝁𝝁 − �𝝈𝝈� �𝟏𝟏 + (𝐥𝐥𝐥𝐥 �𝟏𝟏 − 𝟏𝟏�)−𝝃𝝃� (8)

> 𝝃𝝃 𝒀𝒀

> where *µ* is a location parameter, *σ* is a scale parameter, and 𝝃𝝃 is a
> shape parameter. These GEV parameters can be estimated from a series of
> annual data.

> CREAT estimated GEV parameters for both the historical record and all six of
> the future climate scenarios for each rain gage location in the calculator’s
> database. From these parameters, values of the annual maximum 24-hour
> rainfall depths for return periods of 5, 10, 15, 30, 50, and 100 years were
> calculated using Eq. 8 and were placed in a set of seven tables, one for the
> historical record and six for the future climate change scenarios (three
> different model outcomes in each of two future years). Each set of extreme
> event storms corresponding to the six return periods for either the
> historical record or for a future climate change scenario at a given rain
> gage location was simulated in SWMM using the procedure described earlier in
> the Precipitation Data sub-section of this guide.

> **Post-Processing**

> For the long-term continuous simulation of rainfall / runoff, the calculator
> runs its site model through SWMM using a 5 minute computational time step
> over each year of the period of record selected by the user, and requests
> that SWMM use a 15 minute reporting interval for its results. SWMM writes
> the rainfall intensity and the runoff results it computes at this reporting
> interval to a binary output file. The calculator then reads this output file
> and aggregates rainfall and runoff into daily totals, expressed as inches,
> for each day of the simulation period. It also keeps track of how many
> previous days with no measureable rainfall occur for each day with
> measureable rainfall. Measureable rainfall and runoff is taken as any daily
> amount above the user-supplied threshold (whose default is 0.1 inches). For
> days that have runoff but no rainfall, the runoff is added to that of the
> previous day. After the aggregation process is complete, the long-term
> simulation results have been distilled down into a set of records equal in
> number to the number of days with measureable rainfall; where each record
> contains a daily rainfall, daily runoff, and number of antecedent dry days.

> For extreme 24-hour storm events, SWMM makes a separate run for each event
> over a three day time period to allow for LID storage to drain down. Each
> run has different values in its time series of rainfall intensities
> reflecting the different total depth associated with each extreme event
> return period. For these runs the only output recorded is the total runoff
> from the site.

> The *Summary Results* report produced by the calculator (refer to Figure 13)
> comes from a direct inspection of the long term daily rainfall/runoff
> record. The *Maximum Retention Volume* statistic is simply the largest
> difference between daily rainfall and its corresponding runoff among all
> records.

> The **Rainfall / Runoff Event** scatter plot (see Figure 14) is generated by
> plotting daily each daily rainfall and its associated runoff for those days
> where rainfall exceeds the user-supplied threshold limit. For wet days where
> the runoff is below the threshold value, the runoff value is set to zero
> (i.e., there is no measureable runoff for those days).

> The **Rainfall / Runoff Frequency** report (see Figure 15) is generated by
> first sorting daily rainfall values by size, ignoring consecutive rainfall
> days if the user selected that option. The days per year for which each
> rainfall value is exceeded, is computed as *(N – j) / Y*, where *N* is the
> total number of rainfall values, *j* is the rank order of the rainfall in
> the sorted list, and *Y* is the total years simulated. Then each rainfall -
> exceedance frequency pair is plotted. The same set of operations is used to
> generate the runoff exceedance frequency curve, except now *N* is the total
> number of runoff values and *j* is the rank order of a runoff value in the
> sorted list.

> The **Runoff by Rainfall Percentile** report (see Figure 17) is generated as
> follows:

1. The daily measureable rainfall values are sorted by size and a set of
different percentile values are identified (the 10, 20, 30, 40, 50, 60, 70,
75, 80, 85, 90, 95, and 99-th percentiles).

2. The days with rainfall that fall within each percentile interval are
identified, honoring the user’s choice to either include or exclude
consecutive wet days.

3. The total runoff from events in each interval, as a percentage of the total
runoff from all events, is computed and plotted.

> The **Rainfall Retention Frequency** report (see Figure 16) is generated by
> taking the same set of rainfall percentiles used in the **Runoff by Rainfall
> Percentile** report, only referring to them as retention volumes. For each
> retention volume, the percentage of daily rainfall events providing that
> amount of retention is computed. This is done by examining each day with
> observable rainfall, ignoring back to back wet days if that option was
> selected. If there was no measureable runoff for the day, then the count of
> retained events for the retention volume being analyzed is incremented.
> Otherwise, if the rainfall was at least as much as the target retention and
> the difference between rainfall and runoff was also at least this much, then
> the count of retained events is also incremented. The retention provided for
> the given retention target is simply the number of retained events divided
> by the total number of daily events. This process is repeated for each of
> the thirteen pre-selected retention volumes and the resulting pairs of
> retention volume – retention frequency values are plotted.

> The **Extreme Event Rainfall / Runoff** report (see Figure 18) is generated
> by simply plotting the rainfall and accompanying computed runoff in stacked
> fashion for each extreme event return period.

> **7. References**

> American Society of Civil Engineers (ASCE) (1992). “Design and Construction
> of Urban Stormwater Management Systems.” *American Society of Civil
> Engineers*, New York, NY.

> Aqua Terra Consultants (2011). “Quality Assurance Project Plan – Stormwater
> Calculator Technical Support.”EPA Contract \#EP-C-06-029, Work Assignments
> \#4-38 and 5-38.

> Center for Neighborhood Technology (2009). “National Stormwater Management
> Calculator.”

> \<<http://greenvalues.cnt.org/national/calculator.php>\>

> Chen, C.W. and Shubinski, R.P. (1971). “Computer Simulation of Urban Storm
> Water Runoff.” *Journal of the Hydraulics Division.* ASCE, 97(2):289-301.

> Clear Creek Solutions, Inc. (2006). “Western Washington Hydrology Model
> Version 3.0 User Manual.”

> \<<http://www.ecy.wa.gov/programs/wq/stormwater/wwhm_training/wwhm/wwhm_v3/index.html>\>

> Crawford, N.H. and Linsley, R.K. (1966). “Digital Simulation in Hydrology:
> Stanford Watershed Model IV.”

> *Technical Report No. 39*, Civil Engineering Department, Stanford
> University, Palo Alto, CA.

> Engman, E.T. (1986). “Roughness Coefficients for Routing Surface Runoff.”
> *Journal of Irrigation and Drainage Engineering*, ASCE, 112(1):39-53.

> IPCC (Intergovernmental Panel on Climate Change) (2007). *Climate Change
> 2007: Synthesis Report - Summary for Policymakers.* Available online at:

> <http://www.ipcc.ch/pdf/assessment-report/ar4/syr/ar4_syr.pdf>

> Karl, T.R., Melillo, J.M., and Peterson, T.C. (eds.) (2009). *Global Climate
> Change Impacts in the United States*. Cambridge University Press.

> Meehl, G. A., C. Covey, T. Delworth, M. Latif, B. McAvaney, J. F. B.
> Mitchell, R. J. Stouffer, and K. E. Taylor. (2007). “The WCRP CMIP3
> multi-model dataset: A new era in climate change research”, *Bulletin of the
> American Meteorological Society*, 88, 1383-1394.

> Mein, R.G. and Larson, C.L. (1973). “Modeling infiltration during a steady
> rain.” *Water Resources Research*, 9(2):334-394.

> Neitsch S.L., J.G. Arnold, J.R. Kiniry, and J.R. Williams (2005). “Soil and
> Water Assessment Tool Theoretical Documentation.” Version 2005,
> *Agricultural Research Service and Texas Agricultural Experiment Station*,
> January 2005.

> Rawls, W.J., Brakensiel, D.L., and Miller, N. (1983). “Green-Ampt
> Infiltration Parameters from Soils Data”, Journal of Hydraulic Engineering,
> ASCE, Vol. 109, No. 1, 62-70.

> Rossman, L.A. (2009). “Modeling Low Impact Development Alternatives with
> SWMM.” In *Dynamic Modeling of Urban Water Systems, Monograph 18,* W. James,
> ed., CHI, Guelph, ON, Canada.

> Urban Drainage and Flood Control District (UDFCD) (2007). “Drainage Criteria
> Manual, Chapter 5 – Runoff”, Urban Drainage and Flood Control District,
> Denver, CO.
> ([http://www.udfcd.org/downloads/down_critmanual_volI.htm).](http://www.udfcd.org/downloads/down_critmanual_volI.htm))

> U.S. Department of Agriculture (USDA) (1986). “Urban Hydrology for Small
> Watersheds, TR-55”, *Natural Resources Conservation Service, USDA*,
> Washington, DC.

> U.S. Department of Agriculture (USDA) (2010). “National Engineering
> Handbook.” *Natural Resources Conservation Service, USDA*, Washington, DC.

> U.S. Environmental Protection Agency (EPA) (2014). “Climate Change Impacts
> and Adapting to Change.”
> ([http://www.epa.gov/climatechange/impacts-adaptation/).](http://www.epa.gov/climatechange/impacts-adaptation/))

> U.S. Environmental Protection Agency (EPA) (2010). “Storm Water Management
> Model User’s Manual, Version 5.0.” *U.S. Environmental Protection Agency*,
> Washington, D.C., Pub No. EPA/600/R-05/040 (Revised 2010).

> U.S. Forest Service (USFS) (2014). “i-Tree Hydro User’s Manual v. 5.0.”
> ([http://www.itreetools.org/resources/manuals.php).](http://www.itreetools.org/resources/manuals.php))

> U.S. Global Change Research Program (USGRP) (2014). “Explore Regions &
> Topics.”
> ([http://www.globalchange.gov/explore).](http://www.globalchange.gov/explore))

> Wang, J., T.A. Endreny, and D. J. Nowak, 2008. “Mechanistic Simulation of
> Tree Effects in an Urban Water Balance Model.” Journal of the American Water
> Resources Association (JAWRA) 44(1):75-85.

> Yen, B.C., (2001). “Hydraulics of Sewer Systems.” Chapter 6 in *Stormwater
> Collection Systems Design Handbook*, L.M. Mays, ed., McGraw-Hill, New York.
