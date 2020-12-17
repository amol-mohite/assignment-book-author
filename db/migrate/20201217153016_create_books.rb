class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :title
      t.string  :front_page_link
      t.integer :no_of_pages
      t.integer :rating
      t.integer :price
      t.timestamps
    end
  end
end
