class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :n
      t.string :arr

      t.timestamps
    end
  end
end
