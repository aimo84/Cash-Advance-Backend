class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :fullName
      t.string :email
      t.string :phone
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
