Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats 

  resource :cat_rental_requests, only: [:new, :create]

  resources :cats do 
    resources :cat_rental_requests
  end

end
