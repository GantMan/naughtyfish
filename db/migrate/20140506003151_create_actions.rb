class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.references :category, index: true
      t.string :name

      t.timestamps
    end
  end
end
