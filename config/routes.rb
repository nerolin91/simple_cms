Rails.application.routes.draw do
  # get 'sections/index'

  # get 'sections/show'

  # get 'sections/new'

  # get 'sections/edit'

  # get 'sections/delete'

  # get 'pages/index'

  # get 'pages/show'

  # get 'pages/new'

  # get 'pages/edit'

  # get 'pages/delete'

#   get 'subjects/index'

#   get 'subjects/show'

#   get 'subjects/new'

#   get 'subjects/edit'

#   get 'subjects/delete'

  match ':controller(/:action(/:id))', :via => [:get,:post]
  root 'demo#index'

end
