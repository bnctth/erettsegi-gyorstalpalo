# Beolvasás fájlból

Mostmár remekül tudunk adatokkal dolgozni, már csak be kéne őket olvasni. A legfontosabb alapszabály: a fájlt **mindig** zárjuk be, ha végeztünk vele.
Ezután pár dolgot el kell döntenünk.

## Tömb hossza

Ehhez tipikusan 3 módszer áll rendelkezésre:

- megadják a fájl elején, hogy hány sort tartalmaz
- megadják, legfeljebb hány sor adat lehe
- nem adnak meg semmit (ilyen talán sose történt még érettségin)
  Ezeket a mogoldásokat ilyen sorrendben célszerű használni, hiszen fentről lefele egyre nehezebb a kivitelezésük.

### Megadott sorszámmal

Ilyenkor az első dolgunk beolvasni a megadott sorszámot, majd ezután egy olyan hosszú tömböt létrehozni. Ezután pusztán bele kell olvasni az adatokat és kész is vagyunk.

```cpp
#include <fstream>

struct adat{
    int mezo1, mezo2, mezo3;
}

ifstream be("filenev.txt");
int n; //ez lesz a tömb hossza
be >> n;
adat tomb[n];
for(int i = 0; i < n; i++){
    be >> tomb[n].mezo1 >> tomb[n].mezo2 >> tomb[n].mezo3;
}
be.close();
```

### Megadott legnagyobb méret

Ilyenkor létrehozzuk azt a tömböt, amibe garantáltan belefér (a példában ez 1000 lesz), majd feltöltés közben ellenőrizzük, hogy sikeres volt-e a beolvasás, ha igen, akkor megnövelünk egy változót, ami a tényleges hosszát tárolja.

```cpp
#include <fstream>

struct adat{
    int mezo1, mezo2, mezo3;
}

ifstream be("filenev.txt");
adat tomb[1000];
int n = 0;
while(be >> tomb[n].mezo1 >> tomb[n].mezo2 >> tomb[n].mezo3){
    n++;
}
be.close();
```

Az használjuk ki, hogy a `>>` visszaad egy igaz-hamis értéket, ami azt mondja, sikeres volt-e a beolvasás. A végén az n lesz a tömb valódi hossza.

### Semmi

Ilyenkor kétszer megyünk végig az adatokon: először megnézzük, hány sor adat van, majd az ilyen hosszú tömbbe beolvassuk az adatokat. **FONTOS**: _van, hogy a forrásfájl végén van egy üres sor. Ha azt látod, hogy a beolvasás után a tömb utolsó elemében memóriaszemét van, akkor csökkentsd az `n`t eggyel a megszámolás után!_

```cpp
#include <fstream>

struct adat{
    int mezo1, mezo2, mezo3;
}

ifstream be("filenev.txt");

string szemetes;
int n = 0;
while(!file.eof()){
    getline(be, szemetes);
    n++;
}
// n--; // ha kell
adat tomb[n];
for(int i = 0; i < n; i++){
    be >> tomb[n].mezo1 >> tomb[n].mezo2 >> tomb[n].mezo3;
}
be.close();
```
