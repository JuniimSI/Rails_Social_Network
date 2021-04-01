Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}
  
  namespace :admin do
    #admin/posts - #admin/users
    root to: "home#index"
    resources :admins
    resources :users, only: :index
  end

  root to: "user/timeline#index"

  namespace :user do
    #user/posts - #admin/users
    #root to: "timeline#index"
    #resources :users
  end

end
