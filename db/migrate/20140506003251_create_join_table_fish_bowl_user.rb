class CreateJoinTableFishBowlUser < ActiveRecord::Migration
  def change
    create_join_table :fishbowls, :users do |t|
      # t.index [:fishbowl_id, :user_id]
      # t.index [:user_id, :fishbowl_id]
    end
  end
end
