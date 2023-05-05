# 🔣 Regulárne Výrazy (Regular Expressions - Regex)
Regulárny výraz (alebo aj **regexp**, **regex** alebo **RE** z angl. regular expression) je **textový reťazec**, obsahujúci **vyhľadávací vzor (Pattern)**, ktorý popisuje celú množinu reťazcov 
(formálny jazyk), na základe určitých syntaktických pravidiel. Predstavuje úsporný zápis regulárnej gramatiky z teórie formálnych jazykov, regulárnymi výrazmi sú teda 
popísateľné práve regulárne jazyky, t. j. jazyky, akceptovateľné konečnostavovým automatom.

Regulárne výrazy sú používané v mnohých textových editoroch a nástrojoch na hľadanie a manipuláciu s textom podľa vzorov. 
Mnoho programovacích jazykov podporuje regulárne výrazy na prácu s reťazcami (Java, C, C++, C#, Python, PHP, JavaScript a mnoho ďalších). Množstvo nástrojov príkazového riadku 
(vrátane filtra grep a dávkového editora sed) poskytovaných pôvodne unixovými operačnými systémami, z ktorých sa neskôr ďalej rozšírili, masívne využíva regulárne výrazy.

## 🛠️ Načo a kde sa používajú Regulárne Výrazy
A. Kontrola (**Validácia**), či vstupný text vyhovuje danému regulárnemu výrazu
B. Rozdelenie (**Parsovanie/Split/Extrakcia**) vstupného textu na časti, oddelené separátorom, vyhovujúcim danému regulárnemu výrazu
C. Vyhľadávanie (**Search**) vo vstupnom texte
  - Zistenie pozícií vo vstupnom texte, kde sa nachádzajú výskyty, vyhovujúce danému regulárnemu výrazu
  - Výber všetkých výskytov, vyhovujúcich danému regulárnemu výrazu (s možnosťou zachytenia fragmentov, zodpovedajúcich uzátvorkovaným skupinám vo výraze)
D. Manipulácia s textom (**String manipulation**)
  - Náhrada výskytov, vyhovujúcich danému regulárnemu výrazu; pričom nahrádzať je v praxi možné:
fixným textom
  - Nahrádzacím výrazom, kombinujúcim fixný text s odvolávkami na fragmenty, zachytené uzátvorkovanými skupinami v regulárnom výraze
  - Callback funkciou, ktorá ako vstup dostane nájdený výskyt, vyhovujúci regulárnemu výrazu (vrátane prípadných fragmentov pre uzátvorkované skupiny), z realizuje výpočet podľa potrieb a ako výstup vráti nový reťazec

## 🧰 Praktické aplikácie
1. Validácia a normalizácia vstupu od používateľa
2. Extrakcia štruktúrovaných údajov z textu (napr. data scraping, web scraping)
3 Štruktúrované náhrady v texte, v markupe, v zdrojových kódoch
4. Filtrovanie údajov (riadkov súboru/výstupu, názvov súborov, položiek v databáze, položiek logov, netextových údajov)
5. Transformácia údajov
6. Tvorba systémov zvýrazňovania syntaxe
7. Tvorba jednoduchších parserov a kompilátorov, resp. ich častí – typicky lexikálna analýza (tokenizácia)

| Výraz/Regex  | Vysvetlenie                                 |
|--------------|---------------------------------------------|
| x            | znak x                                      |
| \\           | spätné lomítko                              |
| \0n          | znak v osmičkovom kóde                      |
| \xhh         | znak v hexadecimálnom kóde                  |
| \uhhhh       | znak UNICODE v hexadecimálnom kóde 0×hhhh   |
| \t           | znak tabulátor (‚\u0009‘)                   |
| \n           | znak nového riadku (‚\u000A‘)               |
| \r           | znak posunu vozíku (‚\u000D‘)               |
| [abc]        | a, b, alebo c                               |
| [^abc]       | všetky znaky okrem a, b, lebo c (negácia)   |
| [a-zA-Z]     | a až z alebo A až Z (rozsah)                |
| [a-d[m-p]]   | a až d, alebo m až p: [a-dm-p](zjednotenie) |
| [a-z&&[def]] | d, e, alebo f (prienik)                     |
| [a-z&&[^bc]] | a až z, okrem b a c: [ad-z](rozdiel)        |
| \d           | číslice: [0–9]                              |
| \D           | opak číslice (negácia): [^0-9]              |
| \s           | biely znak: [ \t\n\x0B\f\r]                 |
| \S           | opak bieleho znaku: [^\s]                   |
| \w           | slovo: [a-zA-Z0-9_]                         |
| \W           | opak slova: [^\w]                           |
| ^            | začiatok riadku                             |
| $            | koniec riadku                               |
| \b           | hranice slova                               |
| \B           | opak hranice slova (negácia)                |
| X?           | X, žiadny alebo jeden                       |
| X*           | X, žiadny alebo viac                        |
| X+           | X, jeden alebo viac                         |
