class CreateBoardDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :board_details do |t|

      t.timestamps
    end
  end
end
