class CreatesFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :twitter_id
      t.text :username
    end
  end
end