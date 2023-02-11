pm = int(input('Enter what amount of money do you have : '))
cost = int(input('How much is the item you want to buy costs? : '))
if pm>cost:
    print('You can buy it! You will still have', pm-cost, '$')
elif cost>pm:
    print('You can not buy it( You need', cost-pm, '$', 'more')
else:
    print('You can buy it! But you will spent all of your money')