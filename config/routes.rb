Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :marks
  root "students#index"
end
