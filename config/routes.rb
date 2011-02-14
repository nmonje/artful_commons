ArtfulCommons::Application.routes.draw do
  resources :comments
  resources :users
  resources :artists
  resources :works
  resources :locations

  root :to => "Locations#index"

end
