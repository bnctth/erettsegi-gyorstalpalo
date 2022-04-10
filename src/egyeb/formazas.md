# Trükkök kiíratáshoz

Sokszor van, hogy valamilyen módon formázni kell a kimenetet.

## Kerekítés

Leggyakrabban kerekíteni kell valamilyen átlagot vagy százalékot. Szerencsére erre vannak beépített függvények.

```cpp
#include <iomanip>

float x = 3.14159;
cout << fixed << setprecision(2) << x << endl; // 3.14
```
A fixed egy kötelező elem a megfelelő megjelenéshez, a setprecisionnel pedig megmondod, hány tizedesjegyre szeretnéd kerekíteni.

## Fix szélesség

Ritkább, de előfordult már, hogy megmondják, egy számot mindig 3 számjeggyel kell kiírni, ha kevesebb, rakjunk elé 0-t. Erre is tartogat számunkra az `iomanip` egy trükköt.

```cpp
#include <iomanip>

int x = 1;
cout << setfill('0') << setw(3) << x << endl; // 001
```
A `setfill`el megadhatunk egy tetszőleges karaktert, amivel ki fogja tölteni a fennmaradó helyet, míg a `setw` (w mint width) megadja, milyen széles a kívánt eredmény.