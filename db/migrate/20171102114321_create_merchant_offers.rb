class CreateMerchantOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :merchant_offers do |t|
      t.integer :merchant_id
      t.string :offername

      t.timestamps
    end
  end
end
