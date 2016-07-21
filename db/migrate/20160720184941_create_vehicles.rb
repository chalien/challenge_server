class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :license_plate
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
