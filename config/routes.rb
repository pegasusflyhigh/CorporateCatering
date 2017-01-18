Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "/vendors/:id" , to: "vendor#show"
  #get "/vendors/new", to: "vendor#new"
  #post "/vendors", to: "vendor#create"
  #get "/vendors/:id/edit", to: "vendor#edit"
  #put "/vendors/:id", to: "vendor#update"
  #delete "/vendors/:id" ,to: "vendor#destroy"


  namespace :admin do
  	resource :vendors
  end

  resources :vendors do
=begin    #get "locations", on: :collection
    #get "search", on: :collection
    #get "rating", on: :member
=end
    collection do
      get "locations"
      get "search"

    end







    member do
      get "rating"
    end
  
  end

  
  resource :orders 
  resource :dailymenus


  resources :companies do
    resources :employees 
  end  
  
end
