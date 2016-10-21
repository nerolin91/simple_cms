Rails.application.routes.draw do
  match ':controller(/:action(/:id))', :via => :get
  root 'demo#index'

end
