import matplotlib.pyplot as plt
import numpy as np
import os

for rho in ["0.01", "0.02", "0.05", "0.10", "0.15", "0.20", "0.30", "0.40", "0.50"]:
	filename = "velocity.%s.txt" % rho
	if os.path.exists(filename):
		data = np.loadtxt(filename, skiprows=4, unpack=True)
		r = data[1]
		vx = data[4] / np.mean(data[4])
		plt.plot(r,vx, label="rho=%s" % rho, marker='o')
plt.legend()
plt.show()
