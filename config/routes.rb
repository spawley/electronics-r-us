Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'
  get '/contact' => 'products#contact'

  post '/admin/my_custom_page' => 'products#set_text'
  #match "/admin/contact" => 'admin_users#ddd', via: :post


end
