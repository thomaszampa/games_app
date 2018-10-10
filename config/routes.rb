Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/fortune_url" => "api/example_pages#fortune_method"
  get "/lotto_url" => "api/example_pages#lotto_method"
  get "/99_bottles_url" => "api/example_pages#ninety_nine_bottles_method"
end
