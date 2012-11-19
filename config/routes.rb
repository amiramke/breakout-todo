Todo::Application.routes.draw do

  devise_for :users

  resources :todo_lists
  resources :tasks, :only => [:destroy]
  root :to => 'todo_lists#index'
end
