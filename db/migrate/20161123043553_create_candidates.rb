class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :first_name, :limit => 45
      t.string :last_name, :limit => 45
      t.boolean :isEncumbent
      t.string :biography
      t.references :precinct, foreign_key: true
      t.references :ballot, foreign_key: true
      t.string :email, :limit => 45
      t.string :pol_URL, :limit => 45
      t.string :pol_aff, :limit => 45
      t.boolean :hasPicture, :limit => 45
      t.string :running_for, :limit => 45
      t.string :office_type, :limit => 45

      t.timestamps
    end
  end
end
