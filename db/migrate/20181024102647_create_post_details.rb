class CreatePostDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :post_details do |t|

      t.timestamps
    end
  end
end
