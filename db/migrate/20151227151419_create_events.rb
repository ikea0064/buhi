class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :amount
      t.string :comment

      t.timestamps null: false
    end
  end
end
