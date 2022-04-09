# Struktúrák

Az olyan alap típusokat mindenki ismeri, mint az `bool`, `int`, `float`, `char`, `string`, tömbök, listák, de van, hogy ezek nem elegek egy feladat elvégzéséhez. Tipikusan nem csak egy-egy kósza `int`tel dolgozunk, hanem teljes adatsorunk van, mint például egy buszjegy vásárlásánál az ülés, a fel- és a leszállás helye[^helyjegy]. Ezeket külön-külön 3 tömbben tárolni egy rémálom lenne. Ilyenkor jön képbe a `struct`, amivel saját komplex adattípust hozhatunk létre. Ebbe több darab, akár többféle típusú adatokat tárolhatunk. Az előző példára visszatérve létrehozhatjuk az alábbi struktúrát:
```cpp
struct foglalas{
    int ules, fel, le;
}
```

Másik példa, amikor egy választás eredményét kell leírni, ahol van minden sorban: a választókerület (1-8), a kapott szavazatok száma, a képviselőjelölt vezeték- és keresztneve, valamint az őt támogató párt rövidítése (független esetén `-`).[^valasztas]
```cpp
struct eredmeny{
    int kerulet, szavazatok;
    string vezeteknev, keresztnev, part;
}
```

Ezekből látszik, hogy a struktúrákat akkor használjuk, ha több összefüggő adatunk van, amelyek egymás nélkül értelmetlenek. Az előző példával élve: sokat érek, ha tudom a szavazatok számát, ha nem tudom, ki kapta.


[^helyjegy] 2010. májusi informatika emelt érettségi

[^valasztas] 2013. májusi informatika emelt érettségi