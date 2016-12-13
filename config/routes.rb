Rails.application.routes.draw do
  get 'users/new'

  # test to root directly home page instead of hello page
	root 'static_pages#home'
  # The rule below maps requests for the URL /static_pages/home to the home action in the StaticPages controller.
  # Moreover, by using get we arrange for the route to respond to a GET request
  
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  
  get  '/help', to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  
end
