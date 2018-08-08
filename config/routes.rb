Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'top', to: 'restaurants#top', as: :top
    end
    member do
      get 'chef', to: 'restaurants#chef', as: :chef
    end

    resources :reviews, only: [:new, :create]
  end

  # namespace :admin do
  #   resources :restaurants, only: [:index]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
