Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :channels
  resources :discussions do
    resources :replies
  end
  root 'channels#index'


end
