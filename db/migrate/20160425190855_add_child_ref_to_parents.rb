class AddChildRefToParents < ActiveRecord::Migration
  def change
    add_reference :parents, :child, index: true, foreign_key: true
  end
end
