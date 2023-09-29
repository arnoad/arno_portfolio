Rails.application.routes.draw do
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  # get "pages/home"
  # root to: "pages#home"
  get 'pages/home', to: 'pages#home'

  get 'contacts/new', to: 'contacts#new'
  post 'contacts/send_email', to: 'contacts#send_email'
  
end
