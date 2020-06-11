class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :other_name
      t.string :string
      t.date :birth_date
      t.integer :age
      t.string :gender
      t.string :marital_status
      t.string :nationality
      t.string :beneficiary
      t.string :mobile_number
      t.string :house_number
      t.string :landmark_location
      t.string :street_name
      t.string :region
      t.string :district
      t.string :town
      t.string :occupation
      t.string :id_type
      t.string :id_number
      t.string :spouse_name
      t.integer :number_of_children
      t.string :email
      t.date :date_account_opened
      t.integer :accounts_opened
      t.string :picture

      t.timestamps
    end
  end
end
