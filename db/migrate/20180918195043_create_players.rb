class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :team_id
      t.integer :person_id

      t.timestamps
    end
  end
end
