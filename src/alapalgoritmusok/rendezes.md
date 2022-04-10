# Sorbarendezés

Rendezéshez többféle algoritmus van, mint égen a csillag, úgyhogy csak a legegyszerűbbet írom le, ez az egyszerű cserés rendezés.

```cpp
int tomb[50] = {...};

for(int i = 0; i < 50-1; i++){ // itt csak az utolsó előtti elemig megyünk
    for(int j = i+1; j < 50; j++){ //itt pedig i+1-től a tömb végéig
        if(tomb[i] > tomb[j]){
            swap(tomb[i]; tomb[j]); //egy beépített függvény, ami megcseréli a két elem értékét
        }
    }
}
```

A küldső forral az `i` végigmegy a tömb elemein az elejétől az utolsó előtti elemig. Mindig ez lesz *előrébb* a kettő érték közül, vagyis növekvő sorrend esetén ennek a `tomb[i]`nek kell kisebbnek lennie. Ezután a `j` végigmegy a tömb minden `i` utáni elemén, és megnézi, jó sorrendben vannak-e. Mire a végére ér, az `i`. helyen már a megfelelő elem fog állni.