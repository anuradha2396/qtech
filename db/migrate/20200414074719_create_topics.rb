class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.references :subject, foreign_key: {to_table: :subjects, name: "subject_id"}
      t.timestamps
    end
  end
end
