# Véletlenszám-generálás

Gyakori feladat, hogy egy [`a`; `b`[ intervallumba eső random számot kell generálnunk. Ehhez először be kell állítanunk egy `seed`et, különben minden futtatásnál ugyanazt a ~~random~~ számot kapnánk.

```cpp
srand(time(0)); //ezzel állítjuk be a `seed`et
rand() % (b - a) + a;
```

A `rand()` 0-tól egy hatalmas számig bármit adhat, ezt lecsükkentjük úgy, hogy 0 és az intervallum hossza közé essen, majd eltoljuk úgy, hogy 0 helyett jó helyen legyen az intervallum alja (és ezzel együtt a teteje is).