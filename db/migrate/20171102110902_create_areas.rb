class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :city_id
      t.integer :pincode

      t.timestamps
    end
  end
end
