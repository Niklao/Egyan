class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_id
      t.string :author_name
      t.string :edition
      t.string :discrip
      t.string :relese_date
      t.string :relese_date
      t.string :image

      t.timestamps
    end
  end
end
