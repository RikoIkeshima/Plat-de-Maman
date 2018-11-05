class CreateAmis < ActiveRecord::Migration[5.2]
  def change
    create_table :amis do |t|

      t.timestamps
    end
  end
end
