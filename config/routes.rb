Rails.application.routes.draw do
  namespace :admin do
	  get 'dashboard/main'
	  get 'dashboard/user'
	  get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'
  get 'contact/long/url/link', to:'pages#contact', as: 'lead'


  resources :blogs
  resources :posts

  #glabbing
  get 'post/*missing', to: 'posts#missing'

  get 'query/:value/:another_value', to: 'pages#something'
  get 'query/:value/', to: 'pages#something'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
