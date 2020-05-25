Rails.application.routes.draw do
    root to: "homes#index"

    resources :homes
    
    get 'new' , to: 'homes#new'
   
    post '/create_registration' , to: 'homes#create' 
    get 'create' , to: 'sessions#create'
    get 'dashboard' , to: 'homes#dashboard'
    get 'users/login' , to: 'users#login'
    get 'managements/selection' , to: 'managements#selection'
    get '/login' , to: 'managements#selection'

	get  'sessions/new' , to:  'sessions#new'
	get 'sessions/destroy' , to: 'sessions#destroy'

	get 'questions/subject' , to: 'questions#subject'
	get 'questions/topic' , to: 'questions#topic'
	get 'questions/question_type' , to: 'questions#question_type'
	post '/create' , to: 'questions#create'

	get 'topics/topic' , to: 'topics#topic'
	get 'topics/question_type' , to: 'topics#question_type'
	post '/create_topic' , to: 'topics#create'

	get 'objectives/objective' , to: 'objectives#objective'
	get 'objectives/newobjective' , to: 'objectives#newobjective'

	get 'schedules/schedule' , to: 'schedules#schedule'
	get 'candidates/candidatedata' , to: 'candidates#candidatedata'
	

end