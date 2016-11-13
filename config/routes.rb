Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'
  get '/contact' => 'products#contact'

  #post '/admin/contact'
  #match "/admin/contact" => 'admin/contact', via: :post


end
