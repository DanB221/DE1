# DE1
Projekt z predmetu DE1
Zadanie úlohy bolo vytvoriť hodiny/stopky a časovač. 
Všetky časti fungujú nezáväzne na sebe,to znamená, že hodiny, stopky a časovač stále bežia aj keď aktuálne máme navolenú inú jednotku na zobrazovanie. Prepínanie medzi jednotlivými jednotkami funguje na základe dvoch prepívačov a to SW15 a SW14. 
SW15  SW14
0      0   -> hodiny
0      1   -> stopky
1      0   -> časovač(alarm)
1      1   -> hodiny - možnosť nastavovania

Hodiny
Ak máme navolené hodiny, iba zobrazujú čas.
ak máme navolené hodiny s nastavovaním, po zapnutí prepínača SW2, vieme nastavovať hodinovú časť pomocou tlačidiel hore a dole. Rovnako nastavujeme minúty, no zapnutý musíme mať SW1.

Stopky
Stopky nám zobrazujú minúty, sekundy a stotiny sekúnd (iba prvé dve cifry). Spúšťajú a stopujú sa stredným tlačidlom a resetujú sa dolným tlačidlom.

Časovač
Nastavíme ho obdobne ako hodiny, no so zapnutým SW2 nastavujeme minúty a so zapnutým SW1 sekundy. Spustiť a zastaviť ho vieme stredným tlačidlom. Časovač odpočítava od zadaného času k nnule. 

Všetky nastavovania čísel sú ochránené pred pretečením v medziach svojej jednotky. 

Takto vyzeral môj ručný návrh daného zadania

Takto už vyzerá schéma v programe Vivado
![image](https://github.com/user-attachments/assets/e76f9849-428b-4b01-b6a0-0cc551c070e3)

V schéme sú viditeľné všetky bloky, ktorých kódy sú prístupné v dokumentoch vyššie. Hlavné bloky sú RIA-R1, RIA-R2, HOD, ALARM, STOPKY, SELEKTOR, DELIC, DEB1 až DEB3,, BIN2SEG 
