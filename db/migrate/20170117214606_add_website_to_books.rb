class AddWebsiteToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :website, :string
  end
end
