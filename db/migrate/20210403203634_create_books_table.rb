class CreateBooksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.boolean :read, default: false
      t.date :published_date
      t.string :description
      t.string :notes
      
    end
  end
end
