class Admin::AdminController < ApplicationController
	before_filter:authenticate_user!
before_filter:auth
 def auth
  @arr=current_user.roles.map(&:name)
       if !@arr.include?"admin" then
         redirect_to "/dashboard/index"
     end
	def index
		end
	
end
