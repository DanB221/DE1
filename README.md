# DE1
Projekt z predmetu DE1
Zadanie úlohy bolo vytvoriť hodiny/stopky a časovač. 
Všetky časti fungujú nezáväzne na sebe,to znamená, že hodiny, stopky a časovač stále bežia aj keď aktuálne máme navolenú inú jednotku na zobrazovanie. Prepínanie medzi jednotlivými jednotkami funguje na základe dvoch prepívačov a to SW15 a SW14. 
(SW15  SW14)
(0      0)   -> hodiny;
(0      1)   -> stopky;
(1      0)   -> časovač(alarm);
(1      1)   -> hodiny - možnosť nastavovania

Hodiny ->
Ak máme navolené hodiny, iba zobrazujú čas.
ak máme navolené hodiny s nastavovaním, po zapnutí prepínača SW2, vieme nastavovať hodinovú časť pomocou tlačidiel hore a dole. Rovnako nastavujeme minúty, no zapnutý musíme mať SW1.

Stopky ->
Stopky nám zobrazujú minúty, sekundy a stotiny sekúnd (iba prvé dve cifry). Spúšťajú a stopujú sa stredným tlačidlom a resetujú sa dolným tlačidlom.

Časovač ->
Nastavíme ho obdobne ako hodiny, no so zapnutým SW2 nastavujeme minúty a so zapnutým SW1 sekundy. Spustiť a zastaviť ho vieme stredným tlačidlom. Časovač odpočítava od zadaného času k nnule. 

Všetky nastavovania čísel sú ochránené pred pretečením v medziach svojej jednotky. 

Takto vyzeral môj ručný návrh daného zadania
![IMG_9978](https://github.com/user-attachments/assets/287c8105-c0ac-49e3-98e3-ec505015d783)
Takto už vyzerá schéma v programe Vivado
![image](https://github.com/user-attachments/assets/e76f9849-428b-4b01-b6a0-0cc551c070e3)

V schéme sú viditeľné všetky bloky, ktorých kódy sú prístupné v dokumentoch vyššie. Hlavné bloky sú RIA-R1, RIA-R2, HOD, ALARM, STOPKY, SELEKTOR, DELIC, DEB1 až DEB3, CLK, BIN2SEG.

Bloky RIA zabezpečujú riadenie vstupov a výstupov, to znamená, že bloky dokážu pracovať nezávisle na aktuálne zobrazovanom bloku a taktiež sa nemôže stať, že pomocou tlačidiel navolíme niečo, čo nevidno.

Bloky ALARM, STOPKY a HODINY sú bloky v ktorých prebieha prepočet na základe vstupného časového signálu z bloku CLK, pre HOD je vstup minútový tik, pre STOPKY je to milisekundový tik a pre ALARM je to sekundový tik. Výstupy sa spracuvávajú v RIA-R2, ktorá to následne posiela do bloku DELIC.

DELIC pracuje so vstupnými čislami ktoré majú dve čislice a rozdelí ich na číslicu symbolyzujúcu desiatky a číslicu sybolyzujúcu jednotky. 

SELEKTOR vezme jednotlivé čislice a postupne ich cyklicky posiela do bloku BIN2SEG. Zároveň cyklicky zapína potrebné anódy 7 segmentovky.

BIN2SEG je blok ktorý už bol vytvorený a použil som ho zo školského GitHub-u. V zásade prepisuje 4 bitové binárne čislo na kód pre 7 segmentovku. 

V nasledujúcom videu je podrobne ukázaná funkčnosť na doske NEXYS4 DDR. 
ODkaz na video na YOUTUBE kvôli veľkosti   https://youtu.be/Kf4AAvAl3_s

Problémy
Vyskytli sa 1. problém s obráteným poradím čísel, ktorý sa podarilo jednoducho vyriešiť prehodením spojení v toplayer-i medzi blokmi DELIC a SELEKTOR.
            2. problém s veľmi výchlym prepínamím medzi číslami pri stlačení tlačidiel. Tento problém sa vyriešil pomocou blokov DEB - debouncer.

Vytvorenie projektu trvalo približne 16 hodín čistého času. Projek som vypracoval podľa mojej najlepšej vôle a myslím si, že výsledok o tom svedčí.


