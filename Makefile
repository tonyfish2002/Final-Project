final_project.html: code/04_render_report.R final_project.Rmd outputs
	Rscript code/04_render_report.R

output/fig_f.rds: code/02_make_figure.R clean_data/data_clean.rds
	Rscript code/02_make_figure.R

output/table.rds: code/01_make_table.R clean_data/data_clean.rds
	Rscript code/01_make_table.R

clean_data/data_clean.rds: code/00_clean_data.R raw_data/final_proj_ds.csv
	Rscript code/00_clean_data.R

.PHONY: outputs
outputs: output/table.rds output/fig_f.rds

.PHONY: clean	
clean:
	rm -f output/*.rds && rm -f clean_data/*.rds && rm -f *.html