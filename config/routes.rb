Splash::Application.routes.draw do
  root 'subscriptions#new'

  resources :subscriptions
end
