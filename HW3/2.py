f = open('numbers.txt', 'r')
for item in f:
    s = item.split()
    fizz = int(s[0])
    buzz = int(s[1])
    n = int(s[2])

    for i in range(1, n + 1):
        if i % fizz == 0 and i % buzz == 0:
            print('FB', end=' ')
        elif i % fizz == 0:
            print('F', end=' ')
        elif i % buzz == 0:
            print('B', end=' ')
        else:
            print(i, end=' ')
    print('')
f.close