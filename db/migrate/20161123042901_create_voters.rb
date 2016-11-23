class CreateVoters < ActiveRecord::Migration[5.0]
  def change
    create_table :voters do |t|
      t.integer :session_id
      t.references :zip, foreign_key: true

      t.timestamps
    end
  end
end
