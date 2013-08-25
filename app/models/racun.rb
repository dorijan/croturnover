class Racun < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible  :firma_id, :datum, :datumdob, :redbroj, :godina, :vrstar, :rokpl, :dodajzig, :placeno  
  belongs_to :firma  
end
