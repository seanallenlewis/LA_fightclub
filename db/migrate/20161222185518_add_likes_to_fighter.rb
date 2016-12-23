class AddLikesToFighter < ActiveRecord::Migration
  def change
    add_column :fighters, :likes, :string
  end
end
