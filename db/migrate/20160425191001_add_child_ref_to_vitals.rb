class AddChildRefToVitals < ActiveRecord::Migration
  def change
    add_reference :vitals, :child, index: true, foreign_key: true
  end
end
