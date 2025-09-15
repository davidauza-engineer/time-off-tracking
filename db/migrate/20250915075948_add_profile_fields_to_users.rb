class AddProfileFieldsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :role, :integer, null: false, default: 0
    add_reference :users, :department, foreign_key: true
    add_reference :users, :manager, foreign_key: { to_table: :users }
  end
end
