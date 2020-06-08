class CreateSchedulers < ActiveRecord::Migration[5.0]
  def change
    create_table :schedulers do |t|
      t.string :examname
      t.date :startdate
      t.date :enddate
      t.date :starttime
      t.date :endtime

      t.timestamps
    end
  end
end
