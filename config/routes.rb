Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "static_pages/home"
    get "static_pages/contact"
    get "posts/new"
    post "posts/create"
    resources :posts
    resources :posts do
      resources :votes, only: %i(create destroy)
    end
    resources :videos
  end

  namespace :admin do
  	resources :users
  end
end
