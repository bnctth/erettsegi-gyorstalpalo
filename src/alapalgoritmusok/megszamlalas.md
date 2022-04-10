# Megszámlálás

A megszámlálás abból a szempontból különleges, hogy itt nem igazán beszélhetünk alap verzióról, hiszen ahhoz, hogy végigmenjünk a tömbön, tudnunk kell a hosszát, tehát ahhoz, hogy megszámoljuk, mennyi adatunk van egy tömbben, tudnunk kell, mennyi adatunk van a tömbben. Ez majdnem megegyezik az összegzéssel, csak itt nem az értékkel növeljük a változónkat, hanem mindig eggyel.

## Feltételes

Számoljuk meg a pozitív számokat.
```cpp
int tomb[50] = {...};

int db = 0;
for(int i = 0; i < 50; i++){
    if(tomb[i] > 0){
        db++; // db += 1 avagy db = db + 1
    }
}
```