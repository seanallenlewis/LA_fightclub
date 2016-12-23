class AddHatesToFighter < ActiveRecord::Migration
  def change
    add_column :fighters, :hates, :string
  end
end
