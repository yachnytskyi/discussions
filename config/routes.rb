Rails.application.routes.draw do
  resources :channels
  resources :discussions do
    resources :replies
  end
  root 'home#index'

  devise_for :users, controllers: { registrations: 'registrations' }

end
