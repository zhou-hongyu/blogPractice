Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/message'
  get '/products', to: 'welcome#products', as: 'products'
  get '/factory', to: 'welcome#factory', as: 'factory'
  get '/case', to: 'welcome#case', as: 'case'
  get '/contact_us', to: 'welcome#contact_us', as: 'contact_us'
  get '/company', to: 'welcome#company', as: 'company'
  get '/robots.txt', to: 'welcome#robots'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
Rails.root.join("public", "robots.txt")