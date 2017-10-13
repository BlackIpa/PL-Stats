Rails.application.routes.draw do

  root to: 'homes#index'

  resources :teams do
  	resources :players
    resources :matches
    # collection do
    #   get "teams_stats"
    #   get "show_players"
    # end
  end

  resources :players do
    resources :player_matches
    # collection do
    #   get "players_stats"
    # end
  end

  resources :matches do
    resources :player_matches
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
