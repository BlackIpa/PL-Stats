Rails.application.routes.draw do

  root to: 'homes#index', as: 'home'

  resources :teams do
  	resources :players
    resources :matches
    #resources :player_matches
    collection do
      get "teams_stats"
    end
  end

  resources :players do
    resources :player_matches
    collection do
      get "players_stats"
    end
  end

  resources :matches do
    resources :player_matches
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
