class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :state_id
      t.string :code

      t.timestamps
    end
  end
end
