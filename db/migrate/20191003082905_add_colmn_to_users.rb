class AddColmnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstname, :string, null: false
    add_column :users, :lastname, :string, null: false
    add_column :users, :firstname_kana, :string, null: false
    add_column :users, :lastname_kana, :string, null: false
    add_column :users, :postalcode, :integer, null: false
    add_column :users, :prefecture_id, :integer, null: false
    add_column :users, :city, :string, null: false
    add_column :users, :address, :string, null: false
    add_column :users, :building, :string
  end
end
