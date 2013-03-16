FieldableFormExampleApp::Application.routes.draw do
  resources :products
  resources :product_types
  root :to => 'product_types#index'
end
