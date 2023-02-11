def f_lower(stroka):
    return stroka.lower()

def f_upper(stroka):
    return stroka.upper()

l = ['AfdD', 'lfkrA', 'dd']

nl = list(map(f_lower, l))
print(nl)

nl = list(map(f_upper, l))
print(nl)