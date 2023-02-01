class CreateDogdates < ActiveRecord::Migration[7.0]
  def change
    create_table :dogdates do |t|
      t.references :account, null: false, foreign_key: true
      t.references :dogs, null: false, foreign_key: true
      t.string :date
      t.string :location

      t.timestamps
    end
  end
end
