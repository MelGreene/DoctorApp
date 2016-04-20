class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :ChildID
      t.text :CLastName
      t.text :CFirstName
      t.text :Age
      t.date :Date
      t.text :Notes

      t.timestamps null: false
    end
  end
end
