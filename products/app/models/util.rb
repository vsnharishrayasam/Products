class Util

  public
  def self.shorten_with_bitly(url)
    require "rubygems"
    require 'open-uri'
    require 'net/http'
    # build url to bitly api
    user = "harishvsn"
    apikey = "R_e4336d40477eddff4747f61cec47752d"
    version = "2.0.1"
    bitly_url = "http://api.bit.ly/shorten?longUrl=#{url}&apiKey=#{apikey}&login=#{user}"
    # parse result and return shortened url
    begin
    buffer = open(bitly_url, "UserAgent" => "Ruby-ExpandLink").read
    result = JSON.parse(buffer) 
    short_url = result['results'][url]['shortUrl']
    rescue Exception => e
      #puts "e #{e} #{e.backtrace.join('\n')}"
      short_url = url
    end 
    return short_url 
  end
  
  def self.get_localhost_bitlyurl(url)
    return "" if(url.nil?)
    url = url.gsub("localhost",'127.0.0.1')
    url = "http://127.0.0.1:3000" + url if(url.scan("127.0.0.1").size == 0)
    return url
  end
  end