class CreateUserEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_evaluations do |t|
      t.references :user,null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      #t.references :evaluation,null: false, foreign_key: true
      t.timestamps
    end
  end
end
