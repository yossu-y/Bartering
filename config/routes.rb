Rails.application.routes.draw do

  get 'users/show'
  get 'users/index'
  get 'users/edit'
  devise_for :users
  
  root to: "homes#top"
  get "homes/about" => "homes#about",as: "about"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
