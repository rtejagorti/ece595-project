class CreateReferendas < ActiveRecord::Migration[5.0]
  def change
    create_table :referendas do |t|
      t.string :referenda_title, :limit => 45
      t.string :referenda_desc
      t.string :referenda_type, :limit => 45
      t.references :ballot, foreign_key: true

      t.timestamps
    end
  end
end
