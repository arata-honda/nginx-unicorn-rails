class CreateUserBodyAssenmblyRealations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_body_assenmbly_realations do |t|
      t.string :user_id, unique: true
      t.float :weight
      t.float :bmi, null: true
      t.float :fat, null: true
      t.datetime :measurement_time

      t.timestamps
    end
  end
end
