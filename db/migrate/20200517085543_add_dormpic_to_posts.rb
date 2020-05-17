class AddDormpicToPosts < ActiveRecord::Migration[5.1]
  def change
  end
  def self.up
    add_attachment :posts, :dormpic
  end

  def self.down
    remove_attachment :posts, :dormpic
  end
end
