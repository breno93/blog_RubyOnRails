Rails.application.routes.draw do
  devise_for :users

  resources :posts do # /posts/1/comments/2
    resources :comments
  end


  get "up" => "rails/health#show", as: :rails_health_check
  get "home", controller: "home", action: "index", as: "home"
  # get "estudante", to: "estudante#index", as: "estudantes"

  root "home#index"
end
