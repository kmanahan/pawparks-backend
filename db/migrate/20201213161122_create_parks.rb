class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :url
      t.float :lat
      t.float :long
      t.string :image_url
      t.string :address

      t.timestamps
    end
  end
end
