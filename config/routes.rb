Rails.application.routes.draw do
  get 'staticpages/home'
  get 'staticpages/help'
  get 'staticpages/contact'
  root "staticpages#home"
end
