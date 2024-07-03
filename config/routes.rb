Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shifts, only: [:index, :create] do
    collection do
      get 'add'
      get 'usersmanager'
      get 'usersmanageradd'
      get 'usersmanagermkshift'
      get 'complete'
      get 'mypage'
      post 'save_shifts'
      get 'requesteddayoff'
      post 'save_requested_days_off'
      get 'decisiondayoff'
      post 'save_decision_days_off'
    end
  end
  resources :decision_attendances, only: [:destroy]
end
