class CreatePlayersTable < ActiveRecord::Migration[6.0]
  def change        # this allows you to modify the table
    create_table :players do |t|
      t.string :name
      t.integer :score, default: 0 
    end
  end
end
