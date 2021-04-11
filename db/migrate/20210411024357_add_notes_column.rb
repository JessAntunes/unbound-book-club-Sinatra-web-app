class AddNotesColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :libraries, :notes, :string
  end
end
