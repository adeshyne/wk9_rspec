class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :string
      t.string :lname
      t.string :phonenumber
      t.string :email

      t.timestamps null: false
    end
  end
end
