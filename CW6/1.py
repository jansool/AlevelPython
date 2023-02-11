journal = {
    'Katya Alusch': [5, 3, 5, 5, 4, 5],
    'Eda Sin': [5, 5, 4 ,5, 5, 5],
    'Riki Tak': [3, 5, 2, 4, 3, 5],
    'Nels Bil': [4, 3, 5, 3, 4, 3],
    'Nina Lutova': [5, 5, 5, 4, 5, 5]
}

midmarks = {}
for keys, val in journal.items():
    midmarks.update({keys:(sum(val)/len(val))})

k = list(midmarks.keys())
v = list(midmarks.values())

worstS = k[0]
worstMark = v[0]
bestS = k[0]
bestMark = v[0]
for keys, val in midmarks.items():
    if val < worstMark:
        worstS = keys
    if val > bestMark:
        bestS = keys
print('The best student is', bestS)
print('The worst studen is', worstS)