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
$\mathBF{H}$ ist die magnetische Flußdichte im Kern um die Permeabilitätszahl $\mu_r$ erhöht 
$\mathbf{B} = \mu_0 \mu_r \mathbf{H} = \mu \mathbf{H}$. Der Wert von $\mu_r$ ist aussteuerungsabhängig; bei geringer
Aussteuerung liegt $\mu_r$ für typische Spulenkerne im Bereich $10^2$ -− $10^4$.

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
\mu_{rev} = \frac{1}{\mu_0} \limes_{\Delta H \rightarrow 0} \frac{\Delta B}{\Delta H}
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
\oint_C \mathBF{H} \cdot d\mathbf{s} = i.
$$

Ändert sich der eine geschlossene Schleife $C$ durchsetzende magnetische Fluß $\phi$, so wird in der Schleife eine
Spannung $v$ induziert; induzierte Spannung und Flußänderung sind durch das *Induktionsgesetz* (2. Maxwellsche Gleichung)

$$
v = \oint_C \mathbf{E} \cdot d\mathbf{s} = -\frac{d\phi}{dt} (9.12)
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

berechnen. Mit $\mathbf{B} = μ\mathfb{H}$ folgt

$$
L = \frac{\mu}{i^2} \int \vert \mathbf{H}\vert^2 d^3 x .
$$
```

```{figure} ../images/class/lec8s3.pdf
:width: 400px
:name: fig:lec8s3

(a) Zylinderspule, (b) Ringkernspule und (c) Drahtring
```

```{figure} ../images/class/lec8s4.pdf
:width: 400px
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
r_s = r_{Cu} + r_{ks}. (9.24)
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
{r_s^2 + \omega^2 l_s^2}. (9.25)
\end{align}
```

Der prinzipielle Verlauf des Scheinwiderstands $\underline{Z}$ als Funktion der Frequenz ist in Abb. {numref}`lec8s2`
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
\underline{Z} \apporx R +j \omega L (\mu_s' −j\mu_s'') = R_0 + \omega \mu_s'' L_0 + j \omega \mu_s' L_0.
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
der dominierende Gleichanteil keine Kernverluste verursacht.

```{figure} ../images/class/lec8s6.pdf
:width: 400px
:name: fig:lec8s6

Schaltnetzteil mit Drossel-Abwärtswandler
```

## Transformatoren und Übertrager

Durch magnetische Verkopplung zweier galvanisch getrennter Stromkrei- se kann zwischen diesen Leistung u ̈bertragen
werden. Dies wird angewen- det in Transformatoren (Trafos), die der Umsetzung von Spannungs- bzw. Stromwerten dienen
sowie in U ̈bertragern und Trenntrafos zur galvanischen Trennung von Wechselstromkreisen, Impedanzanpassung, Unterdru
̈ckung von Gleichanteilen und zum Unterbrechen von Erdschleifen. Die Verkopplung der Induktivita ̈ten wird gewo ̈hnlich
durch einen gemeinsamen Kern erho ̈ht, der – zur Verbesserung der Linearita ̈t – meist einen Luftspalt entha ̈lt.

```{figure} ../images/class/lec8s7.pdf
:width: 400px
:name: fig:lec8s4

Haupt- und Streuflüsse im Transformator
```

Entn. {cite}`reisch2007`


Abbildung 9.24 zeigt den prinzipiellen Aufbau eines Transformators bzw. U ̈bertragers mit einer prima ̈rseitigen Wicklung
der Windungszahl n1 und ei- ner sekunda ̈rseitigen Wicklung der Windungszahl n2. Wird die prima ̈rseitige Spule von einem
Strom i1 durchflossen, so setzt sich der erzeugte Fluß

$$
φ11 =φ1σ+φ12
$$

aus dem prim ̈aren Streufluß φ1σ und dem die Sekunda ̈rwicklung durch- setzenden Fluß φ12 zusammen. Entsprechend la ̈ßt
sich der von der Se- kunda ̈rwicklung erzeugte Fluß φ22 in den sekund ̈aren Streuf luß φ2σ und den die Prima ̈rwicklung
durchsetzenden Fluß φ21 zerlegen 

$$
φ22 =φ2σ+φ21.
$$

Der die Prima ̈rwicklung durchsetzende Fluß φ1 und der die Sekunda ̈rwicklung durchsetzende Fluß φ2 sind damit

$$
φ1 =φ11+φ21 und φ2 =φ22+φ12.
$$

Unter Beru ̈cksichtigung der Spannungsabfa ̈lle an den Wicklungen folgt aus dem Induktionsgesetz fu ̈r die Spannungsabfa
̈lle in Prima ̈r- und Sekunda ̈rkreis

$$
v1 = RCu1i1 + n1 dφ1/dt (9.68)
v2 = RCu2i2 + n2 dφ2/dt . (9.69)
$$

Die Beziehungen (9.68) und (9.69) gelten allgemein und sind auch bei Aus- steuerung des Kernmaterials in den Sa
̈ttigungsbereich anwendbar. Bei Aus- steuerung mit geringer Amplitude besteht anna ̈hernd ein linearer Zusammen- hang
zwischen den Flu ̈ssen und den Spulenstro ̈men 

$$
φ11=L1i1, φ12=Mi1, φ21=Mi2 und φ22=L2i2. n1 n2 n1 n2
$$

Dabei bezeichnet L1 = L11 den (Selbst-)Induktionskoeffizienten der Prima ̈r- wicklung, M = L12 den
Gegeninduktionskoeffizienten von Prima ̈r- und Se- kunda ̈rwicklung und L2 = L22 den (Selbst-)Induktionskoeffizienten der
Sekunda ̈rwicklung. Durch Einsetzen in die Gln. (9.68) und (9.69) ergeben sich die sog. Transformatorgleichungen

$$
v =R i+Ldi1+Mdi2 (9.70) 1 Cu1 1 1 dt dt
v =R i+Ldi2+Mdi1 (9.71) 2 Cu2 2 2 dt dt
$$

Diese Beziehungen gelten nur bei Kleinsignalaussteuerung ohne Vormagne- tisierung im Bereich niederer Frequenzen. Bei ho
̈heren Frequenzen tritt ei- ne Phasenverschiebung zwischen magnetischem Feld (bzw. Spulenstrom) und magnetischer
Polarisation auf.

```{figure} ../images/class/lec8s8.pdf
:width: 400px
:name: fig:lec8s8

Schaltsymbol zweier gekoppelter Induktivitäten
```


### Der verlustlose Übertrager

Bei sinusfo ̈rmiger Erregung folgt unter Vernachla ̈ssigung der Drahtwidersta ̈nde (RCu1 = RCu2 = 0) aus (9.70) und (9.71)
fu ̈r die komplexen Zeiger der Wech- selspannungsanteile an Prima ̈r- und Sekunda ̈rwicklung (Abb. 9.25)

$$
v1 = jωL1 i1 + jωM i2 (9.72)
v2 = jωM i1 + jωL2 i2
$$

Mit dem Kopplungsfaktor k = M/ L1L2 la ̈ßt sich dies umformen zu ­

v1 = 1 L1 ·v2 − jω1−k2 ­L1L2 ·i2 kL2 k
­
(9.74) (9.75)

Bei belastetem Ausgang gilt i2 = −v2/ZL; fu ̈r den Spannungsu ̈bertragungs- faktor folgt damit aus Gl. (9.74)

1 1L2
i1 = √ ·v2 − ·i2.
jωk L1L2 k L1
­
v1=1 L1+jω1−k2­LL1. (9.76)
v2kL2 k12ZL

Vollst ̈andige Kopplung. Im Fall idealer Kopplung (|k| = 1) verschwindet der zweite Term auf der rechten Seite von
Gl. (9.76); das Spannungsverha ̈ltnis ist dann

v1/v2 = L1/L2 = u ̈ . (9.77)

Die Gro ̈ße u ̈ wird dabei als U ̈bertragungsverh ̈altnis bezeichnet. Zwischen den Zeigern der Stro ̈me besteht nach
Gl. (9.75) der Zusammenhang 
­
L2 1
i1=− L·i2+jω√LL·v2.
112

Im Grenzfall des idealen U ̈bertragers mit L1 = u ̈ 2 L2 → ∞ fu ̈hrt dies auf
­
i1/i2 = −1/u ̈ . 

```{figure} ../images/class/lec8s9.pdf
:width: 400px
:name: fig:lec8s9

Idealer Übertrager. (a) Schaltsymbol und (b) Impedanztransformation mit idealem Übertrager
```

Abbildung 9.26a zeigt des Netzwerksymbol eines idealen U ̈bertragers. Fu ̈r diesen gelten die folgenden Beziehungen
zwischen den Zeigern von Strom und Spannung an Ein- und Ausgang 

v1 = u ̈ 0 v2 . (9.79) i1 0−1/u ̈i29.8. 

Transformatoren und U ̈bertrager 401 Besitzen die beiden Wicklungen des U ̈bertragers denselben AL-Wert, so ist L1 = ALn21
und L2 = ALn2, wobei n1 und n2 die Windungszahlen der jewei- ligen Wicklung bezeichnen. In Gl. (9.76) eingesetzt folgt 

u ̈ = n1/n2 , (9.80) 

d.h. im idealen U ̈bertrager ist das U ̈bertragungsverha ̈ltnis u ̈ gleich dem Verha ̈ltnis der jeweiligen Windungszahlen. 

```{admonition} Impedanztransformation
Wird der Ausgang eines idealen U ̈bertragers mit der Impedanz ZL beschaltet (Abb. 9.26 b), so gilt v2/i2 = −ZL. Fu ̈r die
Ein- gangsimpedanz Zi des U ̈bertragers folgt damit

$$
Zi=v1 =v1·v2·i2 =u ̈2ZL, (9.81) i1 v2i2i1
$$

d.h. der ideale U ̈bertrager mit vollsta ̈ndiger Kopplung ”transformiert“ Im- pedanzen im Verha ̈ltnis u ̈2 von der 
Sekundärseite auf die Primärseite.
```


### Realer (verlustbehafteter) Übertrager

### Übertragungsfaktor

U ̈bertrager sollen eine formtreue Signalu ̈bertragung aufweisen, was erho ̈hte Anfor- derungen an die Linearita ̈t bedingt
und eine hohe Bandbreite voraussetzt. Fu ̈r eine Untersuchung des Frequenzgangs von U ̈bertragern wird die in Abb.9.30
gezeigte Ersatzschaltung herangezogen, wobei die durch C3 und C4 beschriebene kapazitive Kopplung zwischen Prima ̈r- und
Sekunda ̈rwicklung vernachla ̈ssigt wird.

Der Ausgang des idealen U ̈bertragers in der Ersatzschaltung Abb.9.30 ist mit der Impedanz

$$
Zx = rCu2 + ZL 1 + jωC2ZL
$$

beschaltet, die eingangseitig wie eine Impedanz k2u ̈2 Zx wirkt. Zur Berechnung der Amplitude von v1 kann demnach die in
Abb.9.31 dargestellte Ersatzschaltung her- angezogen werden.

Nach der Spannungsteilerregel folgt sofort

$$
v 1 = j ω k 2 L 1 r k p k 2 u ̈ 2 Z x
v1 rCu1 + jωσL1 + jωk2L1 rkp k2u ̈2 Zx
= 1 . (9.83) 1+(rCu1 +jωσL1) 1 + 1 + 1
$$

jωk2L1 rkp k2u ̈2 Zx Ebenfalls durch Anwenden der Spannungsteilerregel erha ̈lt man

$$
v2 ZL (jωC2)−1 ZL
v = Z =Z+r (1+jωCZ). (9.84)
2 x LCu2 2L
$$

Mit dem U ̈bertragungsverha ̈ltnis ku ̈ des idealen U ̈bertragers folgt fu ̈r den Span- nungsu ̈bertragungsfaktor

$$
H =v2 = 1·v2·v1. (9.85) v v1 ku ̈v2v1
$$

### Leistungsübertrager, Transformatoren

Beim Tansformator steht die maximal u ̈bertragbare Leistung im Vordergrund – Signalverformungen sind zula ̈ssig. Aufgrund
der Proportionalita ̈t der in die Sekunda ̈rwicklung induzierten Spannung zur Frequenz f (bei konstantem In- duktionshub
∆B) steigt die in einem Transformator von der Prima ̈rseite auf die Sekunda ̈rseite u ̈bertragbare Leistung anna ̈hernd
proportional zu f an. Un- ter Vernachla ̈ssigung der Spannungsabfa ̈lle an den Wicklungswidersta ̈nden, Streuinduktivita
̈ten und der Vormagnetisierung gilt die folgende Na ̈herung fu ̈r die u ̈bertragene Leistung [17]

$$
P = C·∆B·J·AW·Ae·FCu·f∼f. (9.90)
$$

Dabei bezeichnet C einen von der Betriebsart abha ̈ngigen Faktor, der ty- pischerweise im Bereich 0.6 < C < 1 liegt und J
die Stromdichte in der Wicklung. Der Induktionshub ∆B ist bei niedrigen Frequenzen durch Sa ̈tti- gungseffekte17 und bei
hohen Frequenzen durch die Erwa ̈rmung des Kerns aufgrund von Kernverlusten beschra ̈nkt. Die Stromdichte J wird durch die
Erwa ̈rmung der Wicklung aufgrund von Kupferverlusten begrenzt. Der wirk- same Kernquerschnitt sollte im Sinne geringer
Kosten und geringen Gewichts mo ̈glichst klein sein. Ein Steigerung der u ̈bertragbaren Leistung ist demnach nur durch
eine Anhebung der Frequenz mo ̈glich.

Mit zunehmender Schaltfrequenz kann das Gewicht – und damit auch der Preis – von Stromversorgungen und DC-DC-Wandlern
gesenkt werden. Ein 100W-Netzteil, realisiert mit einem bei Netzfrequenz (50Hz) arbeitenden Transformator, hat eine
Masse in der Gro ̈ßenordnung von 10kg; durch Erho ̈hen der Schaltfrequenz auf 50kHz kann diese auf unter 1 kg gesenkt
werden, bei 500kHz sind weniger als 400g erreichbar. Wesentlich fu ̈r diese Anhebung der Schaltfrequenz war die
Entwicklung spezieller, verlustarmer Ferritwerkstoffe. Tabelle 9.2 gibt einen U ̈berblick u ̈ber typische Daten unter-
schiedlicher, fu ̈r U ̈bertrager gebra ̈uchlicher Kernmaterialien.

## Literaturverzeichnis

```{bibliography}
:filter: docname in docnames
```
