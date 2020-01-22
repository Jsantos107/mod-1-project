class CreateQuestionsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :points
      t.string :true_a
      t.string :false1
      t.string :false2
      t.string :false3
    end
  end
end
