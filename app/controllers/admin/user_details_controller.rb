class Admin::UserDetailsController < ApplicationController
	before_filter:authenticate_user!
      before_filter:auth
 def auth
  @arr=current_user.roles.map(&:name)
       if !@arr.include?"admin" then
         redirect_to "/dashboard/index"
			 end
			 end
	def index
		end
		
		def user_list
		  @user=User.find(:all,:conditions=>["id!=?",15])
		end
end
