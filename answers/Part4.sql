select pokemons.name, trainers.trainername, pokemon_trainer.pokelevel, pokemons.primary_type, pokemons.secondary_type
from (((pokemon_trainer
right outer join pokemons on pokemon_trainer.pokemon_id = pokemons.id)
right outer join trainers on trainers.trainerID = pokemon_trainer.trainerID)
right outer join types on pokemons.primary_type = types.id)
ORDER BY pokemon_trainer.pokelevel DESC
limit 10;


select pokemons.name, trainers.trainername, pokemon_trainer.pokelevel, pokemons.primary_type, pokemons.secondary_type
from (((pokemon_trainer
right outer join pokemons on pokemon_trainer.pokemon_id = pokemons.id)
inner join trainers on trainers.trainerID = pokemon_trainer.trainerID)
inner join types on pokemons.primary_type = types.id)
ORDER BY pokemon_trainer.pokelevel DESC
limit 10;

