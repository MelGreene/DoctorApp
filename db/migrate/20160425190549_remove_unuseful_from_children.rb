class RemoveUnusefulFromChildren < ActiveRecord::Migration
  def change
    remove_column :children, :ChildID, :integer
    remove_column :children, :vital_id, :integer
    remove_column :children, :parent_id, :integer
  end
end
