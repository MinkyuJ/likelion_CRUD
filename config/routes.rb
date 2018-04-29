Rails.application.routes.draw do
  get 'home/index'

  get 'home/new'

  post 'home/create'
  
  root 'home#index'

  get 'home/show/:daygram_id' => 'home#show'

  get 'home/destroy/:daygram_id' => 'home#destroy'

  get 'home/edit/:daygram_id' => 'home#edit'

  post 'home/update/:daygram_id' => 'home#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
