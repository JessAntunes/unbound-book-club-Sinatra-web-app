class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.boolean :read
      t.datetime :published_date
      t.string :description
      t.string :link
    end
  end
end
