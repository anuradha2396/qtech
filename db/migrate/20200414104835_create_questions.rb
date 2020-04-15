class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question_body
      t.string :option_1
      t.string :option_2
      t.string :option_3
      t.string :option_4
      t.string :Answere
      t.string :modal_ans
      t.integer :marks
      t.boolean :question_status
      t.references :subject, foreign_key: {to_table: :subjects, name: "subject_id"}
      t.references :topic, foreign_key: {to_table: :topics, name: "topic_id"}
      t.timestamps
    end
  end
end
