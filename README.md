# Nearest-Neighbor

Nearest neighbour(NN) is a Machine Learning Optimization Algorithm which finds the closest point to a given point from the data-set. The closeness is expressed by distance functions like Euclidean distance. This algorithm is used for classification problems. 

The given program implements the Nearest Neighbor algorithm in MATLAB. It works on the OCR.MAT data. In this example, we do not apply 1-NN directly on the training data. Rather, we randomly pick 'n' points from the training set and work on them. The test error rates are computed and compared for various values of 'n'. 

The analysis of 1-NN against the size of training data is as given: 
<img width="485" alt="analysis" src="https://cloud.githubusercontent.com/assets/21295042/22408838/1df1ae8e-e64e-11e6-8ef6-3397b4a614c0.PNG">
