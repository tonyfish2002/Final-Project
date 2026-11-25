This project includes a description of the English Premier League (EPL) Players' Statistics data set and the findings from the primary analysis. The analysis was to examine if players on EPL teams as of 2020-09-24 have significantly different win rates than Arsenal players.

All code used to generate the clean data set and outputs of the final report is located in the code directory. The Poisson regression table and the figure will be located in the output directory, whereas the clean data set will be located in the clean_data directory.

To generate the report (final_project.html), simply go to a relevant terminal and run

``` bash
make 
```

To only produce the clean data set, run

``` bash
make clean_data/data_clean.rds
```

For the table, run

``` bash
make output/table.rds
```

For the figure, run

``` bash
make output/fig_f.rds
```

To delete all objects created via the make commands, run

``` bash
make clean
```
