Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "home#top"
  get '/search' => "home#search"
  get '/search_one_month' => "home#search_one_month"

  get 'article/show/:year/:month/:day' => "article#show"
  get 'article/show_one_month/:year/:month' => "article#show_one_month"

end
