# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'api/lessons#index'

  mount_devise_token_auth_for 'Teacher', at: 'api/teacher_auth'

  namespace 'api' do
    resources :lessons, only: [:index, :create]
    resources :current_teacher, only: [:show, :update]
  end
end
