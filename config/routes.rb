Rails.application.routes.draw do
      # list all tasks
      get "tasks", to: "tasks#index", as: :tasks

      # show details of one task
      get "tasks/new", to: "tasks#new", as: :new_task
      get "tasks/:id", to: "tasks#show", as: :task
  
      # add a new task
      post "tasks", to: "tasks#create"
  
      # update/edit a task
      get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
      patch "tasks/:id", to: "tasks#update"

      # delete a task
      delete "tasks/:id", to: "tasks#destroy"
end
