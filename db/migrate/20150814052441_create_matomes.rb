class CreateMatomes < ActiveRecord::Migration
  def change
    create_table :matomes do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
