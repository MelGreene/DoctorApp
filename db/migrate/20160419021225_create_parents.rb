class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :ParentID
      t.text :PLastName
      t.text :PFirstName
      t.text :Email
      t.integer :Phone

      t.timestamps null: false
    end
  end
end
