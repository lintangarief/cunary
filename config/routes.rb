ShoppeWebsite::Application.routes.draw do
  
  get 'features' => 'pages#features'
  get 'code' => 'pages#code'
  get 'support' => 'pages#support'

  get 'docs' => 'documentation#index'
  get 'docs/*path' => 'documentation#page', :as => 'docs_page'
  
  get 'about' => 'pages#about'
  get 'about/partners' => 'pages#partners'
  get 'about/license' => 'pages#license'
  get 'about/contributing' => 'pages#contributing'
  get 'about/logos' => 'pages#logos'
  
  root :to => 'pages#home'
end
