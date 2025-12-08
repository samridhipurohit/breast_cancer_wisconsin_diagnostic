#Rule to build the final report
report.html: report.Rmd output/figure_boxplot.png output/summary_table.csv
	Rscript code/03_render_report.R
	
#Make report
report: report.html

#Step 1: Create summary table
output/summary_table.csv: data/breast_cancer_wisconsin.csv code/01_make_table.R
	Rscript code/01_make_table.R

#Step 2: Create figure
output/figure_boxplot.png: data/breast_cancer_wisconsin.csv code/02_make_figure.R
	Rscript code/02_make_figure.R

#Docker Report
.PHONY: docker-report

docker-report:
	mkdir -p report
	docker run -v $(PWD)/report:/project/report bcg_report

#Clean rule
.PHONY: clean
clean:
	rm -f output/*.csv output/*.png output/*.html

