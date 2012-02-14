class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
       @arr=current_user.roles.map(&:name)
       if @arr.include?"admin"
         return Admin_admin_index_path
        else
       return dashboard_index_path
       end

 end
end
