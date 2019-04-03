Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/message'
  get '/products', to: 'welcome#products', as: 'products'
  get '/Portable-Tamping-Pickaxe', to: 'welcome#portable_tamping_pickaxe', as: 'Portable_Tamping_Pickaxe'
  get '/factory', to: 'welcome#factory', as: 'factory'
  get '/news', to: 'welcome#news', as: 'news'
  get '/case', to: 'welcome#case', as: 'case'
  get '/contact_us', to: 'welcome#contact_us', as: 'contact_us'
  get '/company', to: 'welcome#company', as: 'company'
  get '/robots.txt', to: 'welcome#robots'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
Rails.root.join("public", "robots.txt")