sum = int(input())
val = [10, 20, 50, 100, 200, 500, 1000]
for item in val:
    c = 0
    k = 0
    while c<10:
        if sum//item > 0:
            k+=1
            sum -= item
        c+=1
    print(item, '*', k)