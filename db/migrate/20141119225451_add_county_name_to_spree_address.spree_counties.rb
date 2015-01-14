# This migration comes from spree_counties (originally 20141119225426)
class AddCountyNameToSpreeAddress < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :county_name, :string
  end
end
