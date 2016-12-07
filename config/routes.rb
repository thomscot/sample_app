Rails.application.routes.draw do
  # The rule below maps requests for the URL /static_pages/home to the home action in the StaticPages controller.
  # Moreover, by using get we arrange for the route to respond to a GET request
  get 'static_pages/home'
  get 'static_pages/help'
  get  'static_pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  
  # test to root directly home page instead of hello page
	root 'static_pages#home'
end
