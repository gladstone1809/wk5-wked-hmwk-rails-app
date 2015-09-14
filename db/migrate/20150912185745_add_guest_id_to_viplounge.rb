class AddGuestIdToViplounge < ActiveRecord::Migration
  def change
    add_reference :viplounges, :guest, index: true, foreign_key: true
  end
end
