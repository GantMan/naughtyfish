class CreateAdventureLists < ActiveRecord::Migration
  def change
    create_table :adventure_lists do |t|
      t.references :user, index: true
      t.references :action, index: true
      t.string :adventure

      t.timestamps
    end
  end
end
