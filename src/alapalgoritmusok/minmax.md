# Szélső érték keresés

Szélső érték keresése alatt a legkisebb vagy legnagyobb érték kereséséről beszélünk. Lehet az értéket vagy az indexet eltárolni, én az utóbbit javaslom mindenhez, mert ezzel rengeteg elnézhető dolog elkerülhető. A példákban mindig a maximumot fogom keresni, de a minimumhoz csak meg kell fordítani a kacsacsőröket.

## Alap

### Primitív

```cpp
int tomb[50] = {...};

int max_index = 0;

for(int i = 1; i < 50; i++){  // i = 1, mert a nulladik már úgyis a max
    if(tomb[i] > tomb[max_index]){ // ha a *legnagyobbnál* találunk egy nagyobbat
        max_index = i; // átveszi az a helyét
    }
}
```

### Struktúra

Itt az összehasonlítás alapja és a keresett érték az lehet több külön mező is, emiatt gyakran egyszerűbb az indexét eltárolni az adott elemnek. Mondjuk azt, hogy egy választás győztesének a neve érdekel minket.

```cpp
struct eredmeny{
    int szavazat;
    str keresztnev, vezeteknev;
}

eredmeny tomb[50] = {...};

int max_index = 0; // ez lehet 0, hiszen ez a nulladik elemre utal
for(int i = 1; i < 50; i++){
    if(tomb[i].szavazat > tomb[max_index].szavazat){
        max_index = i;
    }
}

string nev = tomb[max_index].vezeteknev + " " + tomb[max_index].keresztnev;
```

## Feltételes

Itt fontos, hogy megfelelő alapértéket választása, hiszen nem garantált, hogy a nulladik elem megfelel a kritériumnak. Ezért kettő ciklus kell: először megtaláljuk az első megfelelő értéket, utána pedig a tényleges szélső érték keresés. Ezekben a példákban feltételezzük, hogy legalább egy érték megfelel a feltételnek.

### Primitív

Keressük meg a legnagyobb negatív számot.

```cpp
int tomb[50] = {...};

int max_index = -1; // muszáj a `for`on kívül felvenni, különben azon kívül nem lenne elérhető
for(int i = 0; i < 50; i++){
    if(tomb[i] < 0){
        max_index = i;
        break;
    }
}

for(int i = max_index+1; i < 50; i++){ // itt nyugodtan kezdhetünk max_indexről, hiszen tudjuk, előtte nincs megfelelő érték
    if(tomb[i] < 0 && tomb[i] > tomb[max_index]){
        max_index = i;
    }
}
```

### Struktúra

Most a legtöbb szavazatot kapott Bélát keressük. Miért? Nem tudom, de az érettségi is hasonló baromságokat kérdez.

```cpp
struct eredmeny{
    int szavazat;
    str keresztnev, vezeteknev;
}

eredmeny tomb[50] = {...};

int max_index = -1;
for(int i = 0; i < 50; i++){
    if(tomb[i].keresztnev == "Béla"){
        max_index = i;
        break;
    }
}

for(int i = max_index+1; i < 50; i++){
    if(tomb[i].keresztnev == "Béla" && tomb[i].szavazat > tomb[max_index].szavazat){
        max_index = i;
    }
}
```