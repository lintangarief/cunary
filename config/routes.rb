Cunary::Application.routes.draw do

  get 'features' => 'pages#features'

  get 'docs' => 'documentation#index'
  get 'docs/*path' => 'documentation#page', :as => 'docs_page'

  get 'code' => 'pages#code'
  get 'code/release-notes' => 'pages#release_notes', :as => 'code_release_notes'
  get 'code/modules' => 'pages#modules'

  get 'support' => 'pages#support'
  get 'support/involvement' => 'pages#involvement'
  get 'support/commercial' => 'pages#commercial_support'
  get 'support/development' => 'pages#development'

  get 'about' => 'pages#about'
  get 'about/partners' => 'pages#partners'
  get 'about/license' => 'pages#license'
  get 'about/contributing' => 'pages#contributing'
  get 'about/logos' => 'pages#logos'

  root :to => 'pages#home'
end
