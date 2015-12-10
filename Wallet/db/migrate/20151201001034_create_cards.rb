class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :cardnumber
      t.string :cardtype
      t.integer :cardexp_month
      t.string :cardexp_year
      t.string :integer

      t.timestamps null: false
    end
  end
end
