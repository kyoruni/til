USE pokemons;

INSERT INTO pokemons (name) values('ピカチュウ');
INSERT INTO pokemons (name) values('フシギダネ');
INSERT INTO pokemons (name) values('ヒトカゲ');

INSERT INTO types (name) values ('でんき');
INSERT INTO types (name) values ('くさ');
INSERT INTO types (name) values ('どく');
INSERT INTO types (name) values ('ほのお');

INSERT INTO pokemon_types (pokemon_id, type_id) values (1, 1);
INSERT INTO pokemon_types (pokemon_id, type_id) values (2, 2);
INSERT INTO pokemon_types (pokemon_id, type_id) values (2, 3);
INSERT INTO pokemon_types (pokemon_id, type_id) values (3, 4);
