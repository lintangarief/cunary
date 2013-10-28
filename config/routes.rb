ShoppeWebsite::Application.routes.draw do
  
  get 'features' => 'pages#features'
  get 'code' => 'pages#code'
  get 'docs' => 'pages#docs'
  get 'support' => 'pages#support'
  
  get 'about' => 'pages#about'
  get 'about/partners' => 'pages#partners'
  get 'about/license' => 'pages#license'
  get 'about/contributing' => 'pages#contributing'
  get 'about/logos' => 'pages#logos'
  
  root :to => 'pages#home'
end
