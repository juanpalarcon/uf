Rails.application.routes.draw do
  get 'uf/:date', to: 'units#uf'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
