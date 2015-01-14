# This migration comes from spree_vouchers (originally 20140219134838)
class CreateSpreeVouchers < ActiveRecord::Migration
  def change
    create_table :spree_vouchers do |t|
      t.string :number, :null =>false
      t.date :expiration
      t.decimal :original_amount, :default => 0, :null =>false, :precision => 8, :scale => 2
      t.decimal :remaining_amount, :null =>false, :precision => 8, :scale => 2
      t.decimal :authorized_amount, :default => 0, :null =>false, :precision => 8, :scale => 2
      t.string :currency
    end

    add_index :spree_vouchers, :expiration
  end
end
