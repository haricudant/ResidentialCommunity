Rails.application.routes.draw do
  get 'userinterests/index'
  get 'userinterests/show'
  get 'userinterests/new'
  get 'userinterests/edit'
  resources :events do
      resources :userinterests
  end
  resources :currentproviders
  resources :rents
  resources :cals
  resources :assets
  resources :serviceproviders
  resources :services
  resources :appliances
  resources :profiles
  devise_for :users
  resources :charges
 # get 'home/index'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  resources :votes, only: [:create]
 get 'ajax/:action', to: 'ajax#:action', :defaults => { :format => 'json' }
    resources :polls
  root :to => 'home#index'
  #root to: 'polls#index'  
 
  get 'cards/show'
  resources :products
  #resources :calculateelectricbills
  #resources :users
  get 'calculateelectricbills/index'
  get '/calculateelectricbills' =>'calculateelectricbills#basedonroom'
  post '/calculateelectricbills' =>'calculateelectricbills#show'
  get '/calculateelectricbills/usage' => 'calculateelectricbills#basedonammenities'
  post '/calculateelectricbills/showbasedonammenities' => 'calculateelectricbills#showbasedonammenities'
  get '/calculateelectricbills/basedonmeter' => 'calculateelectricbills#basedonmeter'
  post '/calculateelectricbills/showbasedonmeter' => 'calculateelectricbills#showbasedonmeter'
    post '/cards/value' => 'cards#value'

  
  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
