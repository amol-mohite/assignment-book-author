class CreateJoinTableAuthorsBooks < ActiveRecord::Migration[5.2]
  def change
    create_join_table :authors, :books do |t|
    end
  end
end
