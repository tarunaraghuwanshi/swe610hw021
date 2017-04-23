class CreateHos < ActiveRecord::Migration
  def change
    create_table :hos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
