Rails.application.routes.draw do
	resources :homes

    root to: "homes#index"
    get 'new' , to: 'homes#new'
    post '/create_registration' , to: 'homes#create' 
    get 'login' , to: 'homes#login'
end