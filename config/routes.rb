Rails.application.routes.draw do
 	devise_for :users
  

  root 'vooting_dashboard#index'

  get '/vooting_dashboard/:id' => 'vooting_dashboard#show', :as => 'vooting_dashboard'

  namespace :admin, module: nil  do
    root "admin#index"
    resources :users
    resources :vote_polls
  end
 	
 	resources :vote_options
 	resources :answers
 	resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
