This section contains 3 files:
1)clean_data.csv
2)predict.py
3)final_data.csv

clean_data.csv contains clean data but there are many records in which
the value of year column is 0.

predict.py is a python script which takes clean_data.csv as input and
predicts the release year for those records where the year value is 0
using scikit-learn machine learning library and writes the predicted data
into the file final_data.csv.

final_data.csv contains data with all the predicted values along with
the given values.
