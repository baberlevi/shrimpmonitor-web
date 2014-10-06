Shrimpmonitor::Application.routes.draw do
  resources :roles

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

#  devise_scope :user do
#	get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
#  end

  resources :do_sensor_readings

  resources :tank_alarm_thresholds

  resources :tank_warning_thresholds

  resources :contacts

  resources :companies

  resources :sites

  resources :tanks

  resources :temp_sensor_readings

  resources :k10_sensor_readings

  resources :k1_sensor_readings

  resources :orp_sensor_readings

  resources :ph_sensor_readings

  get '/home' => 'pages#home'
  
  get '/about' => 'pages#about'
  
  get '/contact' => 'pages#contact'

  get '/do_data' => 'pages#do_data'

  get '/temp_data' => 'pages#temp_data'

  get '/ph_data' => 'pages#ph_data'

  get '/sal_data' => 'pages#sal_data'

  get '/orp_data' => 'pages#orp_data'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  #root 'do_sensor_readings#index'
  root 'pages#home'

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
