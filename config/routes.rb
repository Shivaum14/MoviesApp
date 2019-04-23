Rails.application.routes.draw do
  devise_for :users
  
  resources :movies do
    resources :reviews, except:[:show, :index]
  end
  
  root 'home#home'#home page
  
  get 'contact', to: 'home#contact'#contact us page
    post 'request_contact', to: 'home#request_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
