class AddClassifyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :classify, :string
  end
end
