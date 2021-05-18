class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :body
      t.boolean :published

      t.timestamps
    end
  end
end
