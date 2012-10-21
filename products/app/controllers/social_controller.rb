class SocialController < ApplicationController
  def blank    
    render :text => "Not Found", :status => 404
  end
  
  def create
    omniauth = request.env["omniauth.auth"]
    authentication = SocialAuth.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    puts "omniauth #{omniauth}"
    if authentication
      session[:user] = "#{authentication.id}_#{authentication.provider}"
      session[:user_name] = "#{authentication.user_name}"
      redirect_to product_paginate_url 
    else
      puts "omniauth #{omniauth['user_info']}"
      authentication = SocialAuth.new
      authentication.provider = omniauth['provider']
      authentication.uid = omniauth['uid']
      authentication.user_name = omniauth['user_info']['name']
      authentication.email = omniauth['user_info']['email']
      authentication.access_token = omniauth[:access_token]
      authentication.save
      session[:user] = "#{authentication.id}_#{authentication.provider}"
      session[:user_name] = authentication.user_name
      session[:email] = authentication.email
      redirect_to product_paginate_url
    end
  end 
  
  def logout
    session[:user] = nil
    session[:user_name] = nil
    session[:email] = nil
    redirect_to product_paginate_url
  end
  
end
