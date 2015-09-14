class CreateMembersclubs < ActiveRecord::Migration
  def change
    create_table :membersclubs do |t|
      t.string :name
      t.string :location
      t.string :genre

      t.timestamps null: false
    end
  end
end
