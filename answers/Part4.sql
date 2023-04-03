
SELECT pokemons.name, trainers.trainername, pokemon_trainer.pokelevel,
a.name AS primary_type, b.name AS secondary_type
FROM pokemons
INNER JOIN types AS a ON primary_type = a.id
INNER JOIN types AS b ON secondary_type = b.id
INNER JOIN pokemon_trainer ON pokemon_trainer.pokemon_id = pokemons.id
INNER JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
ORDER BY pokemon_trainer.pokelevel DESC

