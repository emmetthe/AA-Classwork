json.pokemon do 
  json.set! @pokemon.id do
    json.extract! @pokemon, :id, :name, :attack, :defense, :poke_type
    json.image_url asset_path("pokemon_snaps/#{poke.image_url}")
  end
end

json.moves do
  @moves.each do |move|

    json.set! @pokemon.id do

    end
  end
end