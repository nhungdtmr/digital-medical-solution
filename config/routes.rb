Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    devise_for :users
    root "static_pages#home"
    get "static_pages/home"
    get "static_pages/contact"
  end

  namespace :admin do
  	resources :users
  end
end
