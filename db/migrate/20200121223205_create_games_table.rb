class CreateGamesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :player
      t.references :question
      t.string :win
    end
  end
end
