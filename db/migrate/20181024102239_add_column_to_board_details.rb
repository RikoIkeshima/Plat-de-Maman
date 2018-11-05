class AddColumnToBoardDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :board_details, :board_id, :integer
    add_column :board_details, :file_type, :string
    add_column :board_details, :file_name, :string
    add_column :board_details, :content, :text
  end
end
