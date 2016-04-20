class CreateVitals < ActiveRecord::Migration
  def change
    create_table :vitals do |t|
      t.decimal :Height
      t.decimal :Weight
      t.decimal :HeadCircumference
      t.date :Date

      t.timestamps null: false
    end
  end
end
