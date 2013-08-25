class Loko < ActiveRecord::Base
  attr_accessible :radnik_id, :auto_id, :datum, :poc_broj, :kraj_broj, :lokacija, :izvjesce, :dodatak, :dodcijena
end
