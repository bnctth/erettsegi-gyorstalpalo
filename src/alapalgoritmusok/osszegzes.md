# Összegzés

Ha egy tömb (bizonyos) elemeinek az összege érdekel minket, pusztán végig kell mennünk ezen, és egy, a cikluson kívül felvett változóba adogassuk a bele az egyes elemeket. Ez utóbbi azért fontos, mert ha a ciklusmagba (a `{}` között lévő rész) rakjuk a változó létrehozását, minden egyes körben létrejön, és nullázódik az értéke.

## Alap

```cpp
int tomb[50] = {...};

int osszeg = 0; // fontos, hogy kinullázzuk, különben az összeg kezdőértéke bármi lehet
for(int i = 0; i < 50; i++) {
    osszeg += tomb[i]; // osszeg = osszeg + tomb[i]
}
```

Itt amire a legfontosabb figyelni, hogy az `i` az nem egy érték, csupán a sorszáma a tömbön belüli elemnek.

## Feltételes

Mondjuk azt, hogy csak a pozitív számok összege érdekel minket.

```cpp
int tomb[50] = {...};

int osszeg = 0;
for(int i = 0; i < 50; i++) {
    if(tomb[i] > 0) {
        osszeg += tomb[i];
    }
}
```

Pusztán annyi változik, ha nem pozitív a szám, semmit sem csinálunk.