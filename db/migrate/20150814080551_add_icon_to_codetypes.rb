class AddIconToCodetypes < ActiveRecord::Migration
  def change
    add_column :codetypes, :icon, :binary
    add_column :codetypes, :icon_content_type, :string
  end
end
