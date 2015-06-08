class CreatePlacards < ActiveRecord::Migration
  def change
    create_table :placards do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
