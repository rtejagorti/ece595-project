class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question, :limit => 45
      t.string :question_desc, :limit => 45
      t.string :question_topic, :limit => 45

      t.timestamps
    end
  end
end
