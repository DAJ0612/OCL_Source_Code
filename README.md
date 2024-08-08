# OCL
Demo code and datasets for the paper: Order Is All You Need for Categorical Data Clustering

# Datasets
Four demo datasets are in the Data folder i.e., VT, BC, AC, ZO. 

# Code information

All code is written in Matlab. Each section serves the following purpose:

- The `Metrics` folder contains code for evaluating clustering performance.
- The `OCL_alg` folder details the code of the OCL algorithm.

The `initialization.m` and `order_initial.m` files initialize `Q` and `order`, respectively. The `OCL_main.m` file is the main component of the OCL algorithm and executes the outer loop.

The `INOCL.m` file implements the inner loop function of the OCL algorithm. The `Order_choose.m` file and the `Order_reset.m` file are responsible for estimating the order and modifying the order of the original dataset based on this estimate, respectively.

Finally, the `Execute_Clustering.m` file executes the entire OCL algorithm on the provided dataset."

# How to run
	Ensure that the OCL folder has been added to the execution path by right-clicking the folder, selecting `Add to Path', and then left-clicking `Selected Folders and Subfolders'. After this, run the Execute_Clustering.m file, and the results will be displayed in the command line window.
