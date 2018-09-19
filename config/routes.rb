Rails.application.routes.draw do
  resources :players
  resources :teams
  resources :users
  get '/all-teams', to: 'users#all_teams'
  get '/find-player', to: 'players#find_player'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
