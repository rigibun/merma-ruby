Rails.application.routes.draw do
  devise_for :users, path: '', controllers: {
                       sessions: "users/sessions",
                     }
  root to: "static_pages#home"
  get 'sign_up' , to: 'devise/registrations#new'
end
