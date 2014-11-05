RR03::Application.routes.draw do
 
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :posts do
    resources :comments
  end
 
  resources :users do
  end
 
  root :to => "posts#index"
end