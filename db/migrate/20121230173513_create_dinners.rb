class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :time
      t.string :who
      t.integer :number

      t.timestamps
    end
  end
end
