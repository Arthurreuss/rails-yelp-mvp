Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'reviews/edit'
  # get 'reviews/update'
  # get 'reviews/show'
  # get 'reviews/destroy'
  # get 'restaurants/new'
  # get 'restaurants/show'
  # get 'restaurants/update'
  # get 'restaurants/destroy'
  # get 'restaurants/index'
  # get 'restaurants/edit'
  # get 'restaurants/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :reviews, only: [:index, :destroy]
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
end
