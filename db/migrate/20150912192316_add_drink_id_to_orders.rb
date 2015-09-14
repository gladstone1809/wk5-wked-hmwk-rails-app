class AddDrinkIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :drink, index: true, foreign_key: true
  end
end
