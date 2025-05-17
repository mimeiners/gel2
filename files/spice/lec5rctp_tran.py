# -*- coding: utf-8 -*-
"""
Auswertung der TRAN SPICE Analyse der RC-Schaltung

"""
# %% Init

import ltspice
import matplotlib.pyplot as plt

# %% Laden der RAW LTSpice Daten in den Python-Workspace

file = 'lec5rctp.raw'
raw = ltspice.Ltspice(file)
raw.parse()

# %% TRAN Analyse

t = raw.get_time()*1e3  # skaliert
V_c = raw.get_data('V(vc)')
V_in = raw.get_data('V(vin)')
V_r = V_c - V_in
I_c = raw.get_data('I(c1)')*1e6  # skaliert
I_r = raw.get_data('I(r1)')*1e6  # skaliert

# %% Erzeugen des Plots mit zwei Y-Achsen

fig = plt.figure()
ax1 = fig.add_subplot(111)

# Spannungen
ax1.plot(t, V_c, label=r'$V_C$')
#ax1.plot(t, V_in, label=r'$V_{in}$')
#ax1.plot(t, V_r, label=r'$V_R$')
ax1.set_xlabel('Zeit t in ms')
ax1.set_ylabel('Spannung in V')
ax1.grid()
#ax1.legend()

# Ströme
ax2 = ax1.twinx()
ax2.plot(t, I_c, 'r', label=r'$I_C$')
#ax2.plot(t, I_r, label=r'$I_R$')
ax2.set_ylabel('Ströme in $\mu$A')

plt.show()
