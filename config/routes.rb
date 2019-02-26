Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/company'
  get 'welcome/products'
  get 'welcome/news'
  get 'welcome/factory'
  get 'welcome/case'
  get 'welcome/contact_us'
  get 'welcome/message'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
