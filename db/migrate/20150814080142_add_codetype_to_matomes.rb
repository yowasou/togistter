class AddCodetypeToMatomes < ActiveRecord::Migration
  def change
    add_column :matomes, :codetype_id, :integer
  end
end
