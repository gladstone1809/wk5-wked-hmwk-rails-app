class AddMembersclubIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :membersclub, index: true, foreign_key: true
  end
end
