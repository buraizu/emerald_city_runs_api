class AddRegUrlToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :reg_url, :string

    add_column :events, :home_url, :string
  end
end
