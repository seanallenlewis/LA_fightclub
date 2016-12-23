class AddMultihatesToFighter < ActiveRecord::Migration
  def change
    add_column :fighters, :hates2, :string
    add_column :fighters, :hates3, :string
    add_column :fighters, :hates4, :string
    add_column :fighters, :hates5, :string
    add_column :fighters, :hates6, :string
    add_column :fighters, :hates7, :string
    add_column :fighters, :hates8, :string
    add_column :fighters, :hates9, :string
    add_column :fighters, :hates10, :string
  end
end
