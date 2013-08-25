class Ulracuni < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :scan, :datum, :firma_id, :opis, :iznos, :priznos
  has_attached_file :scan, :styles => { :normal => "595x842>"}  
end
