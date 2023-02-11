class Temperature():
    def __init__(self, meltpoint, boilpoint):
        self.meltpoint = meltpoint
        self.boilpoint = boilpoint

    def temperature_conventer(self, t, scale):
        if scale == 'K':
            return t - 273
        elif scale == 'F':
            return (t-32)*(5/9)
        elif scale == 'C':
            return t
        else:
            return 'Wrong scale'

    def agregate_state(self, t, scale):
        t = Temperature.temperature_conventer(self, t, scale)
        if t < self.meltpoint:
            return 'It is solid'
        elif self.meltpoint < t < self.boilpoint:
            return 'It is liquid'
        else:
            return 'It is boiling'

water = Temperature(0, 100)
print(water.agregate_state(-2, 'C'))