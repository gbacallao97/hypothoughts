class CreateTheorys < ActiveRecord::Migration[5.2]
  def change
    create_table :theroys do |t|
      t.string :name
      t.string :description
      t.string :creator
      t.timestamps
    end
  end
end
