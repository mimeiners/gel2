# Netzwerkerregung

## Schaltzeichen

"In Deutschland sind elektrische Schaltzeichen durch DIN EN 60617 Graphische Symbole für Schaltpläne bzw. IEC 60617
 genormt. Sie ersetzen seit 1996–1998 die DIN 40700 / DIN 40900."

[Schaltzeichen nach DIN EN 60617](https://de.wikipedia.org/wiki/Liste_der_Schaltzeichen_%28Elektrik/Elektronik%29#Ideale_Stromkreise)


## Erregungsarten

* Gleichvorgänge

* Nichtperiodische Vorgänge

* Periodische Vorgänge, Spezialfall sind harmonische (sinus-, cosinusförmige) Vorgänge mit der Periodendauer $T$

* Gleichgrößen mit $f(t)$ = const. werden mit großen lateinischen Buchstaben gekennzeichnet, Gleichspannung $U$ und
  Gleichstrom $I$ 
  
* Zeitveränderliche Größen, hierbei ändert die Erregergröße $f(t)$ ihre Amplitude und/oder ihre Richtung zeitlich. Der
  Wert von $f(t)$ zum momentanen Zeitpunkt heißt Augenblicks- oder Momentanwert $f(t)$ der physikalischen
  Größe. Momentanwerte erhalten kleine lateinische Buchstaben, Spannung $u$ und Strom $i$. 


## Sinusförmige Erregung, periodische Vorgänge

```{admonition} Definitionen
* $f(t)=f(t+nT)$ mit $n=0, 1 ...$

* Frequenz $f=1/T$

* Kreisfrequenz $\omega=2\pi f = 2\pi/T$

* Periodendauer $T$

* Wechselgröße allgem. $a(t)=\hat{A} \sin (\omega t +\varphi) = \hat{A} \sin(\omega t + \omega t_0)$

* Scheitelwert, Maximalwert der Amplitude $\hat{A}=\max{A}=A_{max}$

* Nullphasenwinkel bzw. Nullzeitpunkt $\varphi=\omega t_0$

* Erregergröße wird aufgetragen mit $\omega t$ und nicht $t$; $\psi(t) = \omega t + \varphi = \omega t + \omega t_0$

* Bogenmaß $\psi/\mbox{Bogenmaß} = \frac{2 \pi}{360} \psi/\mbox{Grad}$
```


## Eigenschaften harmonischer Funktionen

* Differentiation, Integration und Addition, Subtraktion mithilfe von Additionstheoremen

* Aufspaltung einer harmonischen Schwingung und Koeffizientenvergleich

```{admonition} Zusammengefasst 
Bei Addition, Differentiation und Integration von harmonischen Funktionen der Kreisfrequenz $\omega$
entstehen wieder harmonische Funktionen der gleichen Frequenz, aber veränderter Amplitude und Phase. Bei der
Überlagerung zweier harmonischer Größen mit verschiedener Frequenz entsteht zwar eine periodische Schwingung, aber
keine Sinusschwingung (harmonische).
```

## Mittelwerte periodischer Zeitfunktionen


```{admonition} Arithmetischer Mittelwert - linearer Mittelwert - Gleichwert
\begin{align}
\overline{u(t)} &= \frac{1}{T} \int_t^{t+T} u(\tau) \mathrm{d} \tau
\end{align}
```

```{admonition} Gleichrichtmittelwert
\begin{align}
\overline{\lvert u(t) \lvert} &= \frac{1}{T} \int_t^{t+T} \lvert u(\tau) \lvert \mathrm{d} \tau
\end{align}
```

```{admonition} Quadratischer Mittelwert - Effektivwert

\begin{align}
U_{eff} = \sqrt{\overline{u^2(t)}} &= \sqrt{\frac{1}{T} \int_t^{t+T} u^2(\tau) \mathrm{d} \tau}
\end{align}

```

## $u/i$-Verhalten

```{admonition} Widerstand $R$ - Einheit: 1 $\Omega$

\begin{align}
u(t) &= R \cdot i(t) \\
&= R \cdot \hat{I} \sin(\omega t + \varphi_i) \\
&= \hat{U} \sin(\omega t + \varphi_u)
\end{align}

```

```{admonition} Induktivität $L$ - Einheit: 1 H = 1 Vs/A

\begin{align}
u(t) &= L \cdot \frac{di_L(t)}{dt} \\
&= \omega L \cdot \hat{I} \cos(\omega t + \varphi_i) \\
&= \omega L \hat{I} \sin(\omega t + \varphi_i + \frac{\pi}{2})
\end{align}

```

```{admonition} Kapazität $C$ - Einheit: 1 F = 1 C/V = 1 As/V

\begin{align}
i(t) &= C \cdot \frac{du_C(t)}{dt} \\
&= \omega C \cdot \hat{U} \cos(\omega t + \varphi_u) \\
&= \omega C \hat{U} \sin(\omega t + \varphi_u + \frac{\pi}{2})
\end{align}

```
