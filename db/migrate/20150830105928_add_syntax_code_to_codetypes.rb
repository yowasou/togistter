class AddSyntaxCodeToCodetypes < ActiveRecord::Migration
  def change
    add_column :codetypes, :syntaxcode, :string
  end
end
