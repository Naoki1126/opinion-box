Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :users, only: [:new,:index,:show,:edit,:update,:destroy] do
      collection do
        get 'login'
        post 'login_form'
      end
    end

    resources :posts, only: [:new,:index,:show,:create]

    root 'homes#top'
end
