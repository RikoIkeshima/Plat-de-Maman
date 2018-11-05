class AddColumnToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :message, :text
    add_column :chats, :friend_id, :integer
    add_column :chats, :writer_id, :integer
  end
end
