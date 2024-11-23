# MICB475_Team_14
Overview of Project 2 for Team 14 - Khadija, Michael, Jackson, Wendy, Jacob

Meeting time is each Friday at 3:45pm
## Table of Contents
   * [Meeting 1 - October 4th](#October-4th,-2024)
   * [Meeting 2 - October 11th](#October-11th,-2024)
   * [Meeting 3 - October 18th](#October-18th,-2024)
   * [Meeting 4 - October 25th](October-25th,-2024)
   * [Meeting 5 - November_1st](November-1st,-2024)
     
# Meeting Agenda

## October 4th, 2024

### Agenda
1. Select dataset
   - Tentative datasets:
     - Specific Host Metabolite and Gut Microbiome Alterations Are Associated with Bone-loss During Spaceflight: https://osdr.nasa.gov/bio/repo/data/studies/OSD-417
     - Salivary microbiome sequencing of astronauts: https://osdr.nasa.gov/bio/repo/data/studies/OSD-280
2. Start discussion on research question
3. Next steps 

### Meeting Notes 

#### Our questions:
- If Metagenomics can we still use?
- ans: processeing different, computationally heavy, and our server can't handle 
- Amplicon: only section of DNA 

- Question: Why did NASA suggested this dataset?
- Nothing specific 

#### Start dicussion on research question:
- Question: Does our research question have to go beyond the research article
- Ans: Yes

- Salivary microbiome sequencing of astronauts is amplicon sequencing.
     - We can extract 
- Researchers already did: Pre-flight, in-flight, post-flight

- Specific Host Metabolite and Gut Microbiome Alterations Are Associated with Bone-loss During Spaceflight:
- The researchers did metabolite study.
- We can do taxanomy anaylsis?
- They already did many diversity metrics
- This study is already quite stripped out

What project can we do?
- No preference of what project we are doing.
- We can choose what we do.

When selecting a research question:
- Always noval to combine the datasets
- Maybe combine salvery with skin dataset and compare the microbe population between the two locations?
- Maybe combine salvery, skin, and fecal astronaut microbe overtime (pre-flight, during-flight, after-flight)?

- OSD487 dataset = possible dataset?
- diabetic foot ulcers dataset of astronauts
- Sample size of 42 
- We could possibly do it

- OSD72 possibel dataset?
- Diet and ionizing radiation in mice
- radiation in space impact intestinal health 
- Colon

Options:
- foot ulcer
- Salvery
- Mouse fecal
- Mouse radiation

- OSD249 possible dataset?
- Mice radiation
- no exposure, 30 days, or 60 days exposure
- N = 49
- good sample size 

- OSD146 possible dataset?
- Also Mice radiation
- N = 80

- Research problem: Does lab model align compares with actual model?
- Sham OSD146 vs real OSD249


### Action Items 
- Try to understand how the experiments worked.
- What variable regions did they sequence: is it single end or double end?
- Find common columns that we need to combine
- We need to make new metadata file

  

## October 11th, 2024

### Agenda
1. Team Proposal Assignments:
  - Proposed Title 
  - Introduction and Background: 
  - Research Objectives
  - Experimental Aims and Rationale 
  - Proposed Approach: Everyone
  - Overview Flowchart
  - Weekly Timeframe 
  - Dataset Overview 
  - Participation Report: Everyone  
  - References
2. Finalize reseach question
3. Discuss experimental aims and proposed approach
4. Next steps

##Meeting Notes

Research Question: 
   - Something like "How is functional diversity affected by radiation?"
       - Does not need to be too detailed 
   - Comparing function of microbes before and after radiation
   - Compare at different time points
   - Fecal vs Gut microbiome?
      - Use fecal microbiome as that's what was collected
   - Need to complete Qiime processing for team proposal

Infering functional pathways using 16s rRNA?
   - Predciting based on what species are present
   - Use picrust
   - One aim: Taxonomic diversity at different time points
   - Aim two: Functional diversity at different time points

Proposed Title:    
   - Use words such as "understanding", "exploring"
   - Statement is better than a question
     -  Gives more meaning to what we find

- Gantt chart for timeline
  
- Look at papers that did similar things
   - Check paper that used a labratory simulation
   - Get ideas for methods based on other papers

Propsal Tips:
- Tying our predictions to what it means biologically
- Fully explaining knowledge gap
- No absolute statements
- Mention relevant details from metadata
   - Mice given same diet, all females, etc

Methods: 
- Remove mice from dataset that were drug treated???
    - Need to see how much data we would be left with
 
- Use Zotero for references

Introduction/Background: 
 - Need to find previous research to give a rationale to our project



## October 18th, 2024

### Agenda

1. Experimental Aims and Rationals
      - How to seperate our goals into more cohesive pieces
           - Aim 1: Assess changes in microbial diversity over time in fecal samples from mice exposed to the space environment aboard the ISS compared to control mice on Earth.
           - Aim 2: Investigate changes in microbial functions over time in fecal samples from mice exposed to the space environment aboard the ISS compared to control mice on Earth.
           - Aim 3: Determine if there is a relationship/association between space exposure and the microbial gut composition
2. Research Objective
      - We couldn't find if microgravity was controlled for in any way
      - So focus on Space environment in place of radiation exposure
3. Generalized Review of Project Proposal
4. Next Steps

### Meeting Notes

Mistake in wrong metadata file column for OSD-249, discussed and resolved.

Confusion about how microgravity was controlled for in study.
The 30 days and 60 days data was collected differently, so we had concerns about direct comparison of these time points. 
- can compare 0 to 30 and 0 to 60.
- recognize data collection difference as a limitation
- tease part pathways in functional analysis for space (60 days) vs brought back to earth (30 days) e.g which pathways will be enriched --> more difficult to compose hypothesis for this
- taxonomic diversity hypothesis will be easier

Point of basal control?

Discussed limitations of functional analysis and what conclusions can actually be drawn from that.

Introduction
- Should we talk about generalized functions of microbiome: current introduction is sufficent for expected audience

Studies used as reference
- Mice irradiated in a lab setting. This is the main rationale for investigating mice in space.
- Cite more studies that link microbiome changes with space/radiation.


Create a classifier which predicts whether mice are in space or not, using ISA.
- Look at most robust variables for this.
- Relevant? We aren't just predicting radiation exposure.
- Potential application: if lab's can use this classifier to check if they are able to simulate space microbiome in lab mice.
- Constraints: which variables to choose, alpha diversity varies from individual to individual, beta diversity is built on comparisons, so... functionality and ISA is best idea. 
Poetntial 3 aims:
1. Taxonomic
2. Functional
3. Classifier

Allowed to modify project as we go if this doesn't pan out.

Feedback on proposal draft:
- Do we need references in our aims? Yes, try to provide background. Other studies of mice being sent to space in intro and aims; mention even if you don't elaborate.
- Confirmed that it is okay to use basal control mice as a quality check.
- For time comparision, be EXPLICIT about hypothesis.
- In Dataset Overview, ensure you talk about conditions & detail.

ISA should be part of taxanomic analysis (aim 1).
Aim 1: Group all space (30+60) vs all earth 
Aim 2: SPACE VS EARTH functional
Aim 3: 30 days vs 60 days to compare time. Mention limitation of data collection at time points; our results may be used to address the limitation (were the effects exacerbated?)

Modify research question; not just looking at time exposure anymore!


## October 25th, 2024

## October 25th, 2024

### Agenda
1. Prosposal debrief
   - Will get proposal next week
   - Next week meeting mainly going to talk about the results
   - Can improve proposal within one week
       - Can improve score
    
2. Project next steps
   - Taxanomic anaylsis steps
   - Functional analysis with PICRUSt2 steps 
   - Steps to create a classifier
       - Feedback: Can be done with indicator species analysis
       - Other groups have done in the past
       - There is a paper written about the steps: Ritu can send the paper to us
       - Maybe using Data Science 100 classifier code
       - We can use alpha diversity to make classifier
       - In the orginal paper: was there future directions
       - May have to change research direction
       - Previous study group has done this research question:
           - https://www.nature.com/articles/s41522-024-00545-1#:~:text=muris%20and%20D.,some%20distinct%20effects%20over%20time
       - If we make a classifier it can still be novel
       - As a second option, we can start a new study
           - Do some research on new possible topics 
       - Meeting next Tueday at 8am to discuss.
       - Can use a different bioinformatics package to test?
       - Classifier to confirm lab base models 
       - Can we use the dataset from the RR-1 and maybe RR-7 to train a classifier?
    


         ## November 1st, 2024

### Agenda

         1. Improvements for proposal submission
         2. Core metrics results
         3. Discuss predictive model paper from UJEMI methods
        
    
        ## November 1st, 2024 Meeting

     ### Discussion about current project:
     - Go back and do data wrangling; combine all 5 groups into one metadata column
     - Need to know if GC 30d vs 60d is significant or not as it will tell us if radiation is driving significance between space 30d vs 60d
     - Suspect changes are due to mutation but can't know for sure. Diversification of strain does suggest mutation.
     - Name 5 groups: ctrl, ground_no_rad_30, ground_no_rad_60, space_rad_short_term, space_rad_long_term
     - Ground vs space difference is absolutely necessary for taxonomic model since the model would be predicting ground vs space
     - Sample size issue + hard to do radiation study on dataset that is not radiation-specific
       
### New project suggested:
Example: Train model using radiation-specific study, identify some number of taxa associated with radiation using core microbiome analysis (species unique to radiation; accounts for abundance + prevalence) and indicator species analysis (which unique ones are predicted) to support chosen taxa (reconcile BOTH manually - or with R if large number - by eliminiating limitations of one of the analysis). See if radiation is affecting space group in RR-6 study by seeing if these taxa are present in OTU table (e.g., in R... if x in this model is present, yes- how much?) plotting relative abundance of those  taxa species. Figuring out out abundance and prevalence threshold based on how many species are identified via the core microbiome + ISA analsyis is key.
            - prediction model; apply it to current study and try to predict even though RR-6 is not annotated.
            - Caveat: if we find no significant difference, there's no model
            - Taxonomic model/predictive species is not a computational model; logistical regression model is different. This will be                     difficult to make without continuous variables.
            - Lots of limitations/caveats: can build paper around issues if model doesn't work...  everything downstream will depends on                  how many indicator taxa we get.
          - Can use chernobyl dataset to validate our model; in theory it should work, even though it's different radiation.

### Plans moving forward after meeting:
- Qiime2 pipeline executed from scratch for new study, show significance between radiation and no radiation mice cohorts, and conduct core micrbiome and ISA analysis to identify indicator species unqique to radiation. Then get up to taxonomy table and phyloseq for RR-6 dataset. 
- As for revised proposal: specifically address TA feedback on proposal, rather than change content itself due to time constraint.


  ## November 8th, 2024
  
  ### Agenda
1. Data Processing Discussion
   - Core metrics analysis results
   - Indicator species analysis
  
## November 8th, 2024

Potential issues: radiation-induced mutations makes radiation appear more diverse, undefined species (SILVA is not well annotated, we can annotate ourselves). Considering radiation dosage; clustering all may be bad at predicting.
QUESTION: rarefied phyloseq, regular phyloseq + relative abundance -- which to use for ISA and core microbiome?
ANSWER: RARIFIED only for diversity metrics.

Update: QIIME2 pipeline completed. For irradiated versus sham mice -- Faith PD was significant. Shannon not significant = Radiation is not affecting general abundance but affecting species. 
Beta diversity -- Unweighted unifrac was significantly different. 
Taxa barplots only good for seeing obvious, dramatic differences.
10 and 30 day groups and 3 dosage (qiime does not show alpha diversity because it considers it continuous). Do diversity metrics in R, turning dosages to characters.

ISA -- 17 ASVs unique to radiation. (Limiting factor).
Core microbiome -- 52 unique ASVs. Set at lowest detection level, try setting to 0 prevalence and plot instead.

Next step: Reconcile by extracting 52 and compare to 17. If they don't reconcile, just use 17 from ISA.
How do we choose abundance threshold? Relative > absolute since counts depend on sequencing depth (not represantative of population). Plot reconciled absolute abundance.
Plot comparing abundance and prevalence (check to see if there's function phyloseq package measuring prevalence, could also loop through and check which ASVs are not a 0 in sample).
46 irradiated mice.

Don't annotate until put into table in manuscript since using same database. 

Last paragraph in intro: what you did
Methods: dedicate first paragraph to dataset (sample size, variables measured. Don't need to talk about how data collected.) 

Potential validation tool: https://docs.qiime2.org/2024.10/tutorials/sample-classifier/ 
or k-nn classifer.

## November 22nd, 2024

### Agenda
1. Check data processing
   - Filtering used on Space ASV
   - To which taxanomic level must the ISA results be resolved to
2. Expectations for manifest/presentation figures
   - What is necessary to have
3. Previsions to Presentation asignment  

## November 22nd, 2024 Meeting
ASV IDs will not match.

Which figures for diversity metrics?
- Put some in supplemental

Results:  
How many did you find = Detection level  
Have table of 9 and annotate best we can with BLAST  

By next meeting: 
- have powerpoint with ALL figures so we can pick.  
- To annotate: Go back to rep-seq files, use ASV IDs to blast. Highest %. Would have to do for all 154 (for ASVs 5,6,7)... Could align 154 ASV IDs. Should be exactly the same seqeunces... EXACT because ASVs!  
- Could also extract rep-seqs from each dataset and highlight on excel   
- Subset phyloseq object just by 9 ASVs 
- Extract sequences from rep-seqs of 9 ASVs and match to full rep-seq of space  
- Filter on qiime for only space spamples in rep-seq and for GC. Look into qiime filtering by metadata category.   
- 3 phyloseq objects with our ASVs. Extract RA abundance data using bubble plot (use farm paper code)... proof of concept though we're not sure if it says mice were irradiated. Would have to validate 9 ASVs, would have to do another dataset.    
- Can discuss our thoughts on Farm paper methodology  
- Computational model? Create RA table in phyloseq, take OTU table and then append metadata column.  
- Not a hypothesis/research question  
- Knowledge gap: done in disease predictive microbiomes but not for environmental/abiotic conditions, applying Farm paper methodology
  
