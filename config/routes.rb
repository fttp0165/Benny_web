Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "information#index"


  namespace :admin do
    root  'projects#index'
    resources :projects,except:[:show]
    resources :skills,except:[:show]
    resources :information,except:[:show]
    resources :experiences,except:[:show]
    resources :categories,except:[:show]
    resources :articles,except:[:show]
  end
  resources :projects
  resources :information
  resources :skills
  resources :articles,only:[:show,:index]
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
