class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :exhibitor, foreign_key: { to_table: :users }, index: true, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.integer :condition, null: false

      t.timestamps
    end
  end
end
