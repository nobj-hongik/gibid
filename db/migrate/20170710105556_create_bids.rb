class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :cost
      t.references :user, index: true, foreign_key: true
      t.references :concert, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
