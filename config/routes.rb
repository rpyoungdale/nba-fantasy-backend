Rails.application.routes.draw do
  resources :players
  resources :teams
  resources :users
  post '/login', to: 'auth#login'
  get '/user', to: 'users#show_user'
  get '/all-teams', to: 'users#all_teams'
  get '/find-player', to: 'players#find_player'
  post '/game-scores', to: 'teams#game_scores'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
