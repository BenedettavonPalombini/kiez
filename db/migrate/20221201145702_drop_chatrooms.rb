class DropChatrooms < ActiveRecord::Migration[7.0]
  def change
    drop_table :chatrooms do |t|

      t.timestamps
    end
  end
end
