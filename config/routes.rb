ShoppeWebsite::Application.routes.draw do
  
  get 'about' => 'pages#about'
  get 'about/partners' => 'pages#partners'
  get 'about/license' => 'pages#license'
  get 'about/contributing' => 'pages#contributing'
  get 'about/logos' => 'pages#logos'
  
  root :to => 'pages#home'
end
