class CreateGamesTable < ActiveRecord::Migration[6.0]
  def change 
    create_table :game do |t|
      t.references :player
      t.references :question
    end
  end
end
