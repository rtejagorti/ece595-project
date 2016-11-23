class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
      t.string :position_title, :limit => 45
      t.datetime :termStart
      t.datetime :termEnd
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
