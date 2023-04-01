Rails.application.routes.draw do
  resources :user     #register user
  resources :clients  # loan applications
  resources :loans    # create loan
  resources :datums   # collect data
  resources :payment  # pay loan
  resources :sessions, only: [:new, :create, :destroy] #login | logout

end
