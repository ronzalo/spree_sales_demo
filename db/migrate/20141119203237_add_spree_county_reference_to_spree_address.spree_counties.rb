# This migration comes from spree_counties (originally 20140729203900)
class AddSpreeCountyReferenceToSpreeAddress < ActiveRecord::Migration
  def change
    add_reference :spree_addresses, :county, index: true
  end
end
