Treebook::Application.routes.draw do
  
  get "profiles/show"
  root :to => "statuses#index"

  devise_for :users
  get "/:id", to: "profiles#show"


	devise_scope :user do
		get "sign_up", to: "devise/registrations#new"
	  get "sign_in", to: "devise/sessions#new"	  
	  get "sign_out", to: "devise/sessions#destroy"
	end 

	resources :statuses

	get "feed", to: "statuses#index"	 
end
