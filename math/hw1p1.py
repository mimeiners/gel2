#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
GEL2, Uebungsblatt 1, Problem 1

@author: M. Meiners
"""

import numpy as np
import matplotlib.pyplot as plt

f = 10**3  # Grundfrequenz 1 kHz wird auch als 10e3 geschrieben
w = 2 * np.pi * f  # Kreisfrequenz

U0p = 10  # Spannung in Volt
R = 30  # Widerstand in Ohm
L = 3e-3  # Induktivität in Henry
I0p = 0.282  # Strom in  Ampere
phiI = -32.1 * np.pi / 180  # Winkel in rad

t = np.linspace(0, 5e-3, 1000)  # Zeitachse anlegen
u0 = U0p * np.sin(w * t)
i0 = I0p * np.sin(w * t + phiI)
uL = w * L * I0p * np.sin(w * t + phiI + np.pi / 2)  # Spannung über der Spule
uR = R * i0  # Spannung über Widerstand

plt.plot(w * t, u0, label=r'$u_0$')
plt.plot(w * t, uR, label=r'$u_R$')
plt.plot(w * t, uL, label=r'$u_L$')
plt.plot(w * t, i0, label=r'$i_0$')
plt.xlabel(r'$\omega t$')
plt.ylabel(r'$u(t)$')
plt.grid()
plt.legend()

plt.show()
