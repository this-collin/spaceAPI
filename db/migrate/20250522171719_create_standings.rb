class CreateStandings < ActiveRecord::Migration[8.0]
  def change
    create_table :standings do |t|
      t.string :name
      t.integer :percent_correct
      t.integer :money_earned
      t.string :difficulty

      t.timestamps
    end
  end
end
