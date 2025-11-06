# Breast Cancer Wisconsin (Diagnostic) Analysis  
DATA 550 – Final Project 4
Author: Samridhi Purohit  
---

## Data  

The dataset used for this project is the **Breast Cancer Wisconsin (Diagnostic)** dataset from the [UCI Machine Learning Repository] 
(https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)).

It contains **measurements of cell nuclei** from digitized images of fine-needle aspirates of breast masses.  
Each observation corresponds to one patient, with features describing the shape, texture and size of the cell nuclei.

- **File:** `data/breast_cancer_wisconsin.csv`  
- **Observations:** 569 patients  
- **Variables:** 30 numeric features + diagnosis (`M` = malignant, `B` = benign)

This CSV file was created from the original UCI files (`wdbc.data` and `wdbc.names`) to include clear column headers and ensure compatibility with R scripts.  
Only the cleaned, labeled version (`breast_cancer_wisconsin.csv`) is used in this analysis.

---

## Code Description

`code/01_make_table.R`
- reads the cleaned dataset (`data/breast_cancer_wisconsin.csv`)
- creates a summary table comparing malignant and benign tumors
- saves the table as `output/summary_table.csv`

`code/02_make_figure.R`
- reads the same dataset
- creates a boxplot visualizing differences in one or more cell measurements by diagnosis
- saves the figure as `output/figure_boxplot.png`

`code/03_render_report.R`
- renders `report.Rmd` into an HTML report
- compiles text, summary table and figure into `report.html`

`report.Rmd`
- reads the dataset, summary table and figure
- presents the analysis and outputs in a readable report format

------
