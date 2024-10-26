import colorsys
import numpy as np
import subprocess
from matplotlib import pyplot as plt

hsv = [(h, 1, 1) for h in np.linspace(0, 1, 100)]
rgb = [colorsys.hsv_to_rgb(*tup) for tup in hsv]
defloat = lambda x: tuple((int(255 * i) for i in x))
rgb = [defloat(x) for x in rgb]

while (True):
  for r,g,b in rgb:
    subprocess.run(("sleep", "0.002"))
    command = f"xsetroot -solid #{r:02x}{g:02x}{b:02x}"
    subprocess.run((command.split(' ')))
    command = f"printf %b \e]11;#{r:02x}{g:02x}{b:02x}\a"
    subprocess.run((command.split(' ')))


