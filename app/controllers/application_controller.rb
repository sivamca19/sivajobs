class ApplicationController < ActionController::Base
  before_filter :check_expire
  protect_from_forgery
  
  before_filter :check_expire

   def check_expire
     if session[:expire_time] and session[:expire_time] < Time.now
       return destroy_user_session_path
     else
       session[:expire_time] = 1.minutes.since
     return true
  end
end
  
  def after_sign_in_path_for(resource)
       @arr=current_user.roles.map(&:name)
       if @arr.include?"admin"
        return admin_user_details_index_path
      elsif  @arr.include?"job_seeker"
        if current_user.sign_in_count <= 1
       return profile_job_seeker_new_path
       else
          return dashboard_index_path
          end
       elsif @arr.include?"Employer"
          if current_user.sign_in_count <= 1
         return profile_employer_new_path
          else
          return dashboard_index_path
          end
             end

 end
 

end
