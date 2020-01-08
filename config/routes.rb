Rails.application.routes.draw do
  root 'toppage#toppage'
  resources :teams
  resources :players
  resources :chomps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
