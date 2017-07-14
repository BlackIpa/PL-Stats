Rails.application.routes.draw do
  get 'welcome/index'

  resources :teams do
  	resources :players
    resources :matches
    collection do
      get 'team_offensive'
    end
    #resources :player_matches
  end

  resources :players do
    resources :player_matches
  end

  resources :matches do
    resources :player_matches
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
