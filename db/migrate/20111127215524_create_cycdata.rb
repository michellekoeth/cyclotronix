class CreateCycdata < ActiveRecord::Migration
  def change
    create_table :cycdata do |t|
      t.string :part
      t.string :measurement
      t.string :unit
      t.decimal :value
      t.datetime :ts

      t.timestamps
    end
  end
end
