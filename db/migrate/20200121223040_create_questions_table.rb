class CreateQuestionsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :difficulty, default: "easy"
      t.string :question
      t.string :correct
      t.string :false1
      t.string :false2
      t.string :false3
      t.integer :points, default: 10
    end
  end
end
