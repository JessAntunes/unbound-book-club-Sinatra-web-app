class MoveReadColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :read
    add_column :libraries, :read, :boolean, default: false
  end
end
