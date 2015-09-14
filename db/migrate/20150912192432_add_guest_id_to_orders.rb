class AddGuestIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :guest, index: true, foreign_key: true
  end
end
