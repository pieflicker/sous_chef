class Recipe < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions

      t.timestamps
    end
  end
end
