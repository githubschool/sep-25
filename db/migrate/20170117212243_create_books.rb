class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :year_published
      t.text :description

      t.timestamps
    end
  end
end
