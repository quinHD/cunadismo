Rails.application.routes.draw do
  get "/success", to: "site#success"
  root to: "games#new"
  resources :players do
    resources :games do
      resources :questions
      member do
        get 'intro'
        get 'mercy_success'
        get 'mercy_failure'
        get 'punishment_success'
        get 'punishment_failure'
        get 'turra'
        get 'cruz'
        get 'felices'
      end
    end
  end
  resources :sentences
end
