class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_id, unique: true
      t.string :name
      t.float :height, null: true
      t.float :goal_weight, null: true
      t.float :goal_bmi, null: true
      t.float :goal_body_fat, null: true

      t.timestamps
    end
  end
end
