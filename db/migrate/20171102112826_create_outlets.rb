class CreateOutlets < ActiveRecord::Migration[5.1]
  def change
    create_table :outlets do |t|
      t.string :name
      t.text :address
      t.integer :aread_id
      t.integer :category_id
      t.integer :merchant_id
      
      t.timestamps
    end
  end
end
