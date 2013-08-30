class CreatesMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.string :twitter_id
      t.text :tweet_text
      t.boolean :published, default: false
    end
  end
end