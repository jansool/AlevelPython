n = int(input('Enter your number: '))

while n > 0:
    r = n % 10
    print(r, ':', end=' ')
    for i in range(1, r+1):
        for j in range(1, r+1):
            if i*j == r:
                print(i, '*', j, sep='', end='; ')
    print('')
    n = n // 10
input('Press enter to exit')
