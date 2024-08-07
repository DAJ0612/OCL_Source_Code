# Datasets
Four demo datasets are located in the Data folder, it comprises one pure ordinal dataset VT, one pure nominal dataset ZO, and two mixture datasets BC and AP, respectively.
# Code information
All codes are written in Matlab. The functionality of each section is as follows:
The Metrics folder contains code for evaluating clustering performance.  The OCL_alg folder contains the code details of the OCL algorithm.
The initialization.m file and the order_initial.m file initialize Q and order, respectively. The OCL_main.m file is the main algorithm of the OCL algorithm and implements the outer loop of the OCL algorithm.
The INOCL.m file implements the inner loop function of the OCL algorithm. The Order_choose.m file and the Order_reset file implement the Order estimate and the functions of changing the order of the original data set based on the estimated order respectively.
Finally, the Execute_Clustering.m file is the execution file of the entire OCL algorithm on the given data set. 
# How to run
	Just run the Execute_Clustering.m file and the results will be seen in the command line window.
