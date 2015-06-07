Rails.application.routes.draw do
	root to: 'pages#home'
	resources :guests, except: [:index]
end
