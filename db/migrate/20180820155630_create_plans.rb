class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.references :user, foreign_key: true
      t.references :friend, foreign_key: true
      t.string :place
      t.string :date

      t.timestamps
    end
  end
end
