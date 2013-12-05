Splash::Application.routes.draw do
  root 'subscriptions#new'

  resource :subscriptions
end
