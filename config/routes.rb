Rails.application.routes.draw do


  devise_for :students
    #sessions: 'students/sessions',
    #registrations: 'students/registrations',
    #unlocks: 'students/unlocks',
    #confirmations: 'students/confirmations',
    #passwords: 'students/passwords'
  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'students#index'
  get 'dashboard',to: 'students#dashboard'


end
