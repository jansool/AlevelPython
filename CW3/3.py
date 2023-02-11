#Написать программу, которая выводит сама себя
import sys
file = sys.argv[0]
f = open(file, 'r')
for line in f:
    j = -1
    for el in line:
        print(line[j], end='')
        j -= 1

f.close
