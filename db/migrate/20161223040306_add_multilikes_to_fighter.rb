class AddMultilikesToFighter < ActiveRecord::Migration
  def change
    add_column :fighters, :likes2, :string
    add_column :fighters, :likes3, :string
    add_column :fighters, :like4, :string
    add_column :fighters, :likes5, :string
    add_column :fighters, :likes6, :string
    add_column :fighters, :likes7, :string
    add_column :fighters, :likes8, :string
    add_column :fighters, :like9, :string
    add_column :fighters, :like10, :string
  end
end
