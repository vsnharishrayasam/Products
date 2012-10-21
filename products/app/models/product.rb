class Product < ActiveRecord::Base

  def self.search_offset(offset = 10,per_page = 10)
     Product.find(:all, :offset => offset, :limit => per_page)   
  end
end
