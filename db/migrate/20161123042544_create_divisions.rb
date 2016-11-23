class CreateDivisions < ActiveRecord::Migration[5.0]
  def change
    create_table :divisions do |t|
      t.string :division_num, :limit => 45
      t.string :division_type, :limit => 45
      t.references :precinct, foreign_key: true

      t.timestamps
    end
  end
end
