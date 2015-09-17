class RemoveZombieFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :zombie, :string
  end
end
