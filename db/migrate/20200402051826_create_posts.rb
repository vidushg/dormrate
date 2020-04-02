class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.string :room
      t.integer :rating
      t.string :desc

      t.timestamps
    end
  end
end
