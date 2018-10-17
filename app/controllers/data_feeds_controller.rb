class DataFeedsController < ApplicationController
  before_action :filter_ip_address
  
  def home
  end


  private
    
    def filter_ip_address
    	requestor = Integration.where(ip: request.remote_ip).present?
    	head :unauthorized unless requestor
    end
end
