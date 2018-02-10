class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.references :user, foreign_key: true
      t.references :discussion, foreign_key: true
      t.text :reply

      t.timestamps
    end

    add_index :replies, [:user_id, :discussion_id]
  end
end
