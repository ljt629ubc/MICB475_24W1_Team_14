# MICB475_Team_14
Overview of Project 2 for Team 14 - Khadija, Michael, Jackson, Wendy, Jacob

Meeting time is each Friday at 3:45pm
## Table of Contents
   * [Meeting 1 - October 4th](#October-4th,-2024)
   * [Meeting 2 - October 11th](#October-11th,-2024)
   * [Meeting 3 - October 18th](#October-18th,-2024)
* [Meeting 4 - October 25th](October-25th,-2024)
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

### Agenda
1. Can we use the dataset from the RR-1 and maybe RR-7 to train a classifier
