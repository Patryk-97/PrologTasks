main :- write('hello, world!').

mezczyzna(franciszek).
mezczyzna(jan).
mezczyzna(bogdan).
mezczyzna(krzysztof).
mezczyzna(wojciech).
mezczyzna(robert).

kobieta(wanda).
kobieta(maria).
kobieta(anna).
kobieta(zofia).
kobieta(ewa).
kobieta(katarzyna).

malzenstwo(jan, maria).
malzenstwo(maria, jan).
malzenstwo(bogdan, anna).
malzenstwo(anna, bogdan).
malzenstwo(wojciech, zofia).
malzenstwo(zofia, wojciech).

rodzic(franciszek, maria).
rodzic(wanda, bogdan).

rodzic(jan, krzysztof).
rodzic(maria, krzysztof).
rodzic(jan, wojciech).
rodzic(maria, wojciech).

rodzic(bogdan, zofia).
rodzic(anna, zofia).
rodzic(bogdan, ewa).
rodzic(anna, ewa).

rodzic(wojciech, katarzyna).
rodzic(zofia, katarzyna).
rodzic(wojciech, robert).
rodzic(zofia, robert).

matka(X, Y) :- kobieta(X), rodzic(X, Y).
ojciec(X, Y) :- mezczyzna(X), rodzic(X, Y).
babcia(X, Y) :- kobieta(X), rodzic(X, Z), rodzic(Z, Y).
dziadek(X, Y) :- mezczyzna(X), rodzic(X, Z), rodzic(Z, Y).
siostra(X, Y) :- kobieta(X), rodzic(Z, X), rodzic(Z, Y).
brat(X, Y) :- mezczyzna(X), rodzic(Z, X), rodzic(Z, Y).
syn(X, Y) :- mezczyzna(X), rodzic(Y, X).
corka(X, Y) :- kobieta(X), rodzic(Y, X).
przodek(X, Y) :- rodzic(X, Y).
przodek(X, Y) :- rodzic(X, Z), przodek(Z, Y).
dziecko(X, Y) :- syn(X, Y); corka(X, Y).
potomek(X, Y) :- dziecko(X, Y).
potomek(X, Y) :- dziecko(X, Z), potomek(Z, Y).
ma_dziecko(X) :- dziecko(_, X).
jest_dziadkiem(X) :- mezczyzna(X), dziecko(Y, X), dziecko(_, Y).
tesciowa(X, Y) :- kobieta(X), malzenstwo(Y, Z), dziecko(Z, X).