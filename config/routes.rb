Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, include: %i[index show create new] do
    resources :bookmarks, include: %i[create new]
  end
  resources :bookmarks, :destroy
end
