Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
# "provider" makes it dynamic - meaning its like a placeholder. 
end
