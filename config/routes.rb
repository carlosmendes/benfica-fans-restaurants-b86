Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  # same as above
  # get '/', to: 'pages#home'

  # url pages/contact is going to be processed by the contact action inside of pages controller
  get 'pages/contact', to: 'pages#contact'

  get 'pages/about', to: 'pages#about'
  get 'about', to: 'pages#about'

  get 'team', to: 'pages#team'

  get 'restaurants', to: 'restaurants#index'

  post 'restaurants', to: 'restaurants#create'

  # as redefine the name of the url to restaurant
  get 'restaurants/:number', to: 'restaurants#show', as: 'restaurant'
  # number is going to be available on params and will have the value of 1,2, N
  # get 'restaurants/1', to: 'restaurants#show'
  # get 'restaurants/2', to: 'restaurants#show'

end
