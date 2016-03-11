Rails.application.routes.draw do
  devise_for :customers, :controllers => { registrations: 'registrations_controller' }
  root 'static_pages#home'
  get 'static_pages/help'
end
