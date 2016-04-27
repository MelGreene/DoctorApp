class AddVitalRefToChildren < ActiveRecord::Migration
  def change
    add_reference :children, :vital, index: true, foreign_key: true
  end
end
