Rails.application.routes.draw do
  resources :games
  resources :players
  resources :teams
  resources :users
  post '/login', to: 'auth#login'
  get '/user', to: 'users#show_user'
  get '/all-teams', to: 'users#all_teams'
  get '/find-player', to: 'players#find_player'
  post '/game-scores', to: 'teams#game_scores'
  post '/boxscore', to: 'games#boxscore'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
