
text = open('text.txt', 'r')

def spl(el):
    a=el.split()
    return a

List = []
List.extend(map(spl, text))

print(List)

def counter(word):
    def iss(check):
        if word == check:
            return 1
        else:
            return 0
    suma = sum(list(map(iss, List[0])))
    stroka = word + ':' + str(suma)
    print(stroka)
    return stroka

print(list(map(counter, List[0])))


text.close