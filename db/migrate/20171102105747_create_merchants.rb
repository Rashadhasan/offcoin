class CreateMerchants < ActiveRecord::Migration[5.1]
  def change
    create_table :merchants do |t|
      t.string :business_name
      t.integer :outlet_count
      t.string :address
      t.text :description
      t.integer :like_count
      t.integer :share_count
      t.integer :area_id
      t.timestamps
    end
  end
end
