class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.string :publisher
      t.date :publishing_date
      t.string :edition

      t.timestamps
    end
  end
end
