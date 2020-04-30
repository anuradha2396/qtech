Rails.application.routes.draw do
	resources :homes

    root to: "homes#index"
    get 'new' , to: 'homes#new'
   
    get 'login' , to: 'homes#login'
end