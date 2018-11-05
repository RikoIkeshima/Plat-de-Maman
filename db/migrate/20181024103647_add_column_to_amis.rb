class AddColumnToAmis < ActiveRecord::Migration[5.2]
  def change
    add_column :amis, :follower, :string
    add_column :amis, :followed, :string
  end
end
