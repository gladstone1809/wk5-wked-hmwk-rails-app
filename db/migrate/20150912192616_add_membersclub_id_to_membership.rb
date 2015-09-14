class AddMembersclubIdToMembership < ActiveRecord::Migration
  def change
    add_reference :memberships, :membersclub, index: true, foreign_key: true
  end
end
