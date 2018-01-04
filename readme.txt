Files
-------------
	matlab functions:
	-----------------
		1. lndp.m          returns lndp of 3x3 mask
		2. lndp_mode1.m    returns lndp of upper octet of 5x5 mask
		3. lndp_mode2.m    returns lndp of lower octet of 5x5 mask
		4. fiveX5_LNDP.m   returns lndp of an image
		5. manhattan.m	   returns manhattan distance between the given two vectors
	
	matlab driver code:
	-------------------
		1. cbir_system.m   extracts lndp features of the data-set and stores the result
		2. cbir_ret.m	   returns the top mathches of the given query image

How to execute
--------------
	1. Run cbir_system.m file first to calculate the lndp features of all images in the database. 
	2. Give the query image in cbir_ret.m
	3. Run cbir_ret.m to get the top matches of the given query images based on lndp features.
