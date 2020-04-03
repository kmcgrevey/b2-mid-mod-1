class CreateAmuseParks < ActiveRecord::Migration[5.1]
  def change
    create_table :amuse_parks do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
