Rails.application.routes.draw do
  root 'pages#index'
  namespace :api do
    namespace :v1 do
      resources :years, param: :name
      resources :subjects, param: :slug
      get 'subject/:slug/reviews', to: 'reviews#get_by_subject'
      get 'year/:year_id/subjects', to: 'subjects#get_by_year'
      resources :reviews, only: [:create, :destroy]
    end
  end
  
  get '*path', to: 'pages#index', via: :all
end
