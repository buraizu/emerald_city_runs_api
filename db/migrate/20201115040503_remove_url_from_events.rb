class RemoveUrlFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :homeURL, :string
    remove_column :events, :regURL, :string
  end
end
