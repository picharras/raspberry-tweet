class CreatesFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :twitter_id
      t.text :username
    end
  end
end