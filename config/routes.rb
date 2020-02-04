Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # read all tasks
  get "tasks", to: "tasks#index"

  # create one task (2 requests)
  # 1st request to get the form
  # 2nd request to post the params

  get "tasks/new", to: "tasks#new", as: "new_task"
  post "tasks", to: "tasks#create"

  # update one task
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

  # delete one task
  delete "tasks/:id", to: "tasks#destroy"

  # read one task
  get "tasks/:id", to: "tasks#show", as: "task"

end
