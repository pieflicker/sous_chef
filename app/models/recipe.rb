class Recipe < ActiveRecord::Base

  validates :title, :description, :ingredients, :instructions, :presence => true

end
