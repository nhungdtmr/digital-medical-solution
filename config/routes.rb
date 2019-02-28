Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  scope "(:locale)", locale: /en|vi/ do
    devise_for :users
    root "static_pages#home"
    get "static_pages/home"
    get "static_pages/contact"
    get "posts/new"
    post "posts/create"
    resources :posts
    resources :videos
  end

  namespace :admin do
  	resources :users
  end
end
