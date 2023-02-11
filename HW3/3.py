
f = open('numbers.txt', 'r')
r = open('results.txt', 'w')


for item in f:
    s = item.split()
    fizz = int(s[0])
    buzz = int(s[1])
    n = int(s[2])

    for i in range(1, n + 1):
        if i % fizz == 0 and i % buzz == 0:
            r.write('FB ')
        elif i % fizz == 0:
            r.write('F ')
        elif i % buzz == 0:
            r.write('B ')
        else:
            r.write(str(i)+' ')
    r.write('\n')
f.close
r.close