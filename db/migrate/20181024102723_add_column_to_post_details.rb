class AddColumnToPostDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :post_details, :post_id, :integer
    add_column :post_details, :file_type, :string
    add_column :post_details, :file_name, :string
    add_column :post_details, :content, :text
  end
end
