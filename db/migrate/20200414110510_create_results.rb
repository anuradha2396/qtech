class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :fruad_suspect
      t.string :grades
      t.integer :attempted_ques
      t.integer :unattempted_ques
      t.integer :correct_questions
      t.integer :wrong_questions
      t.integer :marks
      t.references :exam_creation, foreign_key: {to_table: :exam_creations, name: "exam_id"}
      t.references :exam_schedule, foreign_key: {to_table: :exam_schedules, name: "schedule_id"}
      t.references :user, foreign_key: {to_table: :users, name: "user_id"}
      t.timestamps
    end
  end
end
