# Első és utolsó érték megtalálása

## Alap

Ez feltétel nélkül nem is igazán algoritmus, de azért a biztonság kedvéért leírom.

```cpp
int tomb[50] = {...};

tomb[0]; //első
tomb[50-1]; //utolsó
```

## Feltétel

### Első

Egyszerűen addig megyünk, amíg nem találunk egy, a feltételeknek megfelelő elemet. Viszont azt is ellenőrizni akarjuk, van-e egyáltalán ilyen. Keressük meg az első pozitív elemet. Minden ugyanígy működik, ha struktúránk van, csak az elso/utolso változónk típusa mindig egyezzen meg a keresett elem típusával.

```cpp
int tomb[50] = {...};

bool talalt = false; // azt tárolja, találtunk-e megfelelő elemet
int elso = -1;
for(int i = 0; i < 50; i++){
    if(tomb[i] > 0){
        elso = tomb[i];
        talalt = true;
        break;
    }
}

if(talalt){
    // felhasználjuk az `elso`t
} else{
    // nem talált
}
```

### Utolsó

Ugyanazt csináljuk, csak a for ciklusunk visszafele fog menni
```cpp
int tomb[50] = {...};

bool talalt = false;
int utolso = -1;
for(int i = 50-1; i >= 0; i--){ // csak ez változott
    if(tomb[i] > 0){
        utolso = tomb[i];
        talalt = true;
        break;
    }
}
```