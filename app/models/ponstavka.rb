class Ponstavka < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :stavka  
end
