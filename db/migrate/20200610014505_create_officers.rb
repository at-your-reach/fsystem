class CreateOfficers < ActiveRecord::Migration[6.0]
  def change
    create_table :officers do |t|
      t.string :name
      t.date :birth_date
      t.string :gender
      t.string :marital_status
      t.string :nationality
      t.string :mobile_number
      t.string :address
      t.string :email
      t.string :education
      t.integer :customer_amount
      t.integer :children_amount
      t.integer :age
      t.string  :officer_picture
      t.timestamps
    end
  end
end
