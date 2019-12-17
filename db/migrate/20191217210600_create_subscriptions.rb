class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :klass_id
      t.boolean :favorite

      t.timestamps
    end
  end
end
