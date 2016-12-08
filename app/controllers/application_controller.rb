class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # No longer needed after re-routing to home page
# 	def hello
#   	render html: "Hello, sucker!"
# 	end
end
