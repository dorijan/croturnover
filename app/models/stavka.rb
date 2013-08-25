class Stavka < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :tip
end
