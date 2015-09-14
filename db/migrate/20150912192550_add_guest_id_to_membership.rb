class AddGuestIdToMembership < ActiveRecord::Migration
  def change
    add_reference :memberships, :guest, index: true, foreign_key: true
  end
end
