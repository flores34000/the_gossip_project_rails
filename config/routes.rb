Rails.application.routes.draw do
  resources :gossips do 
    resources :comments
    resources :users
    resources :cities
  end
  
  
  root 'index#home'
  get '/team', to: 'index#team'
  get '/contact', to: 'index#contact'
  
  # get '/welcome/:name', to: 'index#welcome'
  # get 'cities/show'
  
end


