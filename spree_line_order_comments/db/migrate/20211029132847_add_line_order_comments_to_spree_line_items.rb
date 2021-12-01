class AddLineOrderCommentsToSpreeLineItems < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_line_items, :note, :string
  end
end
