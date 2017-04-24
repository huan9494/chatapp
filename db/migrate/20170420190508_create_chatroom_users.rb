class CreateChatroomUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :chatroom_users do |t|
      t.references :chatroom
      t.references :user

      t.timestamps
    end
  end
end
