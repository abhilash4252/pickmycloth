Rails.application.routes.draw do
  devise_for :customers, :controllers => { registrations: 'registrations_controller' }
  root 'static_pages#home'
  get 'static_pages/help'
   namespace :shop do
      resources :mens_fabrics
  end
  resources :order
  resources :designers
end
