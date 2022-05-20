Rails.application.routes.draw do
  resources :rahuls
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "factorial#index"
  get "/fact", to: "factorial#fact_no"
  get "/fact/:num", to: "factorial#fact_no"
end
