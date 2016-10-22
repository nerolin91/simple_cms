Rails.application.routes.draw do
#   get 'subjects/index'

#   get 'subjects/show'

#   get 'subjects/new'

#   get 'subjects/edit'

#   get 'subjects/delete'

  match ':controller(/:action(/:id))', :via => :get
  root 'demo#index'

end
