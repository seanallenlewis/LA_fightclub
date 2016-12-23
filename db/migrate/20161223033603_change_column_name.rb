class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :fighters, :likes, :likes1
    rename_column :fighters, :hates, :hates1
    rename_column :fighters, :like4, :likes4
    rename_column :fighters, :like9, :likes9
    rename_column :fighters, :like10, :likes10
  end
end
