class RemoveTypeFromArts < ActiveRecord::Migration[5.0]
  def change
    remove_column :arts, :type, :string
  end
end
