Rails.application.routes.draw do
  root 'pages#home'
  get '/foo', :to => redirect('/static.html')
end
