Rails.application.routes.draw do
    resources :homes
    root to: "homes#hello"
end