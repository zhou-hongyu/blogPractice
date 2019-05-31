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
  get '/news/20190410-1', to: 'welcome#news_20190410_1'
  get '/news/20190412-1', to: 'welcome#news_20190412_1'
  get '/news/20190416', to: 'welcome#news_20190416'
  get '/news/20190418', to: 'welcome#news_20190418'
  get '/news/20190423', to: 'welcome#news_20190423'
  get '/news/20190426', to: 'welcome#news_20190426'
  get '/news/20190507', to: 'welcome#news_20190507'
  get '/news/20190510', to: 'welcome#news_20190510'
  get '/news/20190514', to: 'welcome#news_20190514'
  get '/news/20190516', to: 'welcome#news_20190516'
  get '/news/20190527', to: 'welcome#news_20190527'
  get '/news/20190530', to: 'welcome#news_20190530'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
Rails.root.join("public", "robots.txt")