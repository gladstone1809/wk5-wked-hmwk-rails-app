class AddEventIdToViplounge < ActiveRecord::Migration
  def change
    add_reference :viplounges, :event, index: true, foreign_key: true
  end
end
