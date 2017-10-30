Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/capture', to: 'pokemons#capture'
  get '/damage', to: 'pokemons#damage'
  get '/newPokemon', to: 'pokemons#show'
end
