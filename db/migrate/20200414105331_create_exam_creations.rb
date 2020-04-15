class CreateExamCreations < ActiveRecord::Migration[5.0]
  def change
    create_table :exam_creations do |t|
      t.string :name
      t.integer :exam_duration
      t.integer :passing_marks
      t.references :subject, foreign_key: {to_table: :subjects, name: "subject_id"}
      t.references :topic, foreign_key: {to_table: :topics, name: "topic_id"}
      t.timestamps
    end
  end
end
