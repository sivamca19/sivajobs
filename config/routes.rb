Newjobportal::Application.routes.draw do
  get "profile/index"

  get "profile/job_seeker_new"

  get "profile/employer_new"

  get "profile/show"

  get "user_details/index"

  get "project/index"

  get "project/new"

  get "project/create"

  get "project/show"

  get "dashboard/index"

  get "dashboard/new"

  get "dashboard/create"

  get "dashboard/edit"

  get "dashboard/show"

  get "search/index"

  get "search/new"

  get "search/create"

  get "home/index"

  get "home/new"

  get "home/create"

  get "home/search"
match "admin/user_details/index" => "admin/user_details#index"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  devise_for :users
  root :to => "home#index"
  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end

    match ':controller(/:action(/:id))', :controller => /admin\/[^\/]+/

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
  match ':controller(/:action(/:id(.:format)))'
end
