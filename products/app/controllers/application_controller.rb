# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  #bitly api key "harishvsn": R_e4336d40477eddff4747f61cec47752d
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
