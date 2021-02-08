Rails.application.routes.draw do

  get 'static_pages/home/', to: 'static_pages#home', as: 'static_pages_home'
  get 'static_pages/contact', to: 'static_pages#contact'
  get 'static_pages/team', to: 'static_pages#team'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
