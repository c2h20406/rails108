Rails.application.routes.draw do
  devise_for :users
	root 'groups#index'
	resources :groups do
		member do
			post :join
			post :quit
		end
		resources :posts
	end

	namespace :account do 
		resources :groups
		resources :posts
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
