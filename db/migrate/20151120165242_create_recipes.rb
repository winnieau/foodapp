class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :rating
      t.string :thumbnail
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
