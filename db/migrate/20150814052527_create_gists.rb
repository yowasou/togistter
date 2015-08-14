class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :gisturl
      t.text :description
      t.integer :matome_id
      t.integer :user_id
      t.text :code
      t.integer :codetype_id

      t.timestamps null: false
    end
  end
end
