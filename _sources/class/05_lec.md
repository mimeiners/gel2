# Grafische Analysemethoden

* Bode-Diagramm, Frequenz- und Phasengang

* Nyquist-Ortskurve, kurz [Ortskurve](https://elektroniktutor.de/elektrophysik/ortskurv.html)


## Frequenzgang und Übergangsverhalten

*Kurzbeschreibung.* 
Der Frequenzgang beschreibt, wie ein dynamisches System eine sinusförmige Eingangsgröße überträgt.

![](../images/class/lec5s1.png)

$$
F(j\omega) = \frac{\underline{U}_2}{\underline{U}_1} = \frac{j \omega R_1 C_1}{1+j \omega R_1 C_1} 
$$


### Bode-Diagramm einer RC-Schaltung

Ermitteln Sie den Betrags- und Phasengang der einfachen RC-Schaltung mit Hilfe der komplexen Wechselstromrechnung (KWR).
Nutzen Sie Python und SPICE zur Darstellung des Bode-Diagramms.

```python
import numpy as np
import matplotlib.pyplot as plt

# Spezifikation der Impedanz/Admittanz
R = 2e3
C = 156e-9

# Frequenzvektor
f = np.logspace(0, 5, 100)
w = 2*np.pi*f

# Bestimmung der Impedaanzen
Z1 = R
Z2 = 1/(1j*w*C)

# Spannungsuebertrangungsfunktion
F_U = Z1 / (Z1 + Z2)

abs_F_U = 20*np.log10(abs(F_U))
arg_F_U = np.arctan(F_U.imag/F_U.real)

# Bode-Diagramm
plt.subplot(2, 1, 1)
plt.semilogx(f, abs_F_U)
plt.ylabel(r'|F(j$\omega$)|/dB')
plt.grid(b=True)
plt.title('Bode-Diagramm einer RC-Schaltung')

plt.subplot(2, 1, 2)
plt.semilogx(f, arg_F_U)
plt.xlabel(r'Frequenz f/Hz')
plt.ylabel(r'arg(F(j$\omega$)/rad')
plt.grid(b=True)

plt.show()
```


## Ortskurven
Als Referenz zu diesem Thema sei das Kapitel 5 aus {cite}`buettner2014` empfohlen.

Passive lineare Schaltungen mit R, L und C an sinusförmigen Signalen sind durch ihre Impedanz, dem
Wechselstromwiderstand oder seinem Leitwert, der Admittanz charakterisierbar. Die Schaltungen bilden von der Frequenz 
abhängige Spannungsteiler, deren Spannungsverlauf im Amplitudenfrequenzgang grafisch darstellbar ist. Die Phasenlage des
Ausgangssignals bezogen auf das Eingangssignal kann grafisch im Phasenfrequenzgang gezeigt werden. Beide Darstellungen
bilden das komplette Bodediagramm. 

Bei gegebenen Bauteilwerten kann für jede Frequenz die Impedanz Z berechnet und als Zeiger in ein Polarkoordinatensystem
mit reeller und imaginärer Achse gezeichnet werden. Entsprechend den Achsenparametern gibt die Zeigerlänge dann die
Impedanz, Admittanz, Ausgangsspannung oder den Ausgangsstrom an. Die Phasenlage ist durch den Winkel des Zeigers mit der
reellen Achse bestimmt.

In der Elektronik beschreibt die Systemtheorie unter anderem das Übertragungsverhalten von Signalen. Eine hilfreiche
Voraussetzung ist das Rechnen mit komplexen Größen sowie deren Darstellungen im Polarkoordinatensystem oder der
[Einführung in die komplexe Gaußschen Zahlenebene. Die oben genannten komplexen Größen sind von den Bauteilwerten
abhängig. Die Impedanz Z einer dimensionierten RC- oder RL-Reihenschaltung ist frequenzabhängig. Die Ortskurve ist die
Verbindung der errechneten Impedanzwerte in der komplexen Ebene durch einen Kurvenzug mit der Frequenz als
Parameter. Die Zeigerlänge vom Nullpunkt zum Kurvenpunkt auf der Ortskurve entspricht dem skalaren Impedanzwert der
aktuellen Frequenz. Der Phasenwinkel bezogen auf die Re-Achse zählt linksdrehend positiv und rechtsdrehend negativ. Die 
Lote vom Zeigerendpunkt auf die Koordinatenachsen ergeben für die jeweilige Frequenz als Achsenabschnitte die Wirk- und
Blindkomponente des Systems.


```{admonition} Vergleich zum Zeigerdiagramm
* Zeigerdiagramm nur für konstante Parameter

* Im Zeigerdiagramm keine Aussagen über Auswirkungen von Änderungen der Frequenz oder Schaltelemente

* "Für jeden Wert der Zweipole $R$, $L$, und $C$ oder jede Frequenz müssten gesonderte Zeigerdiagramme erstellt werden."

* "Man verzichtet auf die Darstellung der Zeiger und trägt in der komplexen Zahlenebene nur die Kurve auf."
```


### Ortskurve einer RC-Schaltung
Mit den Bauteilen $R$ = 2 k$\Omega$ und $C$ = 159 nF kann eine Reihen- oder Parallelschaltung gebildet werden. Die
komplexe Impedanz der Reihenschaltung ist von der Frequenz abhängig und grafisch in der komplexen Ebene als Ortskurve
mit der Frequenz als Parameter dargestellt. Die Blindwiderstandswerte wurden für einen bestimmten Frequenzbereich
errechnet und im Polarkoordinatensystem eingetragen. Alle Werte liegen im 4. Quadranten auf einer Geraden. Da der
ohmsche Widerstand ist von der Frequenz unabhängig ist, verläuft sie parallel zur imaginären Achse im Abstand von 
2 k$\Omega$. Auf die reelle (Re) Achse bezogen ist der Phasenwinkel der Impedanz negativ. Das Diagramm ist mit den
angegebenen gerundeten Rechenwerten des Blindwiderstands, der Impedanz und des Phasenwinkels erstellt.

```{figure} ../images/class/lec5s2.png
:name: fig:lec5s2

RC-Schaltung für eine Ortskurve.
```

$$
\underline{Z} = R_1 + \frac{1}{j \omega C_1} 
$$


```python
import numpy as np
import matplotlib.pyplot as plt

# Spezifikation der Impedanz/Admittanz
R = 2e3
C = 156e-9
f = np.linspace(0.2e3, 5e3, 5)
w = 2*np.pi*f
Z = R + 1/(1j*w*C)

# Ortskurve der Impedanz
plt.plot(Z.real, Z.imag, '-x')
plt.grid(b=True)
plt.xlabel(r'Re{Z}')
plt.ylabel(r'Im{Z}')
plt.show()
```

"Die Ortskurve kann auch für die Parallelschaltung von R und C mit der Frequenz als Parameter gezeichnet werden. Im
Polardiagramm wird sie durch die Zeiger aller Gesamtleitwerte oder Admittanzen gebildet und verläuft im 1. Quadranten
parallel zur imaginären Achse. Die Achsenbezeichnungen der Leitwerte werden in Siemens S angeben. Die Phasenwinkel sind
auf die Re-Achse bezogen positiv." {cite}`mietke2023`


### Inversion von Ortskurven

"Bei der Konstruktion einer Ortskurve ist es oft notwendig von der Widerstandsform $\underline{Z}(\omega)$ auf die
Leitwertsform $\underline{Y}(\omega)$ überzugehen und umgekehrt. Beide Funktionen gehen jeweils aus der Kehrwertbildung
der anderen hervor, man nennt sie zueinander inverse Funktionen und die Kehrwertbildung selbst Inversion."
{cite}`buettner2014`


Die Inversion der Ortskurve hat als Ergebnis die zur Ausgangsschaltung äquivalente Schaltung. Diese Umrechnung ist immer
dann notwendig, wenn es sich um gemischte Reihen- und Parallelschaltungen wie bei T- und $\Pi$-Filtern, belasteten
Filtern und Schwingkreisen handelt.

Die Ortskurven einfacher RC- und RL-Schaltungen verhalten sich wie folgt:

* Verläuft die Ortskurve der Impedanz oder Admittanz im 1. Quadranten, so befindet sich die dazu invertierte Ortskurve
  im 4. Quadranten.
  
* Die Ortskurve der Impedanz einer Reihenschaltung ist eine Parallele zur imaginären Achse im Abstand des ohmschen
  Widerstandswerts. Die invertierte Ortskurve der Admittanz ist ein im Nullpunkt endender Halbkreis mit dem Durchmesser
  des reellen Leitwerts. 
  
* Die Ortskurve der Admittanz einer Parallelschaltung ist eine Parallele zur imaginären Achse im Abstand des reellen
  Leitwerts. Die invertierte Ortskurve der Impedanz ist ein im Nullpunkt endender Halbkreis mit dem Durchmesser des
  ohmschen Widerstandswerts. 
  
* Inversion eines Punktes (Widerstandsform/Impedanz): $\underline{Z} (5 + 5j) \Omega$

* Ma{\ss}stäbe $M_Z = 2 \Omega/cm$ und $M_Y = 0.1 S/cm$

* Leitwertform/Admittanz: $\underline{Y} = 1 / \underline{Z}$

$$
\underline{Y} = \frac{1}{(5 + 5j) \Omega} = \frac{(5 - 5j)S}{50} = (0.1 - 0.1j) S
$$

* Inversion von Ortskuven durch Inversion einzelner Punkte:

 1. In die komplexe Zahlenebene wird der Zeiger $Z$ eingetragen, dessen Spitze invertiert werden soll.
 
 2. Um den Ursprung des Koordinatensystems wird ein Inversionskreis mit beliebigem Radius $r$ geschlagen.
 
 3. Von der Spitze des Zeigers $Z$ aus werden Tangenten an den Kreis gelegt, sie ergeben die Berührungspunkte $T_1$ und
	$T_2$. Die Tangentenpunkte kann man auch finden, wenn man um die Mitte des Zeigers einen Kreis mit dem Radius $Z / 2$,
	d.h. einen Thaleskreis, schlägt (siehe [Höhensatz](https://de.wikipedia.org/wiki/Höhensatz)). 
 
 4. Die beiden Punkte $T_1$ und $T_2$ werden miteinander verbunden.
 
 5. Wo die Verbindungslinie den Zeiger $Z$ schneidet, liegt die Spitze des konjugiert komplexen Zeigers $Y^*$.
 
 6. Spiegelt man den Zeiger $Y^*$ an der reellen Achse, so erhält man $Y$. Die Spitze dieses Zeigers entspricht also der
	invertierten Spitze von $Z$. 
 
 7. Bezeichnet man die Maßstäbe für den komplexen Scheinwiderstand mit $M_Z$ und den Scheinleitwert mit $M_Y$ sowie die
	Länge des Zeigers $Z$ mit $L_Z$ und die der Zeiger $Y$  bzw. $Y^*$ mit $L_Y^*$  bzw. $L_Y$, so ist – da das Dreieck
	0T1P rechtwinklig ist – nach dem
	[Kathetensatz](https://de.wikipedia.org/wiki/Satzgruppe_des_Pythagoras#Kathetensatz_des_Euklid)


### Ortskurve einer Übertragungsfunktion

Innerhalb dieses Webprojekts sind die Übertragungsfunktionen fast immer als Bodediagramm dargestellt, bestehend aus dem
Amplituden- und Phasenfrequenzgang. Mit der Übertragungsfunktion des Zweitors (Vierpols) wird nachfolgend für einen
RL-Tiefpass die Ortskurve erstellt.

Gesucht ist das Verhältnis der Ausgangs- zur Eingangsspannung am Zweitor. Es ist von der Frequenz abhängig und somit
eine komplexe Größe. Die Eingangsspannung liegt an der Reihenschaltung aus je einem Wirk- und Blindwiderstand. Die
Ausgangsspannung ist beim RL-Tiefpass am ohmschen Widerstand messbar. Zur Vereinfachung wird auf die Ausgangsgröße
normiert, wobei der Zähler den Wert 1 annimmt. Eine weitere Vereinfachung ist die Normierung auf die Grenzfrequenz. In
der Systemtechnik wird die normierte Kreisfrequenz $\Omega$ bezeichnet. Sie hat bei der Grenzfrequenz den Wert 
$\Omega$ = 1.

Die gerundeten Werte der Ortskurvenpunkte gelten für einen dimensionierten RL-Tiefpass mit $R$=1k$\Omega$
und $L$=100 mH. Mit den Werten $\Omega$, $|v|$ und $\phi$ könnten auch die Diagramme des Amplituden- und
Phasenfrequenzgangs gezeichnet werden. Dazu werden auf einer Frequenzachse in linearer Teilung die $\log(\Omega)$-Werte 
eingetragen. Die Amplitudenachse erhält eine lineare oder logarithmische dB-Teilung, während die Achse der Phasenwinkel
immer linear geteilt ist.

Mit den Werten $|v|$ und $\phi$ kann auch die Ortskurve der Impedanz der RL-Reihenschaltung erstellt werden. Der zu
errechnende Faktor des ohmschen Widerstands folgt aus $|v| \cos(\phi)$ und der Faktor des Blindwiderstands aus
$|v| \sin(\phi)$. Bei Vorgabe einer Grenzfrequenz und des ohmschen Widerstandes sind mit den Faktoren für jeden
RL-Tiefpass alle interessierenden Diagramme erstellbar.


### Ortskurve eines Reihenschwingkreises

Ein realer Reihenschwingkreis wird mindestens durch den ohmschen Drahtwiderstand der Spule gedämpft, der für die
Kreisgüte mitbestimmend ist. Setzt man in der komplexen Impedanzfunktion den imaginären Teil gleich null, kann daraus
die Resonanzfrequenz ermittelt werden. Bei ihr wirkt der Reihenschwingkreis nach außen hin als reeller ohmscher
Widerstand und zwischen Spannung und Strom besteht keine Phasenverschiebung. 

Der linke Teil der folgenden Grafik zeigt die Ortskurve der auf den Verlustwiderstand normierten komplexen Impedanz
eines Reihenschwingkreises. Der Parameter ist die normierte Frequenzverstimmung $\Omega$. Unterhalb der Resonanzfrequenz
ist der Parameter negativ und der RLC-Reihenkreis verhält sich kapazitiv. Oberhalb ist das Verhalten induktiv und der
Parameter positiv.

Liegt am Reihenschwingkreis für alle Frequenzen eine konstante Spannung an, so fließt im Resonanzfall der maximale Strom
und beim verstimmten Kreis bleibt er geringer. Der rechte Teil der Grafik zeigt die Ortskurve mit dem Parameter $\Omega$
für den auf seinen Maximalwert normierten komplexen Strom. Bei $\Omega$ = $\pm$ 1 beträgt der Phasenwinkel $\phi$ =
$\pm$ 45 Grad. Der Strom erreicht den Wert $I=\frac{I_{max}}{\sqrt{2}}$. Durch $\Omega$ = $\pm$ 1 ist die Bandbreite des
Schwingkreises bestimmt. 
