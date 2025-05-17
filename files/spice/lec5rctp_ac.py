# -*- coding: utf-8 -*-
"""
Auswertung der AC SPICE Analyse der RC-Schaltung

"""

# %% Init
import ltspice
import numpy as np
import matplotlib.pyplot as plt

# %% Laden der RAW LTSpice Daten in den Python-Workspace
file = '../files/spice/lec5rctp.raw'
raw = ltspice.Ltspice(file)
raw.parse()

# %% AC Analyse
# Daten werden als Numpy-Array geladen, Typ complex
Af = raw.get_data("V(2)")
freq = raw.get_data("frequency")

a_dB = 20*np.log10(np.abs(Af))  # Betrag in dB
a_ph = np.rad2deg(np.angle(Af))  # Phase in Grad (engl. degree)
f = freq.real

# %% Erzeugen des Bode-Diagramms
plt.subplot(2, 1, 1)
plt.semilogx(f, a_dB)
plt.ylabel(r'$\vert H_v \vert$/dB')
plt.grid()
plt.subplot(2, 1, 2)
plt.semilogx(f, a_ph)
plt.ylabel(r'$arg(H_v)$/deg')
plt.xlabel('f/Hz')
plt.grid()
plt.show()

# %% Erzeugen der Ortskurve
plt.plot(Af.real, Af.imag)
plt.xlabel(r'Re')
plt.ylabel(r'Im')
plt.grid()
plt.show()
