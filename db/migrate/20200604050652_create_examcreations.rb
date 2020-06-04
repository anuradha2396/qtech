class CreateExamcreations < ActiveRecord::Migration[5.0]
  def change
    create_table :examcreations do |t|
      t.string :exam_name
      t.integer :exam_duration
      t.integer :passing_marks
      t.string :exam_type
      t.integer :subject_id
      t.integer :topic_id
      t.timestamps
    end
  end
end
