Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, :controllers => { :registrations => 'registrations' }

  get 'line_items/create'

  get 'line_items/update'

  get 'line_items/destroy'

  get 'carts/show'

  resources :line_items
  resource :cart, only: [:show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'
  get '/contact' => 'products#contact'
  get '/about'   => 'products#about'

  get '/category'   => 'products#index'


  post '/admin/contact/set_text' => 'products#set_contact_text'
  post '/admin/about/set_text'   => 'products#set_about_text'

  #match "/admin/contact" => 'admin_users#ddd', via: :post


end
