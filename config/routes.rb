Rails.application.routes.draw do
  
  #devise_for :users
  ##devise_for :admins
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  #devise_for :restaurants, :controllers => { registrations: 'registrations_restaurant' }
  ##devise_for :clients
  #devise_for :clients, :controllers => { registrations: 'registrations' }
  #get 'home/index'

  #get 'home/acercade'

  #get 'home/servicio'

  #get 'home/contacto'
  
  #get 'home/locales'


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_for :restaurants, :controllers => { registrations: 'registrations_restaurant' }
  #devise_for :clients
  devise_for :clients, :controllers => { registrations: 'registrations' }
  get "/inicio" => "home#index", :as => :index
  get "/acerca-de" => "home#acercade", :as => :acercade
  get "/restaurants/sign_in" => "registrations_restaurant#new", :as => :sign_in
  get "/contactenos" => "home#contacto", :as => :contacto
  get "/home/servicio"
  get '/filtrados' => "home#locales", :as => :locales
  get 'home/buscar'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
