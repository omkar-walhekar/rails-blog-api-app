class ApplicationController < ActionController::API
  include ::ActionController::Caching
  # before_action :ensure_json_request  

  # def ensure_json_request  
  #   puts request.format
  #   return if request.format == :json
  #   render :nothing => true, :status => 406  
  # end  
end
