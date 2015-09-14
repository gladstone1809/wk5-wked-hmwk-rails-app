class AddGuestIdToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :guest, index: true, foreign_key: true
  end
end
