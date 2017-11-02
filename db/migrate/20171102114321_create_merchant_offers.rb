class CreateMerchantOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :merchant_offers do |t|
      t.integer :merchant_id
      t.string :offername
      t.integer :days, array: true, default: []
      t.datetime :offer_start_at
      t.datetime :offer_end_at
      t.datetime :offer_start_time
      t.datetime :offer_end_time

      t.timestamps
    end
  end
end
