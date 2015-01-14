# This migration comes from spree_vouchers (originally 20140324200009)
class AddLineItemIdToSpreeVouchers < ActiveRecord::Migration
  def change
    add_column :spree_vouchers, :line_item_id, :integer, null: true
    add_index :spree_vouchers, :line_item_id
  end
end
