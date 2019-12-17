class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.integer :zipcode
      t.float :longitude
      t.float :latitude
      t.string :logo

      t.timestamps
    end
  end
end
