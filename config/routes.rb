Rails.application.routes.draw do
  devise_for :customers, :controllers => { registrations: 'registrations_controller' }
  root 'static_pages#home'
  get 'static_pages/help'
  namespace :shop do
      get :men_fabrics
      get :women_fabrics
      get :kids_fabrics
  end
  resources :designers
end
