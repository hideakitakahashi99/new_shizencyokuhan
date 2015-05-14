Rails.application.routes.draw do

 

  resources :mapus

get 'projects/marker',  to: 'projects#marker',  as: :marker  

  resources :tests

  get 'calendar/index'

    get 'static_pages/company'
    get 'static_pages/feed_page'
    get 'static_pages/intro'
    get 'static_pages/qa'
    get 'static_pages/commercial_transaction'
    get 'static_pages/policy'
    get 'static_pages/disclaimer'
    get 'static_pages/term'
  

resources :projects do
    resources :tasks, only: [:create, :destroy]
 end

 post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'

 

config = Rails.application.config.taskapp







constraints host: config[:staff][:host] do
namespace :staff, path: config[:staff][:path] do
    root 'top#index'
    post ':id/toggle' => 'top#toggle'
    get 'login' => 'sessions#new', as: :login
    get 'signup' => 'signups#new'
    get 'static_pages/company'
    get 'static_pages/feed_page'
    get 'static_pages/intro'
    get 'static_pages/qa'
    get 'static_pages/commercial_transaction'
    get 'static_pages/policy'
    get 'static_pages/disclaimer'
    get 'static_pages/term'
    resource :session, only: [ :create, :destroy ]
    resource :signup, only: [ :create, :destroy ]
    resource :account, except: [ :new, :create ]
    resource :password, only: [ :show, :edit, :update ]
    
    resources :customers do
      member do
    get :following, :followers
    end
  end
    resources :staff_addresses
    resources :additional_infos
    resources :sales_terms
    resources :banks
    resources :schedules, only: [:create, :destroy ]
    resources :relationships, only: [:create, :destroy]
    resources :orders, only: [ :index, :show ] do
      get :shipped 
    end
    resources :products do
    get :who_bought, on: :member
    end 
    
  end
end

constraints host: config[:admin][:host] do
namespace :admin, path: config[:admin][:path] do
    root 'top#index'
    get 'login' => 'sessions#new', as: :login
    get 'signup' => 'signups#new', as: :signup
    resource :session, only: [ :create, :destroy ]
    resource :signup, only: [ :create ]
    resources :staff_members do
      resources :staff_events, only: [ :index ]

    end
    resources :staff_events, only: [ :index ] 
  end
end

constraints host: config[:customer][:host] do
namespace :customer, path: config[:customer][:path] do
    root 'top#index'
    get 'login' => 'sessions#new', as: :login
    get 'signup' => 'signups#new'
    get 'open_index' => 'staff_members#open_index'
    get 'search' => 'staff_members#search'
    get 'token/:uuid', :to => 'signups#token'
    get 'static_pages/company'
    get 'static_pages/feed_page'
    get 'static_pages/intro'
    get 'static_pages/qa'
    get 'static_pages/commercial_transaction'
    get 'static_pages/policy'
    get 'static_pages/disclaimer'
    get 'static_pages/term'
    resource :session, only: [ :create, :destroy ]
    resource :signup, only: [ :create, :destroy ]

    resources :relationships, only: [ :create, :destroy ]
    resources :mypages
    resources :staff_members do
      member do
      get :following, :followers
      end
      get :sales_term
      resources :store, only: [ :index ]
      resources :carts
      resources :line_items
      resources :orders 
      resources :addresses
      
    end
  end
end



  # priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

  root 'errors#routing_error'
  get '*anything' => 'errors#routing_error'
end
