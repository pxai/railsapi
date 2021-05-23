Rails.application.routes.draw do
  resources :tags
  resources :courses
  resource :entries
  get 'about/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
