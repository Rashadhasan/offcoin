class CreateMerchantSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :merchant_sub_categories do |t|
      t.string :sub_category_type
      t.integer :category_id

      t.timestamps
    end
  end
end
