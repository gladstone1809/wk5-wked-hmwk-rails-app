class AddViploungIdToMembersclub < ActiveRecord::Migration
  def change
    add_reference :membersclubs, :viplounge, index: true, foreign_key: true
  end
end
