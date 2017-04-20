class AddNotesToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :notes, :string
  end
end
