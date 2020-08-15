Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :users, only: [:new,:show,:edit,:create,:update,:destroy] do
      collection do
        post 'login'
        get 'login_form'
        post 'logout'
      end
    end
    resources :tags, only: [:index,:show,:create] do
      get 'post', to: 'posts#index'
    end
    resources :posts, only: [:show,:create,:destroy,:edit,:update] do
      collection do
        resource :comment, only: [:create,:destroy]
        resource :favorite, only: [:create,:destroy]
      end
    end


    root 'homes#top'
end
