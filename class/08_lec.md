# Spulen und Übertrager

```{note}
Die Inhalte sind dem gleichnamigen Kapitel 9 von {cite}`reisch2007` entnommen worden.
```

Spulen dienen der Verwirklichung von Induktivitäten. Übertrager und Transformatoren nutzen die induktive Kopplung
von i. allg. galvanisch getrennten Spulen zur Spannungstransformation und zum Übertragen von elektrischer
Leistung. Spulen und Übertrager werden in der Elektronik hauptsa ̈chlich zum Aufbau von Stromversorgungen, galvanischen 
Trennungen (z\.B\. Trennverstärker) und bei der Verwirklichung von Übertragern (z.B. Filter) mit definiertem
Frequenzgang verwendet.


Im Gegensatz zu Kondensatoren und Widerständen stehen Spulen häufig nicht als fertige Bauelemente zur Verfügung. Der
Anwender hat die Auswahl unter einer großen Fülle magnetischer Werkstoffe, Kernformen und Spulenaufbauten. Der
Entwurf von Spulen und Übertragern – insbesondere für den Bereich hoher Frequenzen – erfordert deshalb eine Vielzahl
von material- und damit herstellerspezifischen Angaben, deren Wiedergabe den Rahmen [...] dieser Veranstaltung sprengen
würde.

## Physikalische Grundlagen

Jeder von einem Strom durchflossene Leiter erzeugt ein magnetisches Feld der Feldstärke $\mathbf{H}$. Die Einheit der
magnetischen Feldstärke im SI-System ist A/m. Im Vakuum ist $\mathbf{H}$ mit der magnetischen Flußdichte $\mathbf{B}$
verknüpft über $\mathbf{B} = \mu_0 \mathbf{H}$ wobei $\mu_0$ = $4 \pi 10^{-7}$ Vs/Am = $4 \pi$ nH/cm die magnetische
Feldkonstante (Induktionskonstante) bezeichnet. Die Einheit der magnetischen Flußdichte ist Tesla (1T = 1Vs/m2).1 Durch
Kernmaterialien mit ferromagnetischen oder ferrimagnetischen Eigenschaften wird in technischen Spulen und Übertragern
häufig die magnetischen Flußdichte $\mathbf{B}$ erhöht. Durch die magnetische Polarisation dieser Materialien im Feld 
$\mathbf{H}$ ist die magnetische Flußdichte im Kern um die Permeabilitätszahl $\mu_r$ erhöht 
$\mathbf{B} = \mu_0 \mu_r \mathbf{H} = \mu \mathbf{H}$. Der Wert von $\mu_r$ ist aussteuerungsabhängig; bei geringer
Aussteuerung liegt $\mu_r$ für typische Spulenkerne im Bereich $10^2$ bis $10^4$.

```{figure} ../images/class/lec8s1.pdf
:width: 400px
:name: fig:lec8s1

$B(H)$-Hysteresekurve, Rayleigh-Schleife
```


```{admonition} Magnetisierung
Wird ein Stoff in ein Magnetfeld gebracht, so erfolgt eine Magnetisierung (magnetische Polarisation); diese kann durch 
die Bildung bzw. Ausrichtung magnetischer Dipole im atomaren Bereich erklärt werden und bewirkt eine Erhöhung der
magnetischen Flußdichte

$$
\mathbf{B} = \mu_0 (\mathbf{H} + \mathbf{M}) = \mu_0 \mathbf{H} + \mathbf{J}.
$$

Die Größe $\mathbf{M}$ wird dabei als *Magnetisierung* und die Größe $\mathbf{J}$ als *magnetische Polarisation* des
Stoffs bezeichnet.
```

```{admonition} Permeabilität
Die durch (9.3) definierte relative Permeabilität $\mu_r = B/\mu_0 H$ ferro- oder ferrimagnetischer Materialien ist
nichtlinear von der magnetischen Feldstärke abhängig. Bei kleinen Aussteuerungen um den Arbeitspunkt durchläuft *B* als
Funktion von *H* eine kleine linsenförmige Hystereseschleife. Der Zusammenhang zwischen der Änderung $\Delta B$ der
magnetischen Induktion und der Änderung $\Delta H$ der magnetischen Feldstärke wird durch die 
*Überlagerungspermeabilität* $\mu_{\Delta}$ beschrieben. Diese ist definiert als

$$
\mu_{\Delta} = \frac{1}{\mu_0} \frac{\Delta B}{\Delta H}
$$

und vom Hub $\Delta H$ abhängig. Häufig genügt es, den Grenzfall sehr kleiner Hübe $\Delta H$ zu betrachten. In diesem
Fall geht $\mu_{\Delta}$ über in die *reversible Permeabilität*

$$
\mu_{rev} = \frac{1}{\mu_0} \lim_{\Delta H \to 0} \frac{\Delta B}{\Delta H}
$$
```

```{admonition} Durchflutungs- und Induktionsgesetz
Durch Integration der magnetischen Flußdichte über eine Fläche $A$ folgt der diese Fläche durchsetzende magnetische
Fluß

$$
\phi = \iint \mathbf{B} \cdot d\mathbf{A}.
$$

Der Zusammenhang zwischen Stromfluß und magnetischer Feldstärke wird durch das *Durchflutungsgesetz* (1. Maxwellsche
Gleichung) beschrieben. Dieses besagt, daß das Linienintegral über der magnetischen Feldstärke längs einer
beliebigen geschlossenen Kurve $C$ gleich dem diese Schleife durchsetzenden Strom $i$ ist,

$$
\oint_C \mathbf{H} \cdot d\mathbf{s} = i.
$$

Ändert sich der eine geschlossene Schleife $C$ durchsetzende magnetische Fluß $\phi$, so wird in der Schleife eine
Spannung $v$ induziert; induzierte Spannung und Flußänderung sind durch das *Induktionsgesetz* (2. Maxwellsche Gleichung)

$$
v = \oint_C \mathbf{E} \cdot d\mathbf{s} = -\frac{d\phi}{dt}
$$

verknüpft. Der durch die induzierte Spannung hervorgerufene Strom ist nach der *Lenzschen Regel* so gerichtet, daß er
seiner Ursache – der Flußänderung – entgegenwirkt. Gleichung (9.12) gilt auch fürr nichtlineare Induktivitäten, wie
Spulen mit Eisenkern, die bis in den Sättigungsbereich hinein ausgesteuert werden. Bei schwacher Aussteuerung kann 
häufig ein linearer Zusammenhang zwischen Fluß und Strom angenommen werden. Sofern nur eine Leiterschleife vorliegt gilt
dann $v = L di/dt$, wobei $L$ den Induktivitätswert – genauer den *Selbstinduktionskoeffizienten* – des Leiters bezeichnet.
```


```{admonition} Induktionskoeffizienten ausgewählter Leiterformen
Die Induktionskoeffizienten für nur einen Leiter, bspw. *Zylinderpulen*, *Ringkernspulen*, *Drahtringe* und *gedruckte Spiulen* lassen sich aus der Energie des magnetischen Feldes

$$
W = \frac{1}{2} \int \mathbf{H} \cdot \mathbf{B} d^3 x = \frac{1}{2} L i^2
$$

berechnen. Mit $\mathbf{B} = \mu\mathbf{H}$ folgt

$$
L = \frac{\mu}{i^2} \int \vert \mathbf{H}\vert^2 d^3 x .
$$
```

```{figure} ../images/class/lec8s3.pdf
:width: 400px
:name: fig:lec8s3

(a) Zylinderspule, (b) Ringkernspule und \(c\) Drahtring
```

```{figure} ../images/class/lec8s4.pdf
:width: 200px
:name: fig:lec8s4

Gedruckte Spule (PCB)
```



## Spulen

Spulen werden gewöhnlich als Drahtwicklung auf einem Spulenkörper aus Isoliermaterial ausgeführt. Häufig dient ein
Kern aus einem hochpermeablen Material (Eisen, Ferrit) der Erhöhung des Induktivitätswerts – Spulen ohne derartigen
Kern werden als *Luftspulen* bezeichnet.


```{figure} ../images/class/lec8s2.pdf
:width: 400px
:name: fig:lec8s2

Ersatzschaltung einer Spule.
```

Abbildung {numref}`fig:lec8s2` zeigt eine Ersatzschaltung für eine Spule, die bei Kleinsignalaussteuerung verwendet
werden kann. Da die Netzwerkelemente arbeitspunktabhängig sind, wurden kleine Buchstaben verwendet. Wie in Gl. (9.33)
gezeigt wird, lassen sich Ummagnetisierungsverluste einer Spule mit Kern durch den *Kernverlustwiderstand* $r_{ks}$
in Serie zu einer reinen Induktivität $l_s$ erfassen. Zusätzlich zu $r_{ks}$ ist der *Drahtwiderstand* $r_{Cu}$
zu berücksichtigen, so daß

$$
r_s = r_{Cu} + r_{ks}.
$$

Parallel hierzu liegt die Wicklungskapazität $c_p$; dielektrische Verluste in der Isolation werden durch den zusa ̈tzlich
parallel geschalteten Widerstand $r_p$ beschrieben. Mit dem Verlustfaktor $\tan \delta$ der Isolierschichten gilt
demnach $1/r_p \approx \omega c_p \tan \delta$. 

```{admonition} Impedanz, Eigenresonanz
Die Impedanz \underline{Z} der Spule errechnet sich aus der Ersatzschaltung {numref}`fig:lec8s2` zu

\begin{align}
\frac{1}{\underline{Z}} &= \frac{1}{r_p} + j\omega c_p + \frac{1}{j \omega l_s+r_s} \\ 
&= \frac{−j\omega l_s (1−c_p r_s^2/l_s − \omega^2 l_s c_p) 
+ r_s + (r_s^2 + \omega^2 l_s^2) \omega c_p \tan \delta}
{r_s^2 + \omega^2 l_s^2}.
\end{align}
```

Der prinzipielle Verlauf des Scheinwiderstands $\underline{Z}$ als Funktion der Frequenz ist in Abb. {numref}`fig:lec8s2`
in doppeltlogarithmischer Auftragung dargestellt. Bei sehr kleinen Frequenzen ist $\underline{Z}$ durch den ohmschen
Widerstand der Wicklung bestimmt. Mit zunehmender Frequenz dominiert dann der induktive Anteil: $\underline{Z}$ steigt
proportional zu $f$ an. Für Frequenzen $f > f_r$ dominiert der kapazitive Parallelleitwert: Hier fällt $\underline{Z}$
proportional zu $1/f$ ab.

```{admonition} Verlustfaktor, Spulengüte
Der Verlustfaktor $\tan \delta_L$ der Spule ist defniert als das Verhältnis von Real- zu Imaginärteil der Impedanz

$$
\tan \delta_L = \frac{\operatorname{Re}(\underline{Z})}{\operatorname{Im}(\underline{Z})} = \frac{1}{Q_L};
$$

sein Kehrwert $Q_L$ wird als *Spulengüte* bezeichnet.
```

Mit Luftspulen lassen sich Güten größer als 1000 verwirklichen; bei Spulen mit Kern liegen die Werte niedriger – bei
sorgfältiger Dimensionierung sind jedoch Güten von mehr als 500 erreichbar. Trennung von Gl. (9.25) in Real- und
Imaginärteil liefert für den Verlustfaktor 

$$
\tan \delta_L \approx \frac{r_s}{2 \pi f l_s} \frac{1}{1−(f/f_r)^2} + \frac{(f/f_r)}{1−(f/f_r)^2} \tan
\delta_{\epsilon},
$$

wobei $f_r \approx 1 / 2 \pi l_s c_p$ die (Eigen-)*Resonanzfrequenz* der Spule bezeichnet und 
$\omega r_s c_p \tan \delta_{\epsilon} << 1$ sowie $c_p r_s^2/l_s << 1$ angenommen wurde.



### Anwendungsbeispiele

#### Dämpfungsperlen
Dämpfungsperlen sind kleine zylindrische Ferritkörper mit einer Bohrung, durch die ein Draht geführt werden kann. Sie
weisen einen Durchmesser von wenigen Millimetern auf und werden gewöhnlich über einen Anschlußdraht eines bedrahteten
Bauteils – z.B. Basisanschluß eines Transistors – gesteckt.

```{figure} ../images/class/lec8s5.pdf
:width: 400px
:name: fig:lec8s5

Dämpfungsperle
```

Durch die Dämpfungsperle wird die Impedanz des Anschlußdrahts erhöht. Ist diese ohne Dämpfungsperle durch 
$R_0 + j\omega L_0$ gegeben, so folgt mit der komplexen Permeabilität $\mu_r = \mu_s' − j\mu_s''$ des 
Materials überschlagsmäßig für die Impedanz $\underline{Z}$ des Anschlußdrahts bei der Kreisfrequenz $\omega$

$$
\underline{Z} \approx R +j \omega L (\mu_s' −j\mu_s'') = R_0 + \omega \mu_s'' L_0 + j \omega \mu_s' L_0.
$$

Dämpfungsperlen verringern auf kostengünstige Weise hochfrequente Stromanteile ohne störende Serienwiderstände im
NF-Bereich zu verursachen. Sie werden zur Unterdrückung von Überschwingern bei Schaltvorgängen, zur Dämpfung
selbsterregter Schwingungen aufgrund parasitärer Rückkopplungen in Verstärkerschaltungen sowie zur Unterdrückung
hochfrequenter Rauschanteile eingesetzt. Ihre Wirksamkeit beruht darauf, daß sie im relevanten Frequenzbereich eine
nennenswerten Serienimpedanz hervorrufen. [...]


#### Drosselspulen

Drosselspulen sollen den Gleichanteil $I_L$ des sie durchfließenden Stroms möglichst wenig, den Wechselanteil möglichst
stark dämpfen (drosseln). Der Kern einer Drosselspule ist deshalb in der Regel mit einem starken Gleichfeld belastet,
dem ein schwaches Wechselfeld überlagert ist. Die Verluste in der Drosselspule sind somit vorwiegend Kupferverluste, da
der dominierende Gleichanteil keine Kernverluste verursacht; vgl. auch {cite}`schlienz2020` Kap. 2 - Abwärtswandler.

```{figure} ../images/class/lec8s6.pdf
:width: 400px
:name: fig:lec8s6

Schaltnetzteil mit Drossel-Abwärtswandler
```

#### Power Management Integrated Circuits (PMICs)

```{figure} ../images/class/lec8sPMICs.pdf
:width: 400px
:name: fig:lec8sPMICs

```

"Power management integrated circuits (PMICs) are essential in today's electronic devices. They manage power delivery
and consumption, provide efficient power supplies, and drive power switches that control actuators and motors, as
illustrated in Fig. {nameref}`fig:lec8sPMICs` PMICs can be integrated into complex integrated circuits (ICs) or
implemented as dedicated ICs. In this book, the term PMIC will refer to any type of power integrated circuit. 

The importance of PMICs has grown significantly in recent years, driving innovation and progress in various industries,
from consumer electronics to automotive and industrial applications. With the progress of machine learning and
artificial intelligence (AI), intelligent power management is critical to supplying complex processors and sensors. 

PMICs have enabled the development of smaller, more energy-efficient, and reliable electronic solutions. They also play
an essential role in environmental aspects and sustainability. By regulating the power supply of electronic devices,
PMICs can reduce energy consumption and carbon emissions. Moreover, PMICs are crucial for the development of renewable
energies, such as solar and wind power, by enabling efficient power conversion and management." {cite}`wicht2024`

* IoT Nodes and Energy Harvesting

* Portable Devices, Smartphones, and Wearables

* Universal Serial Bus (USB)

* Drones

* Telecommunication Infrastructures

* E-Bikes

* Automotive

* Data-Centers


## Transformatoren und Übertrager

Durch magnetische Verkopplung zweier galvanisch getrennter Stromkreise kann zwischen diesen Leistung übertragen
werden. Dies wird angewendet in *Transformatoren* (Trafos), die der Umsetzung von Spannungs- bzw. Stromwerten dienen
sowie in *Übertragern* und *Trenntrafos* zur galvanischen Trennung von Wechselstromkreisen, Impedanzanpassung, Unterdrückung
von Gleichanteilen und zum Unterbrechen von Erdschleifen. Die Verkopplung der Induktivitäten wird gewöhnlich 
durch einen gemeinsamen Kern erhöht, der – zur Verbesserung der Linearität – meist einen Luftspalt enthält.

```{figure} ../images/class/lec8s7.pdf
:width: 400px
:name: fig:lec8s4

Haupt- und Streuflüsse im Transformator
```


Abbildung {nameref}`fig:lec8s4` zeigt den prinzipiellen Aufbau eines Transformators bzw. Übertragers mit einer 
primärseitigen Wicklung der Windungszahl $n_1$ und einer sekundärseitigen Wicklung der Windungszahl $n_2$.
Wird die primärseitige Spule von einem Strom $i_1$ durchflossen, so setzt sich der erzeugte Fluß

$$
\phi_{11} = \phi_{1\sigma} + \phi_{12}
$$

aus dem primären Streufluß $\phi_{1\sigma}$ und dem die Sekundärwicklung durchsetzenden Fluß $\phi_{12}$ zusammen.
Entsprechend läßt sich der von der Sekundärwicklung erzeugte Fluß $\phi_{22}$ in den sekundären Streufluß
$\phi_{2\sigma}$ und den die Primärwicklung durchsetzenden Fluß $\phi_{21}$ zerlegen 

$$
\phi_{22} = \phi_{2\sigma} + \phi_{21}.
$$

Der die Primärwicklung durchsetzende Fluß $\phi_1$ und der die Sekundärwicklung durchsetzende Fluß $\phi_2$ sind damit

$$
\phi_1 = \phi_{11} + \phi_{21}  \quad\text{und}\quad  \phi_2 = \phi_{22} + \phi_{12}.
$$

Unter Berücksichtigung der Spannungsabfälle an den Wicklungen folgt aus dem Induktionsgesetz für die 
Spannungsabfälle in Primär- und Sekundärkreis

\begin{align}
\underline{v}_1 &= R_{Cu1} i_1 + n_1 \frac{d\phi_1}{dt} \\
\underline{v}_2 &= R_{Cu2} i_2 + n_2 \frac{d\phi_2}{dt}. 
\end{align}

Die Beziehungen (45) gelten allgemein und sind auch bei Aussteuerung des Kernmaterials in den Sättigungsbereich
anwendbar. Bei Aussteuerung mit geringer Amplitude besteht annähernd ein linearer Zusammenhang zwischen den Flüssen und
den Spulenströmen

$$
\phi_{11} = L_1 i_1,\quad \phi_{12} = M i_1,\quad \phi_21 = M i_2\quad\text{und}\quad \phi_{22} = L_2 i_2. 
$$

Dabei bezeichnet $L_1 = L_{11}$ den (Selbst-)Induktionskoeffizienten der Primärwicklung, $M = L_{12}$ den
Gegeninduktionskoeffizienten von Primär- und Sekundärwicklung und $L_2 = L_{22}$ den
(Selbst-)Induktionskoeffizienten der Sekundärwicklung. Durch Einsetzen in die Gln. (9.68) und (9.69) 
ergeben sich die sog. 

```{admonition} Transformatorgleichungen
\begin{align}
\underline{v}_1 &= R_{Cu1} i_1 + L_1 \frac{di_1}{dt} + M \frac{di_2}{dt} \\
\underline{v}_2 &= R_{Cu2} i_2 + L_2 \frac{di_2}{dt} + M \frac{di_1}{dt} 
\end{align}
```

Diese Beziehungen gelten nur bei Kleinsignalaussteuerung ohne Vormagnetisierung im Bereich niederer Frequenzen.
Bei höheren Frequenzen tritt eine Phasenverschiebung zwischen magnetischem Feld (bzw. Spulenstrom) und magnetischer 
Polarisation auf.

```{figure} ../images/class/lec8s8.pdf
:width: 400px
:name: fig:lec8s8

Schaltsymbol zweier gekoppelter Induktivitäten
```


### Der verlustlose Übertrager

Bei sinusförmiger Erregung folgt unter Vernachlässigung der Drahtwiderstände ($R_{Cu1} = R_{Cu2} = 0$) aus den
*Transformatorgleichungen* für die komplexen Zeiger der Wechselspannungsanteile an Primär- und Sekundärwicklung
(Abb. {nameref}`fig:lec8s8`) 

\begin{align}
\underline{v}_1 &= j\omega L_1 i_1 + j\omega M i_2 \\
\underline{v}_2 &= j\omega M i_1 + j\omega L_2 i_2
\end{align}

Mit dem *Kopplungsfaktor* $k = M/L_1 L_2$ läßt sich dies umformen zu ­

\begin{align}
\underline{v}_1 &= \frac{1}{k} \sqrt{\frac{L_1}{L_2}} \cdot \underline{v}_2 − j\omega \frac{1 −k^2}{k} \sqrt{L_1 L_2} \cdot i_2  \\
i_1 &= \frac{1}{j\omega k \sqrt{L_1 L_2}} \cdot \underline{v}_2 = \frac{1}{k} \sqrt{\frac{L_1}{L_2}} \cdot i_2
\end{align}

Bei belastetem Ausgang gilt $i_2 = −\underline{v}_2/Z_L$; für den *Spannungsübertragungsfaktor* folgt damit aus Gl. (48)

\begin{equation}
\frac{\underline{v}_1}{\underline{v}_2} = \frac{1}{k} \sqrt{\frac{L_1}{L_2}} + j\omega \frac{1 - k^2}{k} \sqrt{L_1 L_2}
\frac{1}{\underline{Z}_L}.
\end{equation}


```{admonition} Vollständige Kopplung 
Im Fall idealer Kopplung ($\vert k \vert = 1$) verschwindet der zweite Term auf der rechten Seite von
Gl. (49); das Spannungsverhältnis ist dann

$$
\underline{v}_1/\underline{v}_2 = L_1/L_2 = ü.
$$

Die Größe ü wird dabei als *Übertragungsverhältnis* bezeichnet.
Zwischen den Zeigern der Ströme besteht nach Gl. (9.75) der Zusammenhang 

$$­
\underline{i}_1 = -\sqrt{\frac{L_2}{L_1}} \cdot \underline{i}_1 + \frac{1}{j\omega \sqrt{L_1 L_2}} \cdot \underline{v}_2
$$

Im Grenzfall des *idealen Übertragers* mit $L_1 = ü^2 L_2 \to \infty$ führt dies auf
­
$$
\underline{i}_1/\underline{i}_2 = −1/ü.
$$
```


```{figure} ../images/class/lec8s9.pdf
:width: 400px
:name: fig:lec8s9

Idealer Übertrager. (a) Schaltsymbol und (b) Impedanztransformation mit idealem Übertrager
```

Abbildung {numref}`fig:lec8s9`(a) zeigt des Netzwerksymbol eines idealen Übertragers. Für diesen gelten die folgenden
Beziehungen zwischen den Zeigern von Strom und Spannung an Ein- und Ausgang 

$$
\begin{pmatrix}
\underline{v}_1 \\
\underline{i}_1
\end{pmatrix}
= 
\begin{pmatrix}
ü & 0 \\
0 & -1/ü
\end{pmatrix}
\begin{pmatrix}
\underline{v}_2 \\
\underline{i}_2
\end{pmatrix}
$$

Besitzen die beiden Wicklungen des Übertragers denselben $A_L$-Wert, so ist $L_1 = A_L n^2_1$ und $L_2 = A_L n^2_2$,
wobei $n_1$ und $n_2$ die Windungszahlen der jeweiligen Wicklung bezeichnen. In Gl. (9.76) des
Spannungsübertragungsfaktors eingesetzt folgt

$$
ü = n_1/n_2,
$$

d.h. im idealen Übertrager ist das Übertragungsverhältnis ü gleich dem Verhältnis der jeweiligen Windungszahlen. 


```{admonition} Impedanztransformation
Wird der Ausgang eines idealen Übertragers mit der Impedanz $\underline{Z}_L$ beschaltet
(Abb. {nameref}`fig:lec8s9`(b)), so gilt $\underline{v}_2/i_2 = −\underline{Z}_L$. Für die Eingangsimpedanz
$\underline{Z}_i$ des Übertragers folgt damit 

$$
\underline{Z}_i = \frac{\underline{v}_1}{\underline{i}_1} 
= \frac{\underline{v}_1}{\underline{v}_2} 
\cdot \frac{\underline{v}_2}{\underline{i}_2}
\cdot \frac{\underline{i}_2}{\underline{i}_1}
= ü^2 \underline{Z}_L,
$$

d.h. der ideale Übertrager mit vollständiger Kopplung "transformiert" Impedanzen im Verhältnis ü$^2$ von der 
Sekundärseite auf die Primärseite.
```


### Realer (verlustbehafteter) Übertrager

In realen Übertragern ist der Kopplungsfaktor von eins verschieden, da aufgrund von Streufeldern der die eine Spule
durchsetzende Fluß die andere nicht vollständig durchsetzt.

```{figure} ../images/class/lec8s10.pdf
:width: 400px
:name: fig:lec8s10

T-Ersatzschaltung
```

Die Transformatorgleichungen lassen sich in die in Abb. {nameref}`fig:lec8s10` dargestellte T-Ersatzschaltung
überführen. Durch Anwenden des Maschensatzes folgt sofort

\begin{align}
\underline{v}_1 &= j\omega (L_1−M) \underline{i}_1 + j\omega M(\underline{i}_1+\underline{i}_2) = j\omega L_1
\underline{i}_1 + j\omega M \underline{i}_2 \\
\underline{v}_2 &= j\omega (L_2−M) \underline{i}_2 + j\omega M(\underline{i}_1+\underline{i}_2) = j\omega L_2
\underline{i}_2 + j\omega M \underline{i}_1
\end{align}

Das Verhalten des Übertragers kann demnach durch drei verschaltete Induktivitäten, die beiden Längsinduktivitäten
$L_1 − M$ und $L_2 − M$ sowie die Gegeninduktivität $M$ beschrieben werden. Für Kopplungsfaktoren von annähernd 
eins gilt $M \approx \sqrt{L_1 L_1}$; d.h. zumindest eine der Längsinduktivitäten ist negativ. Die T-Ersatzschaltung ist
aus diesem Grund als rein formales Netzwerk anzusehen, das die Transformatorgleichungen korrekt erfaßt – eine 
physikalisch anschauliche Interpretation der Netzwerkelemente besteht jedoch nicht. 

```{figure} ../images/class/lec8s11.pdf
:width: 400px
:name: fig:lec8s11

Ersatzschaltung eines unvollständig gekoppelten Übertragers
```

Abbildung 9.28 zeigt die Ersatzschaltung eines unvollständig gekoppelten $(k < 1)$, ansonsten verlustfreien 
Übertragers. Dabei wird von der Induktivität $L_1$ ein Streuanteil $\sigma L_1$ abgespalten; der 

```{admonition} Streugrad $\sigma$
des Übertragers ist definiert als 

$$
\sigma = 1 − k^2.
$$

```

Lediglich der an $k^2 L_1$ auftretende Spannungsabfall wirkt als Eingangsspannung des idealen Übertragers mit 
Übertragungsverältnis $k$ü. Die Netzwerkgleichungen für diese Ersatzschaltung lauten 

$$
\underline{v}'_1 = \underline{v}_1 − j\omega \sigma L_1 \underline{i}_1 
= k ü \underline{v}_2, \quad \underline{i}_1 
= \underline{v}_1 + \underline{i}_1 j\omega k^2 L_1
$$

und $\underline{i}_1 = −\underline{i}_2/k ü$. Durch Eliminieren von $\underline{v}_1$ und $\underline{i}_1$
lassen sich diese in die Gln. (48) überführen, wobei die Details der Rechnung dem Leser als Übungsaufgabe
überlassen werden.

```{figure} ../images/class/lec8s12.pdf
:width: 400px
:name: fig:lec8s12

(a) Parallel- und (b) Serienersatzschaltung eines verlustbehafteten Übertragers
```


### Übertragungsfaktor

```{figure} ../images/class/lec8s13.pdf
:width: 400px
:name: fig:lec8s13

Parallelersatzschaltung eines verlustbehafteten Übertragers mit beschaltetem Ausgang
```

Übertrager sollen eine formtreue Signalübertragung aufweisen, was erhöhte Anforderungen an die Linearität bedingt
und eine hohe Bandbreite voraussetzt. Für eine Untersuchung des Frequenzgangs von Übertragern wird die in
Abb. {nameref}`fig:lec8s13` gezeigte Ersatzschaltung herangezogen, wobei die durch $C_3$ und $C_4$ beschriebene
kapazitive Kopplung zwischen Primär- und Sekundärwicklung (vgl. Abb. {nameref}`fig:lec8s12` (a)) vernachlässigt wird.

Der Ausgang des idealen Übertragers in der Ersatzschaltung Abb. {nameref}`fig:lec8s13` ist mit der Impedanz

$$
\underline{Z}_x = r_{Cu2} + \frac{\underline{Z}_L}{1 + j\omega C_2 \underline{Z}_L}
$$

beschaltet, die eingangseitig wie eine Impedanz $k^2 ü^2 \underline{Z}_x$ wirkt. Zur Berechnung der Amplitude von 
$\underline{v}'_1 kann demnach die in Abb. {nameref}`fig:lec8s14` dargestellte Ersatzschaltung herangezogen werden.

```{figure} ../images/class/lec8s14.pdf
:width: 400px
:name: fig:lec8s14

Zusammenfassung und Transformation der Sekundärseite
```

Nach der Spannungsteilerregel folgt sofort

\begin{align}
\frac{\underline{v}'_1}{\underline{v}_1} &= \frac{j \omega k^2L_1 || r_{kp} || k^2 ü^2 \underline{Z}_x}{r_{Cu1} +
j\omega \sigma L_1 + j\omega k^2 L_1 || r_{kp} || k^2 ü^2 \underline{Z}_x} \\ 
&= \frac{1}{1 + (r_{Cu1} + j\omega \sigma L_1) 
\left( \frac{1}{j\omega k^2 L_1} + \frac{1}{r_{kp}} + \frac{1}{k^2 ü^2 \underline{Z}_L} \right)}
\end{align}


Ebenfalls durch Anwenden der Spannungsteilerregel erhält man

\begin{align}
\frac{\underline{v}_2}{\underline{v}'_2} &= \frac{\underline{Z}_L || (j \omega C_2)^{-1}}{\underline{Z}_x} \\
&= \frac{\underline{Z}_L}{\underline{Z}_L + r_{Cu2}(1 + j \omega C_2 \underline{Z}_L)}.
\end{align}


Mit dem Übertragungsverhältnis $k ü$ des idealen Übertragers folgt für den Spannungsübertragungsfaktor

$$
\underline{H}_v = \frac{\underline{v}_2}{\underline{v}_1} = \frac{1}{k ü} \cdot \frac{\underline{v}_2}{\underline{v}'_2}
\cdot \frac{\underline{v}'_1}{\underline{v}_1}
$$

Im Folgenden wird der Fall einer rein ohmschen Last $\underline{Z}_L = R_L$ betrachtet; unter diesen Umständen gilt

$$
\underline{Z}_x = r_{Cu2} + \frac{R_L}{1 = j\omega C_2 R_L} \quad\text{und}\quad 
\frac{\underline{v}_2}{\underline{v}'_2} = \frac{R_L}{R_L + r_{Cu2}(1 + j\omega C_2 R_L)}.
$$

Der Spannungsübertragungsfaktor ergibt sich hiermit und durch Ausmultiplizieren in der Form

$$
\underline{H}_v = \frac{A_{v0}}{1 − j f_u/f + jf/f_o − f^2/f^2_r}
$$

was ein Bandpaßverhalten beschreibt.


### Leistungsübertrager, Transformatoren

_Beim Transformator steht die maximal übertragbare Leistung im Vordergrund – Signalverformungen sind zulässig._ 
Aufgrund der Proportionalität der in die Sekundärwicklung induzierten Spannung zur Frequenz $f$ (bei konstantem
Induktionshub $\Delta B$) steigt die in einem Transformator von der Primärseite auf die Sekundärseite übertragbare
Leistung annähernd proportional zu $f$ an. Unter Vernachlässigung der Spannungsabfälle an den Wicklungswiderständen,
Streuinduktivitäten und der Vormagnetisierung gilt die folgende Näherung für die übertragene Leistung 

$$
P = C \cdot \Delta B \cdot J \cdot A_W A_e \cdot F_{Cu} \cdot f.
$$

Dabei bezeichnet $C$ einen von der Betriebsart abhängigen Faktor, der typischerweise im Bereich $0.6 < C < 1$ liegt und
$J$ die Stromdichte in der Wicklung. Der Induktionshub $\Delta B$ ist bei niedrigen Frequenzen durch Sättigungseffekte
und bei hohen Frequenzen durch die Erwärmung des Kerns aufgrund von Kernverlusten beschränkt. Die Stromdichte $J$ wird
durch die Erwärmung der Wicklung aufgrund von Kupferverlusten begrenzt. 

_Der wirksame Kernquerschnitt sollte im Sinne geringer Kosten und geringen Gewichts möglichst klein sein. Eine
Steigerung der übertragbaren Leistung ist demnach nur durch eine Anhebung der Frequenz möglich. Mit zunehmender
Schaltfrequenz kann das Gewicht – und damit auch der Preis – von Stromversorgungen und DC-DC-Wandlern gesenkt werden._ 

Ein 100 W-Netzteil, realisiert mit einem bei Netzfrequenz (50 Hz) arbeitenden Transformator, hat eine Masse in der
Größenordnung von 10 kg; durch Erhöhen der Schaltfrequenz auf 50 kHz kann diese auf unter 1 kg gesenkt werden, bei 
500 kHz sind weniger als 400 g erreichbar. Wesentlich für diese Anhebung der Schaltfrequenz war die Entwicklung 
spezieller, verlustarmer Ferritwerkstoffe; vgl. mit {cite}`zach2022`, Kap. 15.


## Literaturverzeichnis

```{bibliography}
:filter: docname in docnames
```
