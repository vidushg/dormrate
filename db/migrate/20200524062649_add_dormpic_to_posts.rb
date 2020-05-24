class AddDormpicToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :dormpic, :string
  end
end
