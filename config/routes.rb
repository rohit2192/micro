Micro::Application.routes.draw do
  resources :sms_templates


  get "compose_email/new"
  post "compose_email/create"

  get "graphs/index"
  get "graphs/show"

  get "reports/index"
  get "reports/show"

  get "compose_sms/load_contact"
  get "compose_sms/new"
  get "compose_sms/create"

  resources :contacts
  resources :contact_groups
  resources :companies
  resources :system_modules


  get "static/about_us"
  get "static/contact_us"
  get "static/index"

  resources :privileges
  resources :groups
  resources :roles
  resources :dashboards
  resources :reminders

  root :to => "static#index"

  resources :users
  resources :auths

  get "log_in" => "auths#new", :as => "log_in"  
  get "log_out" => "auths#destroy", :as => "log_out"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
