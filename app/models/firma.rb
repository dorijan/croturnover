class Firma < ActiveRecord::Base
  attr_accessible :naziv, :sjediste, :adresa1, :adresa2, :gradbroj, :mb, :OIB, :ibanbrracuna
end
