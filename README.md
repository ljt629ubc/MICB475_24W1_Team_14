# MICB475_Team_14

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



