class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.datetime :expiration
      t.string :food_type

      t.timestamps
    end
  end
end
