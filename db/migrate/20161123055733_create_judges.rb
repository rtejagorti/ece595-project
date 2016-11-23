class CreateJudges < ActiveRecord::Migration[5.0]
  def change
    create_table :judges do |t|
      t.string :judge_firstname, :limit => 45
      t.string :judge_lastname, :limit => 45
      t.boolean :isSitting
      t.string :judge_biography
      t.string :judge_email, :limit => 45
      t.string :judge_polaff, :limit => 45
      t.references :ballot, foreign_key: true
      t.references :precinct

      t.timestamps
    end
  end
end
