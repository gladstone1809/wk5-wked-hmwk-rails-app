class AddViploungIdToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :viplounge, index: true, foreign_key: true
  end
end
