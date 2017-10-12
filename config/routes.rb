Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
  	resources :comments #nested resource, showing the hierarchical relationship
  end

  #Tell Rails to map requests to the root of the application to the welcome controller's index action
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
