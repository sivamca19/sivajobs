class ProjectController < ApplicationController
   before_filter:authenticate_user!,:except => [:index,:rails,:rails_project_list]
  def index
  end

  def new
  end

  def create
  end

  def show
  end
  
   def rails
  
end

def rails_project_list
  
end

def project_download
   send_file "#{Rails.root}/public/MediaKit.pdf", :x_sendfile => true
  
  end
  
end
