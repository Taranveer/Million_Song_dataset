import csv as csv
import numpy as np
from sklearn import linear_model
import math

print "Reading......"
csv_file_object = csv.reader(open('clean_data.csv', 'rb'))  #Reading clean data with some null year values
header = csv_file_object.next()
header=header[2:]

data=[]

#Storing data in a list data :
for row in csv_file_object:
    data.append(row[2:])

data = np.array(data).astype(float) #Converting data into numpy array

#Storing records with non-null year value in a list valid_data
valid_data=[]
for i in data:
	if i[20]!=0.:
		valid_data.append(i)

valid_data=np.array(valid_data) #Converting valid_data into numpy arrray

#Dividing Data into input(features) and output(years):
train_y=valid_data[0::,20]
train_X=valid_data[0::,0:20:]

#Declaring and Initializing Linear Learning Model
#Ridge regression model with cross validation is being used. Here number of folds has been taken as 5
clf = linear_model.RidgeCV(alphas = [0.001, 0.01, 0.1, 1.0, 10.0, 100.0], normalize=True, cv=5, store_cv_values=False)

print "Training......"
clf.fit(train_X,train_y) #Training on data

print "Predicting......."

#Predicting where value of year is 0(null) in array data
for i in range(len(data)):
	if data[i][20]==0.:
		data[i][20]=math.ceil(clf.predict(data[i:i+1:,0:20:]))

print "Writing........."

#writing predicted data in final_data.csv
open_file = csv.writer(open('final_data.csv','wb'))
open_file.writerow(header)
for i in range(len(data)):
	open_file.writerow(data[i])

print "Done......."
