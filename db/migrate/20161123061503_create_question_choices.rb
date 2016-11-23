class CreateQuestionChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :question_choices do |t|
      t.references :choice, foreign_key: true
      t.references :voter, foreign_key: true
      t.references :candidate, foreign_key: true
      t.references :question, foreign_key: true
      t.string :choice_source_url, :limit => 45

      t.timestamps
    end
  end
end
