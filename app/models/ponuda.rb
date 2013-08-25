class Ponuda < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible  :firma_id, :datum , :redbroj
  belongs_to :firma  
end
