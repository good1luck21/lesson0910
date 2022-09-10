Rails.application.routes.draw do
  get '/' => 'posts#index'
  post 'posts' => 'posts#create'
  post 'posts/:id' => 'posts#update'
  post 'posts/:id/delete' => 'posts#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
