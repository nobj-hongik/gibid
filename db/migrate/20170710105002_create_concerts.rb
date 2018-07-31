class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :title
      t.text :content
      t.datetime :performDate
      t.datetime :dueTime
      t.integer :ticketNumber

      t.timestamps null: false
    end
  end
end
