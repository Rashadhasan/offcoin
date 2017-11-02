class CreateMerchantCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :merchant_categories do |t|
      t.string :category_type

      t.timestamps
    end
  end
end
