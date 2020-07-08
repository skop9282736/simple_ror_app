Rails.application.routes.draw do
  get '/signup', to: 'users#new', as: 'signup'
  get '/home', to: 'staticpages#home', as: 'home'
  get '/help', to: 'staticpages#help', as: 'help'
  get '/contact', to: 'staticpages#contact', as: 'contact'
  root "staticpages#home"
end