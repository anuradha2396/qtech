Rails.application.routes.draw do
    root to: "homes#index"

    resources :homes

    
    get 'new' , to: 'homes#new'
   
    post '/create_registration' , to: 'homes#create' 
    get 'create' , to: 'sessions#create'
    get 'dashboard' , to: 'homes#dashboard'
    get 'users/login' , to: 'users#login'
    get 'managements/selection' , to: 'managements#selection'
    get '/selection' , to: 'managements#selection'
    get '/instruction' , to: 'managements#instruction'

    get '/ques' , to: 'startques#ques'

	get  'sessions/new' , to:  'sessions#new'
	get 'sessions/destroy' , to: 'sessions#destroy'

	get 'questions/subject' , to: 'questions#subject'
	get 'questions/question_type' , to: 'questions#question_type'
	post '/create' , to: 'questions#create'

	get 'topics/topic' , to: 'topics#topic'
	get 'topics/question_type' , to: 'topics#question_type'
	post '/create_topic' , to:  'topics#create' , as: :create_topic 
    delete 'topics/topic' , to: 'topics#destroy'

	get 'objectives/objective' , to: 'objectives#objective'
	get 'objectives/newobjective' , to: 'objectives#newobjective'
	post '/ques' , to: 'objectives#create' , as: :create_ques

	get 'schedules/schedule' , to: 'schedules#schedule'
	post '/schedule' , to: 'schedules#create'

	get 'candidates/candidatedata' , to: 'candidates#candidatedata'
	get 'candidates/newcandidate' , to: 'candidates#newcandidate'
	post '/create_candidate' , to: 'candidates#create' , as: :create_candidate
	delete 'candidates/newcandidate' , to: 'candidates#destroy' 


	get 'examcreations/examcreation' , to: 'examcreations#examcreation'
	get 'examcreations/newexam' , to: 'examcreations#newexam'
	post '/exam' , to: 'examcreations#create'
	

end