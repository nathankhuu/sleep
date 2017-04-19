class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.date :day
      t.integer :sleep_hours
      t.string :bedtime
      t.string :getuptime
      t.integer :sleep_onset
      t.integer :wakefulness
      t.integer :awakenings
      t.integer :time_awake
      t.integer :caffiene
      t.integer :alcohol
      t.integer :naptime
      t.integer :exercise
      t.integer :sleepiness

      t.timestamps
    end
  end
end
