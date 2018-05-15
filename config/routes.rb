Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #CRUD

    # CREATE
      # CREATE - Get a form
      get 'articles/new', to: 'articles#new', as: 'new_article'
      # CREATE - create new article
      post 'articles', to: 'articles#create'
    # READ
      # READ - index
      get 'articles', to: 'articles#index'
      # READ - show
      get 'articles/:id', to: 'articles#show', as: 'article'

    # UPDATE
      # UPDATE - Get a form
      get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'
      # UPDATE - update instance
      patch 'articles/:id', to: 'articles#update'

    #DELETE
      # DELETE - instance
      delete 'articles/:id', to: 'articles#destroy'
end
