journal = {
    'Alice': ['Python', 'FullStack','Java'],
    'Nina': ['Python', 'Java'],
    'Finn': ['Java'],
    'Dana': ['Python'],
    'Betul': ['Java', 'FrontEnd'],
    'Kate': ['FullStack', 'Java'],
    'Andriy':['Python'],
    'Vitaliy':['Python', 'Java', 'FrontEnd'],
    'Alina': ['FrontEnd'],
    'Lera': ['FullStack']
}

twoandmore = []
notfrontend = []
pythonandjava = []

for name, kurse in journal.items():
    if len(kurse)>=2:
        twoandmore.append(name)
    if 'FrontEnd' not in kurse:
        notfrontend.append(name)
    if 'Python' in kurse and 'Java' in kurse:
        pythonandjava.append(name)

print('Студенты, которые учатся в двух и более группах ', twoandmore)
print('Студенты, которые не учатся на фронтенде ', notfrontend)
print('Студенты, которые изучают Python или Java ', pythonandjava)

