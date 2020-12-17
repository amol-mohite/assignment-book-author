class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :photo_link
      t.timestamps
    end
  end
end
