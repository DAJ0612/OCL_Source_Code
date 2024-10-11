# Datasets
All 12 datasets used in `Order Is All You Need for Categorical Data Clustering` can be found in  the `Data` folder, including two pure ordinal datasets, four pure nominal datasets, and six mixed datasets.  Additionally, six supplementary datasets are included in the `Supp._data` folder, which contains one pure ordinal dataset, two pure nominal datasets, and three mixed datasets.

# Code information

All code is written in Matlab 2022a. Each section serves the following purpose:

- The `Metrics` folder contains code for evaluating clustering performance.
- The `OCL_alg` folder details the code of the OCL algorithm.

The script information in the `OCL_alg` file are as follows:
- The `initialization.m` and `order_initial.m` files initialize `Q` and `order`, respectively.
- The `OCL_main.m` file is the main component of the OCL algorithm and executes the outer loop.
- The `INOCL.m` file implements the inner loop function of the OCL algorithm.
- The `Order_choose.m` file and the `Order_reset.m` file are responsible for learning the order and modifying the order of the original dataset, respectively.

Finally, the `Execute_Clustering.m` file executes the entire OCL algorithm on the provided dataset.

# How to run
 - Ensure that the OCL folder has been added to the execution path by right-clicking the folder, selecting `Add to Path`, and then left-clicking `Selected Folders and Subfolders`.
 - Run the `Execute_Clustering.m` file, and the results will be displayed in the command line window.
