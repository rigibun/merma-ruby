Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, path: "",
                     path_names: {
                       sign_up: "",
                       sign_in: "login",
                       sign_out: "logout",
                       registration: "signup",
                     },
                     controllers: {
                       registrations: "users/registrations",
                       sessions: "users/sessions",
                     }
  root to: "static_pages#home"

  resources :users, only: [:show]
  resources :items
end
