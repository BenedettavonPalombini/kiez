class RenameTypeToKind < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :type, :kind
  end
end
