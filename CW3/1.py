#Каждый пишет сумму списка при помощи for и while
a = [1, 4, 3, 6]
print('with for:')
suma = 0
for i in a:
    suma += int(i)
print(suma)
print('with while:')
summa = 0
i = 0
while i < len(a):
    summa += int(a[i])
    i += 1
print(summa)
