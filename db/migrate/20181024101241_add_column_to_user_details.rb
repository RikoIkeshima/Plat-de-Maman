class AddColumnToUserDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :user_details, :file_type, :string
    add_column :user_details, :file_name, :string
    add_column :user_details, :content, :text
  end
end
