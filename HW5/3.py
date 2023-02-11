def myzip(*args):
    new_list = []
    result = []
    for elem in args:
        new_list.extend([list(elem)])
        minimum = len(new_list[0])
    for elem in new_list:
        if len(elem) < minimum:
            minimum=len(elem)
    for i in range(minimum):
        l=[]
        for elem in new_list:
            l.append(elem[i])
        result.append(tuple(l))
    return print(result)


a = [1, 2, 'a', 'b']
b = '34cd'

print(myzip(a,b))