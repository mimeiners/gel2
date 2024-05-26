# Resonanzkreise

## Physikalische Grundlagen

* periodische Zustandsänderung in einem physikalischen System

* periodischer Energieaustausch zw. zwei unterschiedlichen Energiespeichern (potentiellen und kinetischen), z.B. Feder
  und Masse, Induktivität und Kapazität 
  
* maßgebende Zustandsgröße $x(t)$, z.B. Auslenkung, Spannung oder Ladung, folgen einer gew|ohnlichen
  Differenzialgleichung (DGL) vgl. HMA 3: $\ddot{x} + \omega_0 x = 0$

* harmonische Schwingung, $x(t+T_0) = x(t)$, wobei $T_0$ Periode, $\omega_0=2 \pi f_0 = 2\pi \frac{1}{T_0}$
  Eigenfrequenz und $f_0$ Resonanzfrequenz 
  
* DGL gehorcht dem Energieerhaltungssatz

\begin{align}
W_{ges}(x) &= W_{pot}(x) + W_{kin}(x) = const. \\
\frac{d W_{ges}}{dt} &= \frac{dW_{pot}}{dx} \frac{dx}{dt} + \frac{d W_{kin}}{dx} \frac{d x}{dt} = 0 \\
x(t) &= x_{max} \cos(\omega_0 t + \varphi_0)\quad\mbox{Lösung}
\end{align}


* Zusammenschaltung von Induktivität $L$ und Kapazität $C$ heißt (idealer) Schwing- oder Resonanzkreis

\begin{align}
W_{pot} &:= \mbox{Kondensator} \\
W_{kin} &:= \mbox{Induktivität}
\end{align}

* freie und erzwungene Schwingung

* ungedämpfte und gedämpfte Schwingung


## Realer (verlustbehafteter) Schwingkreis

* Maschengleichung

\begin{align}
u_Q(t) &= L \frac{di}{dt} + i\, R + \frac{1}{C} \int i dt  \\
0 &= \frac{di}{dt^2} + \frac{R}{L} \frac{di}{dt} + \frac{1}{LC} i  \\
i(t) &= I_0 e^{-d \omega_0 t} \cos(\sqrt{1 -d^2} \omega_0 t) \quad \mbox{Lösung}
\end{align}

* Dämpfung $d = \frac{1}{2 Q} = \frac{R}{\omega_0 L}$

* Güte $Q = \frac{\omega_0 \cdot \mbox{ges. Speicherenergie}}{\mbox{Verlustleistung}}$

* Reihenkreis $Q = \frac{\omega_0 L}{R} = \frac{1}{R}\sqrt{\frac{L}{C}}$

* Parallelkreis $Q = \frac{\omega_0 C}{G} = \frac{1}{G}\sqrt{\frac{C}{L}}$

## Grundeigenschaften des Reihenschwingkreises

```{admonition} Impedanz
\begin{align}
\underline{Z} &= R_r + j\left(\omega L_r - \frac{1}{\omega C_r}\right) \\
&= R_r + j X(\omega) \\
\lvert\underline{Z}\lvert &= \sqrt{R_r^2 + X^2(\omega)} \\
\arg{\underline{Z}} &= \arctan \frac{X(\omega)}{R_r}
\end{align}
```


## Grundeigenschaften des Parallelschwingkreises

```{admonition} Admittanz
\begin{align}
\underline{Y} &= G_p + j\left(\omega C_p- \frac{1}{\omega L_p}\right) \\
&= G_r + j B(\omega) \\
\lvert\underline{Y}\lvert &= \sqrt{G_p^2 + B^2(\omega)} \\
\arg{\underline{Y}} &= \arctan \frac{B(\omega)}{G_p}
\end{align}
```


## Grundeigenschaften von Reihen- und Parallelschwingkreis

* Thomsonsche Formel $\omega_0 = \frac{1}{L_r C_r} = \frac{1}{L_p C_p}$

* bei Resonanz erreichen Impedanz und Admittanz ein Minimum

\begin{align}
\left . \underline{Z} \right\lvert_{\omega_0} &\Rightarrow \lvert\underline{Z}\lvert = R_r \\
\left . \underline{Y} \right\lvert_{\omega_0} &\Rightarrow \lvert\underline{Y}\lvert = G_p
\end{align}


                     $X(\omega)$  $B(\omega)$  
-------------------  -----------  -----------  
$\omega < \omega_0$   kapazitiv     induktiv   
$\omega > \omega_0$    induktiv    kapazitiv   



## Vereinheitlichte Kennzeichnung

```{admonition} Verstimmung $v$, relative Frequenzabweichung
\begin{align}
v &= \frac{\omega}{\omega_0}-\frac{\omega_0}{\omega}
\end{align}
```

```{admonition} Normierte Darstellung
\begin{align}
\underline{Z} &= R \left( 1 + j \frac{1}{R} \left( \frac{\omega \omega_0 \omega L}{\omega_0}
- \frac{\omega_0}{\omega_0 \omega C}\right)\right) \\
&= R (1 + Q v) \\
\underline{Y} &= G (1 + j Q v)
\end{align}
```

```{admonition} Betrag und Phase
\begin{align}
\frac{\lvert\underline{Z}\lvert}{R} = \frac{\lvert \underline{Y}\lvert}{G} &= \sqrt{1 + \left( Q v \right)} \\
\varphi_Z = \varphi_Y &= \arctan\left( Q v \right)
\end{align}
```

```{admonition} 45$^{\circ}$-, $\frac{\pi}{4}$- oder 3dB-Frequenz 
Der Phasenwinkel $\varphi$ ist gleich \SI{45}{\degree} und Betrag der Blindkomponente ist gleich der Wirkkomponente.

\begin{align}
\lvert X(\omega_{\pm 45}) \lvert &= \pm R &  \lvert B(\omega_{\pm 45}) \lvert &= \pm G \\
\omega_{\pm 45} L - \frac{1}{\omega_{\pm 45} C} &= \pm R &  \omega_{\pm 45} C - \frac{1}{\omega_{\pm 45} L} &= \pm G
\end{align}

\begin{align}
\omega_{\pm 45} &= \omega_0 \left( \sqrt{1 + \left(\frac{1}{2Q}\right)^2} \pm \frac{1}{2Q}\right) \approx \omega_0 \left( 1 \pm \frac{1}{2Q}\right)
\end{align}

\begin{align}
\lvert \underline{Z(\omega_{\pm 45})} \lvert &= \sqrt{2} R &  \lvert \underline{Y(\omega_{\pm 45})} \lvert &= \sqrt{2} G
\end{align}
```

```{admonition} Bandbreite BW (bandwidth)
\begin{align}
BW &= \omega_{45} - \omega_{-45} \\
&= f_{45} - f_{-45} \\
&= \frac{\omega_0}{Q} = \frac{f_0}{Q}
\end{align}
```

```{figure} ../images/class/lec6elemSchwing.pdf
:name: fig:lec6elemSchwing

Gegenüberstellung der Eigenschaften der elementaren Schwingkreise {cite}`harriehausen2020`
```

## Wien-Robinson-Oszillator

### Gleichstrommessbrücke

### Wechselstrom-Abgleichbrücke

### Wien-Robinson-Brücke
{cite}`hewlett1942`


## Literaturverzeichnis

```{bibliography}
:filter: docname in docnames
```
