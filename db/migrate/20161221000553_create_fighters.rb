class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :email
      t.integer :weight
      t.integer :age
      t.string :email
      t.string :style
      t.string :location
      t.integer :wins
      t.integer :losses
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
