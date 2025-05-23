# -*- coding: utf-8 -*-
"""
Auswertung der TRAN SPICE Analyse des RC-Hochpasses

"""

# %% Init
import ltspice
import matplotlib.pyplot as plt

# %% Laden der RAW LTSpice Daten in den Python-Workspace
file = '../files/spice/bsp134_reisch.raw'
raw = ltspice.Ltspice(file)
raw.parse()

# %% TRAN Analyse
t = raw.get_time()*1e6  # skaliert
V2 = raw.get_data('V(2)')
V1 = raw.get_data('V(1)')

# %% Erzeugen des Plots
plt.plot(t, V1, label=r'$V_1$')
plt.plot(t, V2, label=r'$V_2$')
plt.xlabel(r'Zeit t in $\mu$s')
plt.ylabel('Spannung in V')
plt.grid()
plt.legend()
plt.show()
