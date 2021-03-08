class AddColumnsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :date, :string
  end
end
