class AddS3ToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :image, :string
  end
end
