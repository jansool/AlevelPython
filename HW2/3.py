#У вас есть три числа, они вводятся из консоли. Первое число называется fizz, второе называется buzz. До третьего необходимо досчитать от единицы. Считая, надо выводить число. Если число кратно fizz - надо выводить F вместо числа. Если число кратно buzz - надо выводить B вместо числа. Если число кратно и fizz и buzz, надо выводить FB. И так - пока не будет достигнуто третье введенное число.
fizz, buzz, n = int(input()), int(input()), int(input())

for i in range(1, n+1):
    if i%fizz==0 and i%buzz==0:
        print('FB', end=' ')
    elif i%fizz==0:
        print('F', end=' ')
    elif i%buzz==0:
        print('B', end=' ')
    else:
        print(i, end=' ')