class Recipe < ActiveRecord::Base

  validates :title, :description, :ingredients, :instructions, :category, :presence => true
  mount_uploader :recipeimage, ImagesUploader

end
