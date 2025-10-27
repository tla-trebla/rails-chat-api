class CreateMessages < ActiveRecord::Migration[8.1]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.text :content

      t.timestamps
    end
  end
end
