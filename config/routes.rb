Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope '/api' do
    resources :summaries
    resources :movies
    resources :movie_choices
    
    # https://guides.rubyonrails.org/routing.html#adding-more-restful-actions
    # resources :movie_choices do
    #   get 'list', on: :collection
    # end
  end
  
end
