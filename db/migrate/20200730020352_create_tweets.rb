class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :text
      t.text :image
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
