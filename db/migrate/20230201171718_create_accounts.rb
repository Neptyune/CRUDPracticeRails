class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :password
      t.string :location

      t.timestamps
    end
  end
end
