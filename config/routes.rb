Rails.application.routes.draw do
  devise_for :users
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}
  
  namespace :admin do
    #admin/posts - #admin/users
    root to: "home#index"
    resources :admins
  end

  root to: "user/timeline#index"

  namespace :user do
    #user/posts - #admin/users
    #root to: "timeline#index"
    #resources :users
  end

end
