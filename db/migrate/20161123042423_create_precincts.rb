class CreatePrecincts < ActiveRecord::Migration[5.0]
  def change
    create_table :precincts do |t|
      t.string :precinct_num, :limit => 45
      t.string :precinct_type, :limit => 45
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
