class CreateViplounges < ActiveRecord::Migration
  def change
    create_table :viplounges do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
