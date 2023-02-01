class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
