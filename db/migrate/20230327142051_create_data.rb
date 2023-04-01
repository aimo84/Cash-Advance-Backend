class CreateData < ActiveRecord::Migration[7.0]
  def change
    create_table :data do |t|
      t.string :fullName
      t.string :email
      t.string :phone
      t.string :businessHistory
      t.string :businessLocation

      t.timestamps
    end
  end
end
