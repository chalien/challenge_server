class CreateHouseholds < ActiveRecord::Migration[5.0]
  def change
    create_table :households do |t|
      t.string :address
      t.string :zip
      t.string :city
      t.string :state
      t.integer :number_of_bedrooms

      t.timestamps
    end
  end
end
