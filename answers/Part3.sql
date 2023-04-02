
--* What is each pokemon's primary type?
--SELECT name, primary_type
--FROM pokemons;
SELECT pokemons.name, pokemons.primary_type, types.name
FROM pokemons
INNER JOIN types ON pokemons.primary_type = types.id;

--* What is Rufflet's secondary type?
SELECT secondary_type
FROM pokemons
WHERE name = 'Rufflet';

--* What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemon_trainer.pokemon_id, pokemons.name
FROM pokemon_trainer
INNER JOIN pokemons ON pokemons.id = pokemon_trainer.pokemon_id
WHERE pokemon_trainer.trainerID = 303;

--* How many pokemon have a secondary type `Poison`
SELECT COUNT(pokemons.secondary_type), types.name
FROM pokemons
INNER JOIN types ON pokemons.secondary_type = types.id
WHERE types.name = 'Poison';

-- or:
SELECT COUNT(*) FROM pokemons
INNER JOIN types ON pokemons.secondary_type = types.id
WHERE types.name = 'Poison';

--* What are all the primary types and how many pokemon have that type?
SELECT COUNT(pokemons.primary_type), types.name FROM types
LEFT JOIN pokemons on pokemons.primary_type = types.id
GROUP BY types.id;

--* How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer
SELECT trainerID, COUNT(*)
FROM pokemon_trainer
WHERE pokelevel >= 100
GROUP BY trainerID;

--* How many pokemon only belong to one trainer and no other?
SELECT COUNT(pokemon_trainer.pokemon_id), pokemons.name FROM pokemon_trainer
INNER JOIN pokemons on pokemons.id = pokemon_trainer.pokemon_id
GROUP BY pokemon_id
HAVING COUNT(*) =  1;

