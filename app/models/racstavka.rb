class Racstavka < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :stavka    
end
