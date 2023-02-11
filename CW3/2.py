#Написать программу, которая выводит сама себя
import sys
file = sys.argv[0]
f = open(file, 'r')
for line in f:
    print(line, end='\n')
f.close
