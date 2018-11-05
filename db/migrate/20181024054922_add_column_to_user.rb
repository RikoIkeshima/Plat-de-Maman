class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :user_type, :string
      add_column :users, :birthday, :date
      add_column :users, :gender ,:string
      add_column :users, :area ,:string
      add_column :users, :category ,:string
      add_column :users, :icon ,:string
      add_column :users, :first_name, :string
      add_column :users, :family_name ,:string
      add_column :users, :introduction ,:text
  end
end
