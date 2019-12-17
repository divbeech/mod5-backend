class CreateKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :klasses do |t|
      t.integer :studio_id
      t.integer :user_id
      t.string :session
      t.string :time
      t.datetime :start
      t.datetime :end
      t.integer :cost
      t.string :instructor

      t.timestamps
    end
  end
end
