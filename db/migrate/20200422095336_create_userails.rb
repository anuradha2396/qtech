class CreateUserails < ActiveRecord::Migration[5.0]
  def change
    create_table :userails do |t|
      t.string :g
      t.string :migration
      t.string :drop
      t.string :user

      t.timestamps
    end
  end
end
