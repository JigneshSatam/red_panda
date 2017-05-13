Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root 'devise/sessions#new'
  end
  get "/home", to: "application#home"
  resources :test_questions do
    member do
      post "user_response"
    end
  end
  resources :tests do
    member do
      post "submit"
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
