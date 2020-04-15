class CreateExamSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :exam_schedules do |t|
      t.string :start_date
      t.string :date
      t.date :end_date
      t.date :start_time
      t.date :end_time
      t.integer :duration
      t.references :exam_creation, foreign_key: {to_table: :exam_creations, name: "exam_id"}
      t.timestamps
    end
  end
end
