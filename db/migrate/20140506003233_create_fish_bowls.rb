class CreateFishBowls < ActiveRecord::Migration
  def change
    create_table :fish_bowls do |t|

      t.timestamps
    end
  end
end
