Rails.application.routes.draw do
  resources :projects do
    resources :spelling_prefixes
  end
end