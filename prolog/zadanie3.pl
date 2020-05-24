main :- write('hello, world!').

pilkarz(marek).
pilkarz(jan).

plywak(adam).
plywak(jan).

biega(X) :- pilkarz(X).
ma_dobra_kondycje(X) :- pilkarz(X).
sportowiec(X) :- plywak(X); biega(X).
uczestnik_zawodow(X) :- sportowiec(X), ma_dobra_kondycje(X).