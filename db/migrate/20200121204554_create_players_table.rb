class CreatePlayersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name 
      t.integer :points
    end
  end
end
