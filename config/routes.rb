Rails.application.routes.draw do
    root to: "homes#index"

    resources :homes
    get 'new' , to: 'homes#new'
    post '/create_registration' , to: 'homes#create' 
    get 'create' , to: 'sessions#create'
    get 'dashboard' , to: 'homes#dashboard'
   
	get  'sessions/new' , to:  'sessions#new'
	get 'sessions/destroy' , to: 'sessions#destroy'

	get 'questions/subject' , to: 'questions#subject'
	get 'questions/topic' , to: 'questions#topic'
	get 'questions/question_type' , to: 'questions#question_type'
	get 'questions/new_sub' , to: 'questions#new_sub'
	post '/create_subject' , to: 'questions#create'
	get 'new' , to: 'questions#new'

end