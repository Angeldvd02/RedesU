class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.text :content
      t.references :book, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
