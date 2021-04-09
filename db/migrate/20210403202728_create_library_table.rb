class CreateLibraryTable < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.integer :user_id
      t.integer :book_id
    end
  end
end
