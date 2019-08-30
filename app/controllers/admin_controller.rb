class AdminController < ApplicationController
	layout 'admin'
  before_action :authentication_admin!
 	
 	
  def index
  end

  def current_class?(test_path)
  	'active' if request.path == test_path
	end
end
