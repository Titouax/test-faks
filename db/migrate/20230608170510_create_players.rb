class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :elo
      t.integer :age

      t.timestamps
    end
  end
end
