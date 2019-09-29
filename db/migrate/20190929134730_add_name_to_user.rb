class AddNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false, limit: 20
  end
end
