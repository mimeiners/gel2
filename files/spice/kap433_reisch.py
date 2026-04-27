# %% Importieren der benötigten Bibliotheken
from PyLTSpice import RawRead
import matplotlib.pyplot as plt

# %% Einlesen der Daten
ltr = RawRead('../files/spice/kap433_reisch.raw')
print(ltr.get_trace_names())  # Liste der benutzten Signale

# %% Laden der Daten
t = ltr.get_trace('time')
V1 = ltr.get_trace('V(1)')
V2 = ltr.get_trace('V(2)')

# %% Plotten der Daten
plt.plot(t, V1, label="$v_1(t)$")
plt.plot(t, V2, label="$v_2(t)$")
plt.legend()
plt.grid()
plt.xlabel('Zeit t in s')
plt.ylabel('Spannung V in V')
plt.show()
