
import csv
import pandas
count = 0 
with open('sample.csv', mode ='r')as file:
  csvFile = csv.reader(file)
  for lines in csvFile:
        count += 1
        print(lines)
        #Break after printing 10 lines
        if count == 10:
          break
