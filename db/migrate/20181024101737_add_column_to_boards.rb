class AddColumnToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :user_id, :integer
    add_column :boards, :evaluation, :integer
    add_column :boards, :fee, :integer
    add_column :boards, :title, :string
    add_column :boards, :category, :string
    add_column :boards, :area, :string
    add_column :boards, :content, :text
  end
end
