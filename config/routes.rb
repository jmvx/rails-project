Rails.application.routes.draw do
  resources :events, except: [:index]
	root to: 'pages#home'
	resources :guests, except: [:index]
end
