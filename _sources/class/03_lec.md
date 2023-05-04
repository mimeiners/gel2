<!-- !split -->
<!-- jupyter-book 03_lec.md -->
# Frequenzbereich

<div id="sec:freq"></div>
<!-- !split -->
### Beschreibung und Analyse im Frequenzbereich (1)
*Problemstellung.* 
Bei zukünftigen Schaltungen ist es nicht mehr möglich, direkt mit den Zeitfunktionen für Spannungen und Ströme zu
arbeiten.

Die von den Gleichstromnetzen bekannten Lösungsverfahren aus dem ersten Semester, die von linearen algebraischen
Gleichungssystemen ausgehen (Maschen-, Knoten- und andere Verfahren) können nicht übernommen werden.



<!-- !split -->
### Beschreibung und Analyse im Frequenzbereich (2)
*Symbolische Verfahren/Methoden.* 
  * komplexe Darstellung (analytisches Verfahren)
  * Zeigerdarstellung (graphisches Verfahren)
  * Wechselstromanalyse
  * Betrachtungen beruhen auf der Verwendung sinusförmiger Eingangsgrößen
  * Zeitbereich ist physikalische Realität mit gew. und partiellen Differentialgleichung (ODE, PDE)
  * Frequenzbereich hat mathematisch-formale Bedeutung



<!-- !split -->
### Symbolisches Verfahren
* Man ordnet nach einer gewissen Regel jeder Sinusgrö{\ss}e eine symbolische Grö{\ss}e zu (z.B. einen Vektor oder eine komplexe Zahl);
* Man schreibt die Differentialgleichungen des Netzwerkes mit den symbolischen Grö{\ss}en;
* Statt die Differentialgleichungen zu lösen, löst man die Gleichungen für die Symbole und bestimmt die unbekannten Grö{\ss}en. 
* Man transformiert die gefundenen Symbolgrö{\ss}en zurück in die gesuchten Sinusgrö{\ss}en.
* entn. <a href="marinescu2016.html#marinescu2016">[1]</a>

<!-- !split -->
### Vorteile des Frequenzbereichs
* zeitl. Differentiation und Integration geht über in Multiplikation und Division mit dem Differentialoperator $s=\sigma+j\omega$ (komplexe Frequenz); häufig genügt es sich auf die imaginäre Frequenz $s=j \omega$ zu beschränken.
* u-i-Zusammenhänge des Zeitbereichs $\rightarrow$ ohmsche Form im Frequenzbereich durch komplexen Widerstands-/Leitwertbegriff
* ODE's gehen über in algebraische Gleichungen
* gleichwertige Darstellung harmonischer Funktionen durch komplexe Größen $\rightarrow$ Zeiger



<!-- !split -->
### Funktionaltransformation (1) - Euler'sche Formel
$$
\begin{align}
\sigma + j \omega = a e^{j \varphi} &= a \left( \cos(\varphi) + j \sin(\varphi) \right) \\
a = \sqrt{\sigma^2 + \omega^2} \quad &\mbox{und} \quad \varphi = \arctan\left(\frac{\omega}{\sigma}\right)
\end{align}
$$

<!-- !split -->
### Funktionaltransformation (2) - Exponentialdarstellung
$$
\begin{align}
\cos(n\omega t) &= \frac{1}{2}\left( e^{j n \omega t} + e^{-jn\omega t}\right), \quad n=0, 1, \ldots \\
\sin(n\omega t) &= \frac{1}{j2}\left( e^{j n \omega t} - e^{-jn\omega t}\right), \quad n=0, 1, \ldots
\end{align}
$$

<!-- !split -->
### Funktionaltransformation (3) - Transformation
$$
\begin{align}
f(t) &= \hat{A}\cos(\omega t + \varphi_a) \\
&= \frac{1}{2} \underbrace{\hat{A} e^{j \varphi_a}}_{Phasor} e^{j \omega t}
+ \frac{1}{2} \underbrace{\hat{A} e^{-j\varphi_a}}_{Phasor} e^{-j \omega t} \\
&= \frac{1}{2}\underline{\hat{A}} e^{j \omega t} + \frac{1}{2}\underline{\hat{A}}^{*} e^{-j \omega t} \\
&= \mathfrak{Re}\left\{\underline{\hat{A}}e^{j\omega t}\right\} \\
&= \mathfrak{Re}\left\{\hat{A}e^{j \varphi_a}e^{j \omega t}\right\} \\
&= \mathfrak{Re}\left\{\hat{A}\left( \cos(\omega t + \varphi_a) + j \sin(\omega t + \varphi_a)\right)\right\}
\end{align}
$$

<!-- !split -->
### Funktionaltransformation (4) - Definition
$$
\begin{align}
\underline{f}(t) &= \underline{\hat{A}} e^{j\omega t} = \hat{A} e^{j \varphi_a} e^{j \omega t}, \quad \mbox{rotierender Zeiger, komplexer Momentanwert} \\
\underline{f}(0) &= \underline{\hat{A}} = \hat{A} e^{j\varphi_a}, \quad \mbox{ruhender Zeiger, komplexer Scheitelwert, Phasor} \\
\underline{A} &= \frac{1}{\sqrt{2}} \hat{A} e^{j \varphi_a}, \quad \mbox{komplexer Effektivwert}
\end{align}
$$

<!-- !split -->
### Zeigerdarstellung (1)

<!-- <img src="fig/lec_3-zeigerdarstellung.png" width="400"> -->
![](fig/lec_3-zeigerdarstellung.png)

<!-- !split -->
### Zeigerdarstellung (2) &ndash; Grundschaltelemente
* Sinusgröße $i(t) = I \sqrt{2} \sin(\omega t + \varphi)$
* da alle in einer Schaltung vorkommenen Sinusgrößen (meist) dieselbe Kreisfrequenz $\omega$ aufweisen, kann man diese außer Acht lassen und die Zeiger als stehend betrachten;
* Der Faktor 2 in den Scheitelwerten aller Sinusgrößen wird nicht berücksichtigt und man arbeitet mit Effektivwerten, [...], vor allem zur Bestimmung von Leistungen. Man reduziert also die Zeigerlängen im Maßstab $\frac{1}{\sqrt{2}}$.

<!-- !split -->
