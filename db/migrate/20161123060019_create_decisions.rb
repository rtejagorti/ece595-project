class CreateDecisions < ActiveRecord::Migration[5.0]
  def change
    create_table :decisions do |t|
      t.string :decision_title, :limit => 45
      t.string :decision_desc, :limit => 45
      t.string :decision_position, :limit => 45
      t.string :decision_source_url, :limit => 45
      t.datetime :decision_date
      t.references :judge, foreign_key: true

      t.timestamps
    end
  end
end
