class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.integer :phone_no
      t.date :birth_date
      t.string :address
      t.integer :zip_code
      t.string :gender
      t.string :password

      t.timestamps
    end
  end
end
